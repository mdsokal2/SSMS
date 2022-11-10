@extends('admin.master')

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-body">
                        <h4>{{Session::get('message')}}</h4>

                        <h4 class="text-center">All Student information</h4>

                        <table class="table-bordered table-responsive table-striped table">


                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Mobile</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($students as $student)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$student->name}}</td>
                                    <td>{{$student->email}}</td>
                                    <td>{{$student->mobile}}</td>
                                    <td><img src="{{asset($student->image)}}" alt="" height="80" width="80"></td>
                                    <td>{{$student->status==1?'Active':'Inactive'}}</td>
                                    <td>
                                        <a href="{{route('admin.student-update-status',['id'=>$student->id])}}" class="btn {{$student->status==1? 'btn-success':'btn-warning'}}" onclick="return confirm('Are you want to change student status??')"><i class="fa fa-arrow-up"></i></a>
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
