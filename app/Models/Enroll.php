<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Enroll extends Model
{
    use HasFactory;
    private static $enroll;
    private static $enrolls;
    private static $message;

    public static function newEnroll($request, $student_id, $course_id){
        self::$enroll=new Enroll();
        self::$enroll->student_id   =$student_id;
        self::$enroll->course_id   =$course_id;
        self::$enroll->enroll_date   =date('Y-m-d');
        self::$enroll->enroll_timestamp=strtotime(date('Y-m-d'));
        self::$enroll->payment_type=$request->payment_type;
        self::$enroll->save();
    }


    public static function updateEnrollStatus($id)
    {
        self::$enrolls = Enroll::find($id);
        self::$enrolls->enroll_status='Complete';
        self::$enrolls->payment_amount=self::$enrolls->course->fee;
        self::$enrolls->save();
        return"Enroll Status Complete Successfully.";
    }




    public function course(){
        return $this->belongsTo(Course::class);
    }
    public function student(){
        return $this->belongsTo(Student::class);
    }
}
