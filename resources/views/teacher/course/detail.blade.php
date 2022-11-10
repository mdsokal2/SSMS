
@extends('teacher.master')

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-body">
                        <h4>{{Session::get('success')}}</h4>
                        <h4 class="text-center">Course detail Info</h4>

                        <table class="table-bordered table-responsive table-striped table">
                            <tr>
                                <th>Course Id</th>
                                <td>{{$course->id}}</td>
                            </tr>
                            <tr>
                                <th>Course Title</th>
                                <td>{{$course->title}}</td>
                            </tr>
                            <tr>
                                <th>Course Start Date</th>
                                <td>{{$course->start_date}}</td>
                            </tr>
                            <tr>
                                <th>Course End Date</th>
                                <td>{{$course->end_date}}</td>
                            </tr>

                            <tr>
                                <th>Course Fee</th>
                                <td>{{$course->fee}}</td>
                            </tr>
                            <tr>
                                <th>Course Short Description</th>
                                <td>{{$course->short_description}}</td>
                            </tr>
                            <tr>
                                <th>Course Long Description</th>
                                <td>{!! $course->long_description !!}</td>
                            </tr>
                            <tr>
                                <th>Course Image</th>
                                <td><img src="{{asset($course->image)}}" alt="" height="80" width="80"></td>
                            </tr>

                            <tr>
                                <th>Course Publication Status</th>
                                <td>{{$course->status==0? 'Course is Unpublished': 'Course is Published'}}</td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

