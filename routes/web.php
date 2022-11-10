<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TeacherAuthController;
use App\Http\Controllers\TeacherDashboardController;
use App\Http\Controllers\CourseContoller;
use App\Http\Controllers\AdminCourseController;
use App\Http\Controllers\EnrollController;
use App\Http\Controllers\StudentDashboardController;
use App\Http\Controllers\StudentAuthController;
use App\Http\Controllers\AdminStudentController;
use App\Http\Controllers\AdminEnrollController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class,'index'])->name('home');

Route::get('/about-us', [HomeController::class,'about'])->name('about');
Route::get('/all-courses', [HomeController::class,'course'])->name('course');
Route::get('/contact-us', [HomeController::class,'contact'])->name('contact');
Route::get('/login-registration', [HomeController::class,'login'])->name('login-registration');

Route::get('/website-course-detail/{id}', [EnrollController::class,'detail'])->name('website.course-detail');
Route::get('/enroll-checkout/{id}', [EnrollController::class,'index'])->name('enroll.checkOut');
Route::post('/confirm-enroll/{id}', [EnrollController::class,'enroll'])->name('enroll.confirm');

Route::get('/student-dashboard',[StudentDashboardController::class,'index'])->name('student.dashboard');
Route::get('/enrolled-courses',[StudentDashboardController::class,'courses'])->name('student.courses');

Route::get('/student-logout',[StudentAuthController::class,'studentLogout'])->name('student.logout');
Route::post('/student-login',[StudentAuthController::class,'studentLogin'])->name('student.login');
Route::post('/student-register',[StudentAuthController::class,'studentRegister'])->name('student.register');



Route::get('/teacher-login',[TeacherAuthController::class,'login'])->name('teacher.login');
Route::post('/teacher-login-check',[TeacherAuthController::class,'loginCheck'])->name('teacher.login-check');

Route::post('/teacher-logout',[TeacherAuthController::class,'logout'])->name('teacher.logout')->middleware('teacher');
Route::get('/teacher-dashboard',[TeacherDashboardController::class,'index'])->name('teacher.dashboard')->middleware('teacher');

Route::get('/add-course',[CourseContoller::class,'add'])->name('course.add')->middleware('teacher');
Route::get('/manage-course',[CourseContoller::class,'manage'])->name('course.manage')->middleware('teacher');
Route::post('/new-course',[CourseContoller::class,'create'])->name('course.new')->middleware('teacher');
Route::get('/detail-course/{id}',[CourseContoller::class,'detail'])->name('course.detail')->middleware('teacher');
Route::get('/course-edit/{id}',[CourseContoller::class,'edit'])->name('course.edit')->middleware('teacher');
Route::post('/course-update/{id}',[CourseContoller::class,'updateCourses'])->name('course.update')->middleware('teacher');
Route::get('/delete-course/{id}',[CourseContoller::class,'delete'])->name('course.delete')->middleware('teacher');






Route::middleware(['auth:sanctum', config('jetstream.auth_session'),'verified'])->group(function () {
    Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');

    Route::get('/add-teacher',[TeacherController::class,'add'])->name('teacher.add');
    Route::post('/new-teacher',[TeacherController::class,'create'])->name('teacher.new');
    Route::get('/edit-teacher/{id}',[TeacherController::class,'edit'])->name('teacher.edit');
    Route::post('/update-teacher/{id}',[TeacherController::class,'update'])->name('teacher.update');
    Route::get('/delete-teacher/{id}',[TeacherController::class,'delete'])->name('teacher.delete');
    Route::get('/manage-teacher',[TeacherController::class,'manage'])->name('teacher.manage');



    Route::get('/add-user',[UserController::class,'add'])->name('user.add');
    Route::get('/manage-user',[UserController::class,'manage'])->name('user.manage');
    Route::get('/admin-manage-course',[AdminCourseController::class,'manage'])->name('admin.manage-course');
    Route::get('/admin-course-detail/{id}',[AdminCourseController::class,'detail'])->name('admin.course-detail');
    Route::get('/admin-course-status/{id}',[AdminCourseController::class,'status'])->name('admin.course-status');
    Route::get('/admin-manage-student',[AdminStudentController::class,'manageStudent'])->name('admin.manage-student');
    Route::get('/admin-student-update-status/{id}',[AdminStudentController::class,'updateStatus'])->name('admin.student-update-status');
    Route::get('/admin-manage-student-enroll',[AdminEnrollController::class,'manageEnroll'])->name('admin.student-enroll');
    Route::get('/admin-enroll-student-status-update/{id}',[AdminEnrollController::class,'enrollStudentStatusUpdate'])->name('admin.enroll-student-status-update');

});
