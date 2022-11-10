@extends('admin.master')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <h4 class="text-center text-uppercase">{{Session::get('success')}}</h4>

                <div class="card-body">
                    <h4 class="  text-center card-title">Edit Teacher Form</h4>
                    <form action="{{route('teacher.update',['id'=>$teacher->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Full Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="name" value="{{$teacher->name}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Designation</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="designation" value="{{$teacher->designation}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Email</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" readonly  name="email" value="{{$teacher->email}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="password" value="{{$teacher->password}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Mobile Number</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="mobile" value="{{$teacher->mobile}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Address</label>
                            <div class="col-sm-9">
                                <textarea name="address" id="" cols="60" rows="5">{{$teacher->address}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Teacher Image</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control" name="image">
                                <img src="{{asset($teacher->image)}}" alt="" height="80" width="80">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3"></label>
                            <div class="col-sm-9">
                                <input type="submit" class="btn btn-outline-success" value="Update Teacher Info" >
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
