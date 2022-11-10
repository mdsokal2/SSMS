@extends('admin.master')

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-body">
                        <h4>{{Session::get('message')}}</h4>

                        <h4 class="text-center">All Enrolled Student information</h4>

                        <table class="table-bordered table-responsive table-striped table">


                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Course Info</th>
                                <th>Teacher Info</th>
                                <th>Student Info</th>
                                <th>Course Fee</th>
                                <th>Starting Date</th>
                                <th>Enroll Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($enrolls as $enroll)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$enroll->course->title."(Tk.".$enroll->course->fee.')'}}</td>
                                    <td>{{$enroll->course->teacher->name.'('.$enroll->course->teacher->mobile.')'}}</td>
                                    <td>{{isset($enroll->student->name) ? $enroll->student->name.'('.$enroll->student->mobile.')': ''}}</td>//if student delete from student table then automaticaly delte from enroll table so name on null will not show.
                                    <td>{{$enroll->course->fee}}</td>
                                    <td>{{$enroll->course->start_date}}</td>
                                    <td>{{$enroll->enroll_status}}</td>
                                    <td>
                                        <a href="{{route('admin.enroll-student-status-update',['id'=>$enroll->id])}}" class="btn {{$enroll->enroll_status=='Complete'?'btn-success disabled':'btn-danger'}}"><i class="fa fa-arrow-up"></i></a>
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
