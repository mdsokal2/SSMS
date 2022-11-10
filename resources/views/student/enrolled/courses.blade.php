@extends('website.master')

@section('title')
    Student Dashboard
@endsection

@section('content')

    <section class="">
        <div class="container-fluid py-5">
            <div class="row">
                <div class="col">
                    <h1>{{Session::get('student_name')}} Dashboard</h1>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="card card-body">
                        <ul class="nav navbar-nav">
                            <li><a href="" class="nav-link border-bottom">Dashboard</a></li>
                            <li><a href="" class="nav-link border-bottom">My Profile</a></li>
                            <li><a href="" class="nav-link border-bottom">My Course</a></li>
                            <li><a href="" class="nav-link border-bottom">My Accout</a></li>
                            <li><a href="" class="nav-link border-bottom">Logout</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card card-body">
                        <h3 class="text-center text-uppercase text-muted">enrolled courses</h3>
                        <div>
                            <table class="table table-responsive table-bordered">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Course Title</th>
                                    <th>Teacher Info</th>
                                    <th>Starting Date</th>
                                    <th>Ending Date</th>
                                    <th>Course Fee</th>
                                    <th>Payment Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($enrolledCourses as $enrolledCourse )
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$enrolledCourse->course->title}}</td>
                                    <td>{{$enrolledCourse->course->teacher->name}}</td>
                                    <td>{{\Carbon\Carbon::parse($enrolledCourse->course->start_date)->format('Y-d-M')}}</td>
                                    <td>{{\Carbon\Carbon::parse($enrolledCourse->course->End_date)->format('d-M-Y')}}</td>
                                    <td>{{$enrolledCourse->course->fee}}</td>
                                    <td>{{$enrolledCourse->enroll_status}}</td>

                                </tr>
                                @endforeach
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
