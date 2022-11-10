<?php

namespace App\Http\Controllers;

use App\Models\Enroll;
use Illuminate\Http\Request;

class AdminEnrollController extends Controller
{
    private  $enrolls;
    private $status;

public function manageEnroll(){
    $this->enrolls=Enroll::orderBy('id','desc')->get();
    return view('admin.enroll.manage',[
        'enrolls'=>$this->enrolls,
    ]);
}


public function enrollStudentStatusUpdate($id)
{
  Enroll::updateEnrollStatus($id);
    return back()->with('message',"Enroll Status Completed Successfully");
      }
}
