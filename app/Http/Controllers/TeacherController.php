<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;

class TeacherController extends Controller
{
    private $teacher,$teachers;
  public function add(){
      return view('admin.teacher.add');
  }

  public function create(Request $request){
      $request->validate([
          'name'=>'required',
          'designation'=>'required',
          'email'=>'required|unique:teachers',
          'image'=>'required|image'
          ],[
              'email.unique'=>'This email is Exists,give a new one',
              'image.image'=>'please give a image only',
      ]);

      Teacher::newTeacher($request);
      return redirect('/add-teacher')->with('success','Teacher Info Created Successfully');

  }

  public function edit($id){
     $this->teacher=Teacher::find($id);
      return  view('admin.teacher.edit',[
          'teacher'=>$this->teacher,
      ]);

  }
  public function update(Request $request, $id){
      Teacher::updateTeacher($request, $id);
      return redirect('/manage-teacher')->with('success','Teacher Info Updated successfully');
  }

  public  function delete($id){
      Teacher::deleteTeacher($id);
      return redirect('/manage-teacher')->with('success','Teacher Info Deleted successfully');


  }

  public function manage(){
      $this->teachers=Teacher::all();
      return view('admin.teacher.manage',[
          'teachers'=>$this->teachers,
      ]);
  }
}
