<?php

namespace App\Http\Controllers;

use App\Mail\EnrollconfirmationMail;
use App\Models\Course;
use App\Models\Enroll;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Session;

class EnrollController extends Controller
{
    private $courses;
    private $student;
    private $enroll;
    private $status;

public function index($id){
       return view('website.enroll.index',[
           'course'=>Course::find($id),
       ]);

}
    public function detail($id){
        $this->courses=Course::find($id);
        if (Session::get('student_id')){
            $this->enroll=Enroll::where('student_id',Session::get('student_id'))->where('course_id',$id)->first();
            if ($this->enroll){
                $this->status=true;
            }
            else
            {
                $this->status=false;
            }
        }
        else
        {
            $this->status=false;
        }

        return view('website.course.detail',[
            'course'=>$this->courses,
            'status'=>$this->enroll,
        ]);
    }


   public function enroll(Request $request,$id){

  $this->validate($request,[
      'name'=>'required',
      'email'=>'required|unique:students,email',
      'mobile'=>'required|unique:students,mobile'
  ]);
$this->student=Student::newStudent($request);

Session::put('student_id',$this->student->id);
Session::put('student_name',$this->student->name);

Enroll::newEnroll($request,$this->student->id,$id);

/*Email Send*/
       
       Mail::to($this->student->email)->send(new EnrollconfirmationMail([
           'title'=>$this->student->name,
           'id'=>$this->student->email,
           'password'=>$this->student->mobile,
           'login_url'=>'http://127.0.0.1:8000/login-registration',
       ]));

    /*Email send*/
return redirect('/enroll-checkout/'.$id)->with('message','Your Enroll submission post successfully.please wait ,We will contact with you soon.');
   }
}
