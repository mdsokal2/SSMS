<?php

namespace App\Models;

use http\Env\Request;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{

    use HasFactory;

    private static $message;
    private static $students;
    private static $student;

    public  static  function newStudent($request){
        self::$student=new Student();
        self::$student->name  =$request->name;
        self::$student->email  =$request->email;
        if ($request->password){
            self::$student->password =bcrypt($request->password);
        }
        else
        {
            self::$student->password=bcrypt($request->mobile);
        }
        self::$student->mobile  =$request->mobile;
        self::$student->save();

        return self::$student;

    }

    public static function updateStatus($id){
        self::$students=Student::find($id);

        if (self::$students->status==1){
            self::$students->status=0;
            self::$message='student Inactive Successfully done';

        }else{
            self::$students->status=1;
            self::$message='student Active Successfully done';

        }
        self::$students->save();
        return self::$message;
    }
}
