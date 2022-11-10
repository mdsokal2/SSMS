<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use Session;

class StudentAuthController extends Controller
{
    private $student;

    public function studentLogout(){
        Session::forget('student_id');
        Session::forget('student_name');
        return redirect('/login-registration');
    }

    public function studentLogin(Request $request){
        $this->student=Student::where('email',$request->email)->first();
        if ($this->student){
            if ($this->student->status==1){

                if (password_verify($request->password,$this->student->password)){
                    Session::put('student_id',$this->student->id);
                    session::put('student_name',$this->student->name);
                    return redirect('/student-dashboard');
                }
                else{
                    return  redirect()->back()->with('message','Password is Invalid');
                }

            }else{
                return redirect()->back()->with('message','Your Account is Suspended,please contact with Admin');

            }

        }
        else{
            return  redirect()->back()->with('message','Email Address is Invalid');
        }
    }


    public function studentRegister(Request $request){
        $request->validate([
           'name'=>'required',
           'email'=>'required|email|unique:students,email',
           'password'=>'required',
           'mobile'=>'required',
        ]);
        $this->student=Student::newStudent($request);

        Session::put('student_id',$this->student->id);
        Session::put('student_name',$this->student->name);
        return redirect('/student-dashboard');

    }

}
