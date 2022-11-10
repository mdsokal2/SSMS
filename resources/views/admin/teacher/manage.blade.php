@extends('admin.master')

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-body">
                        <h4>{{Session::get('success')}}</h4>
                        <h4 class="text-center">Teachers information</h4>

                        <table class="table-bordered table-responsive table-striped table">


                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Designation</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($teachers as $teacher)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$teacher->name}}</td>
                                    <td>{{$teacher->designation}}</td>
                                    <td>{{$teacher->email}}</td>
                                    <td>{{$teacher->mobile}}</td>
                                    <td>{{$teacher->address}}</td>
                                    <td><img src="{{asset($teacher->image)}}" alt="" height="80" width="80"></td>
                                    <td>
                                        <a href="{{route('teacher.edit',['id'=>$teacher->id])}}" class="btn-success"><i class="fa fa-edit"></i></a>
                                        <a href="{{route('teacher.delete',['id'=>$teacher->id])}}" onclick="return confirm('Are You want to delete this??!')" class="btn-danger"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
