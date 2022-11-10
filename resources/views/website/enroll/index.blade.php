@extends('website.master')

@section('title')
    Course Enroll Page
@endsection
@section('content')

    <section class="py-5">
        <div class="container">
            <div class="row">

                <div class="col-md-8 mx-auto">
                    <div class="card card-body h-100">
                        <div class="row">
                                <h3 class="text-success text-center text-uppercase">You Are Submitting For This Course
                                    <hr/>
                                </h3>
                            <h1>
                                <b class="text-muted text-center ">{{$course->title}}</b>
                                <hr/>

                            </h1>
                        </div>
                        <h3 class="text-center">Course Enroll Form</h3>
                        <hr/>

                        <h4 class="text-center text-uppercase mb-4 text-success">{{Session::get('message')}}</h4>
                        <form action="{{route('enroll.confirm',['id'=>$course->id])}}" method="post">
                            @csrf
                            <div class="row mb-3">
                                <div class="col-md-3">Name</div>
                                <div class="col-md-9">
                                    <input type="text" name="name" class="form-control" required>
                                    <span class="text-danger">{{$errors->has('name')? $errors->first('name'):''}}</span>

                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3">Email</div>
                                <div class="col-md-9">
                                    <input type="email" name="email" class="form-control" required>
                                    <span class="text-danger">{{$errors->has('email')? $errors->first('email'):''}}</span>

                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3">Mobile</div>
                                <div class="col-md-9">
                                    <input type="number" name="mobile" class="form-control" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3">Payment Option</div>
                                <div class="col-md-9">
                                    <label for=""><input type="radio" name="payment_type"  checked value="cash">Cash</label>
                                    <label for=""><input type="radio" name="payment_type" value="online">Onlice</label>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-3"></div>
                                <div class="col-md-9">
                                    <input type="submit" class="btn btn-outline-success px-5" value="confirm Enroll">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
