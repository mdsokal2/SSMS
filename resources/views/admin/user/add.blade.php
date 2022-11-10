@extends('admin.master')

@section('content')
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-body">
                    <h4 class="  text-center card-title">Add User Form</h4>
                    <form action="">
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3">Full Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="name">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3">Email</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" name="email">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3">Password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="password">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3">Mobile Number</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="mobile">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3">Address</label>
                            <div class="col-sm-9">
                                <textarea name="address" id="" cols="60" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3">Teacher Image</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control" name="image">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3"></label>
                            <div class="col-sm-9">
                                <input type="submit" class="btn btn-outline-success" value="Create New Teacher" >
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
