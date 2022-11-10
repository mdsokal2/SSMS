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
                                    <li><a href="{{route('student.courses')}}" class="nav-link border-bottom">My Course</a></li>
                                    <li><a href="" class="nav-link border-bottom">My Accout</a></li>
                                    <li><a href="" class="nav-link border-bottom">Logout</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="card card-body">
                                <h1>My Dashboard</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
@endsection
