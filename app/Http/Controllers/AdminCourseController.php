<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Teacher;
use Illuminate\Http\Request;

class AdminCourseController extends Controller
{
    private $courses;
    private $course;
    public function manage(){
    $this->courses=Course::all();
    return view('admin.course.manage',[
        'courses'=>$this->courses,
    ]);
    }
    public function detail($id){
        $this->course=Course::find($id);
        return view('admin.course.detail',[
            'course'=>$this->course,
        ]);
    }



public function status($id){
        Course::updatStatus($id);
        return redirect()->back();
}


}
