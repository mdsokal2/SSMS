<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class AdminStudentController extends Controller
{
    private $students;
    private $message;

public function manageStudent(){
    $this->students=Student::all();
    return view('admin.student.manage',[
        'students'=>$this->students,
    ]);
}

public function updateStatus($id){

$this->message=Student::updateStatus($id);
return back()->with('message',$this->message);
}
}
