@extends('website.master')

@section('title')
    Login/Registration Page
@endsection
@section('content')

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card card-body h-100">
                        <h3>Login Form</h3>
                        <hr/>
                        <h4 class="text-danger text-center">{{Session::get('message')}}</h4>
                        <form action="{{route('student.login')}}" method="post">
                            @csrf
                            <div class="row mb-3">
                                <div class="col-md-3">Email</div>
                                <div class="col-md-9">
                                    <input type="email" name="email" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3">Password</div>
                                <div class="col-md-9">
                                    <input type="password" name="password" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3"></div>
                                <div class="col-md-9">
                                    <input type="submit" class="btn btn-outline-success px-5" value="Login">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card card-body h-100">
                        <h3>Registration Form</h3>
                        <hr/>
                        <form action="{{route('student.register')}}" method="post">
                            @csrf
                            <div class="row mb-3">
                                <div class="col-md-3">Name</div>
                                <div class="col-md-9">
                                    <input type="text" name="name" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3">Email</div>
                                <div class="col-md-9">
                                    <input type="email" name="email" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3">Mobile</div>
                                <div class="col-md-9">
                                    <input type="number" name="mobile" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3">Password</div>
                                <div class="col-md-9">
                                    <input type="password" name="password" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3"></div>
                                <div class="col-md-9">
                                    <input type="submit" class="btn btn-outline-success px-5" value="Login">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
