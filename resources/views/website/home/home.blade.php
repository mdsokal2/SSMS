@extends('website.master')
@section('title')
    home page
@endsection

@section('content')
<div class="carousel slide" data-bs-ride="carousel" data-bs-interval="1800" id="heroSlider">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="{{asset('/')}}website/img/slider1.jpg" alt="" class="w-100 h-550" />
            <div class="carousel-caption">
                <h3>Web Development Master</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ad architecto autem consequatur deserunt, fugit minus natus nostrum odit officia pariatur quis repellat, repudiandae. Alias autem hic perferendis sapiente tenetur.</p>
                <a href="" class="btn btn-outline-success">Enroll Now</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="{{asset('/')}}website/img/slider2.jpg" alt="" class="w-100 h-550" />
            <div class="carousel-caption">
                <h3>Android App Development master</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ad architecto autem consequatur deserunt, fugit minus natus nostrum odit officia pariatur quis repellat, repudiandae. Alias autem hic perferendis sapiente tenetur.</p>
                <a href="" class="btn btn-outline-success">Enroll Now</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="{{asset('/')}}website/img/slider3.jpg" alt="" class="w-100 h-550" />
            <div class="carousel-caption">
                <h3>Master In Physics</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ad architecto autem consequatur deserunt, fugit minus natus nostrum odit officia pariatur quis repellat, repudiandae. Alias autem hic perferendis sapiente tenetur.</p>
                <a href="" class="btn btn-outline-success">Enroll Now</a>
            </div>
        </div>
    </div>

</div>

<section class="">
    <div class="container-fluid py-2 bg-danger">
        <h3 class="  text-center text-white ">All Latest Course</h3>
    </div>
    <div class="container py-5">
        <div class="row">
            @foreach($courses as $course)
            <div class="col-md-3 mb-4">
                <div class="card h-100">
                    <img src="{{asset($course->image)}}" alt="" class="h-250">
                    <div class="card-body">
                        <h5><a href="{{route('website.course-detail',['id'=>$course->id])}}" class="text-muted text-decoration-none">{{$course->title}}</a></h5>
                        <p><b>BDT:</b><i> {{$course->fee}} Tk</i></p>
                        <hr/>
                        <a href="{{route('website.course-detail',['id'=>$course->id])}}" class="btn btn-outline-success">Read More</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<section class="">
    <div class="container-fluid py-2 bg-danger">
        <h3 class="  text-center text-white ">Our Instructor Info</h3>
    </div>
    <div class="container py-5">
        <div class="row">
            @foreach($teachers as $teacher)
            <div class="col-sm-6 col-md-4 mb-4">
                <div class="card h-100">
                    <img src="{{asset($teacher->image)}}" alt="" class="h-250">
                    <div class="card-body">
                        <h2>{{$teacher->name}}</h2>
                        <h4>{{$teacher->designation}}</h4>
                        <hr/>
                        <ul class="nav">
                            <li><a href="" class="nav-link"><i class="fa-brands fa-facebook-square fa-2x "></i></a></li>
                            <li><a href="" class="nav-link"><i class="fa-brands fa-twitter-square fa-2x "></i></a></li>
                            <li><a href="" class="nav-link"><i class="fa-brands fa-google-plus-square fa-2x "></i></a></li>
                            <li><a href="" class="nav-link"><i class="fa-brands fa-github-square fa-2x "></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<section class="" style="margin-bottom: 120px;">
    <div class="container-fluid bg-danger py-2">
        <h1 class="text-white text-center">Our Student Review</h1>
    </div>
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="carousel slide" data-bs-ride="carousel" data-bs-interval="1800" id="customerReview">
                    <ol class="carousel-indicators customer-indicators">
                        <li data-bs-target="#customerReview" data-bs-slide-to="0" class="active my-li1">asdasd</li>
                        <li data-bs-target="#customerReview" data-bs-slide-to="1" class="my-li2"></li>
                        <li data-bs-target="#customerReview" data-bs-slide-to="2" class="my-li3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="{{asset('/')}}website/img/member1.png" alt="" class="member-image"/>
                            <div class="carousel-caption customer-caption">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A id laboriosam laborum! Autem consectetur corporis cupiditate dignissimos dolor, dolorem doloribus eaque et libero, modi mollitia quasi, saepe ut veritatis vero!</p>
                                <h3>Mr. Olivia</h3>
                                <p>Melbourn, Austrilia</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="{{asset('/')}}website/img/member2.png" alt="" class="member-image"/>
                            <div class="carousel-caption customer-caption">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A id laboriosam laborum! Autem consectetur corporis cupiditate dignissimos dolor, dolorem doloribus eaque et libero, modi mollitia quasi, saepe ut veritatis vero!</p>
                                <h3>Mr. Nur Mohammad</h3>
                                <p>Newziland, Dhaka</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="{{asset('/')}}website/img/member3.png" alt="" class="member-image"/>
                            <div class="carousel-caption customer-caption">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A id laboriosam laborum! Autem consectetur corporis cupiditate dignissimos dolor, dolorem doloribus eaque et libero, modi mollitia quasi, saepe ut veritatis vero!</p>
                                <h3>Mr. Amit Kumar</h3>
                                <p>Borisal</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
