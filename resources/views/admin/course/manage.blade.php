
@extends('admin.master')

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-body">
                        <h4>{{Session::get('success')}}</h4>
                        <h4 class="text-center">Courses information</h4>

                        <table class="table-bordered table-responsive table-striped table">


                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Course Title</th>
                                <th>Course Fee</th>
                                <th>Starting Date</th>
                                <th>Ending Date</th>
                                <th>Instructor Info</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($courses as $course)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$course->title}}</td>
                                    <td>{{$course->fee}}</td>
                                    <td>{{\Illuminate\Support\Carbon::parse($course->start_date)->format('d M Y')}}</td>
                                    <td>{{\Illuminate\Support\Carbon::parse($course->end_date)->format('d M Y')}}</td>
                                    <td>{{$course->teacher->name}}</td>
                                    <td>{{$course->status==1?'Published':'Unpublished'}}</td>
                                    <td>
                                        <a href="{{route('admin.course-detail',['id'=>$course->id])}}"><i class="fa fa-book-open"></i></a>
                                        <a href="{{route('admin.course-status',['id'=>$course->id])}}" class="btn-success"><i class="fa fa-arrow-up"></i></a>
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
