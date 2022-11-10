<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Session;

class Course extends Model
{
    use HasFactory;
    private static $course;

    public static function newCourse($request){

        self::$course           =new Course();
        self::$course->teacher_id           =Session::get('teacher_id');
        self::$course->title    =$request->title;
        self::$course->start_date    =$request->start_date;
        self::$course->start_timestamp    =strtotime($request->start_date);
        self::$course->end_date    =$request->end_date;
        self::$course->end_timestamp        =strtotime($request->end_date);
        self::$course->fee                  =$request->fee;
        self::$course->short_description                  =$request->short_description;
        self::$course->long_description                  =$request->long_description;
        self::$course->image                  =saveImage($request->file('image'),'course-images/');
        self::$course->save();
    }
    public  static function updateCourse($request,$id){
        self::$course=Course::find($id);

//        if ($request->file('image')){
//            if (file_exists(self::$course->image)){
//                unlink(self::$course->image);
//            }
//            self::$imageUrl=self::imageSave($request->file('image'));
//        }else{
//            self::$imageUrl=self::$course->image;
//        }
        self::$course->teacher_id           =Session::get('teacher_id');
        self::$course->title    =$request->title;
        self::$course->start_date    =$request->start_date;
        self::$course->start_timestamp    =strtotime($request->start_date);
        self::$course->end_date    =$request->end_date;
        self::$course->end_timestamp        =strtotime($request->end_date);
        self::$course->fee                  =$request->fee;
        self::$course->short_description                  =$request->short_description;
        self::$course->long_description                  =$request->long_description;
        self::$course->image                  =saveImage($request->file('image'),'course-images/',self::$course->image);
        self::$course->save();


}
public static function deleteCourse($id){
        self::$course=Course::find($id);
        if (file_exists(self::$course->image)){
            unlink(self::$course->image);
        }
        self::$course->delete();

}

    public function teacher(){
       return $this->belongsTo(Teacher::class);
    }

    public static function updatStatus($id){
        self::$course=Course::find($id);
        if (self::$course->status==0){
            self::$course->status=1;
        }else{
            self::$course->status=0;
        }
        self::$course->save();
    }
}
