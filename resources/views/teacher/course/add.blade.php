@extends('teacher.master')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <h4 class="text-center text-uppercase">{{Session::get('success')}}</h4>

                <div class="card-body">
                    <h4 class="  text-center card-title">Add Course Form</h4>
                    <form action="{{route('course.new')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Course Title</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="title">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Starting Date</label>
                            <div class="col-sm-9">
                                <input type="date" class="form-control" name="start_date">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Ending Date</label>
                            <div class="col-sm-9">
                                <input type="date" class="form-control" name="end_date">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Course Fee</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="fee">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Short Description</label>
                            <div class="col-sm-9">
                                <textarea name="short_description" id="" cols="60" rows="5" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Long Description</label>
                            <div class="col-sm-9">
                                <textarea name="long_description" id="" cols="60" rows="5" class="summernote form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3">Course Image</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control" name="image">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3"></label>
                            <div class="col-sm-9">
                                <input type="submit" class="btn btn-outline-success" value="Create New Course" >
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
