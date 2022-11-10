<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;
use Session;

class CourseContoller extends Controller
{
    private $courses;
    private $course;
 public function add(){
     return view('teacher.course.add');
 }
public function manage(){
     $this->courses=Course::where('teacher_id',Session::get('teacher_id'))->get();
     return view('teacher.course.manage',[
         'courses'=>$this->courses,
     ]);
 }
    public function create(Request $request){

        Course::newCourse($request);
        return redirect()->back()->with('success','Course Created successfully');

    }
    public  function detail($id){
     $this->course=Course::find($id);
        return view('teacher.course.detail',[
            'course'=>$this->course,
        ]);
    }

    public  function edit($id){
        $this->course=Course::find($id);
        return view('teacher.course.edit',[
            'course'=>$this->course]);
    }
    public function updateCourses(Request $request,$id){
     Course::updateCourse($request,$id);
        return redirect('/manage-course')->with('success','Course Updated successfully');
    }

    public  function delete($id){
     Course::deleteCourse($id);
     return redirect()->back()->with('success','Course Deleted successfully');

    }
}
