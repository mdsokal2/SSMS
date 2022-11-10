
@extends('teacher.master')

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                        <h4>{{Session::get('success')}}</h4>

                        <h4 class="text-center">Courses information</h4>

                        <table class=" table-responsive table-striped table">


                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Title</th>
                                <th>Starting Date</th>
                                <th>Ending Date</th>
                                <th>Fee</th>
                                <th>Short Description</th>
                                <th>Long Description</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($courses as $course)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$course->title}}</td>
                                    <td>{{\Illuminate\Support\Carbon::parse($course->start_date)->format('d M Y')}}</td>
                                    <td>{{\Illuminate\Support\Carbon::parse($course->end_date)->format('d M Y')}}</td>
                                    <td>{{$course->fee}}</td>
                                    <td>{!! \Illuminate\Support\Str::words($course->short_description,5,'..') !!}</td>
                                    <td>{!! \Illuminate\Support\Str::words($course->long_description,10,'..') !!}</td>
                                    <td><img src="{{asset($course->image)}}" alt="" height="40" width="40"></td>
                                    <td>
                                        <a href="{{route('course.detail',['id'=>$course->id])}}"><i class="fa fa-book-open"></i></a>
                                        <a href="{{route('course.edit',['id'=>$course->id])}}" class="btn-success"><i class="fa fa-edit"></i></a>
                                        <a href="{{route('course.delete',['id'=>$course->id])}}" onclick="return confirm('Are You want to delete this??!')" class="btn-danger"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                </div>
            </div>
        </div>
    </section>
@endsection
