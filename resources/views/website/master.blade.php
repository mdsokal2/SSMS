<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{asset('/')}}website/css/bootstrap.css">
    <link rel="stylesheet" href="{{asset('/')}}website/css/all.css">
    <link rel="stylesheet" href="{{asset('/')}}website/css/ecom.css">
    <link rel="stylesheet" href="{{asset('/')}}website/css/style.css">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a href="" class="navbar-brand">LOGO</a>
        <ul class="navbar-nav ms-auto">
            <li><a href="{{route('home')}}" class="nav-link">Home</a></li>
            <li><a href="{{route('about')}}" class="nav-link">About Us</a></li>
            <li><a href="{{route('course')}}" class="nav-link">All Courses</a></li>
            <li><a href="{{route('contact')}}" class="nav-link">Contact</a></li>

            @if(Session::get('student_id'))
                <li class="dropdown">
                    <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">{{Session::get('student_name')}}</a>
                    <ul class="dropdown-menu">
                        <li><a href="{{route('student.dashboard')}}" class="dropdown-item">Dashboard</a></li>
                        <li><a href="{{route('student.logout')}}" class="dropdown-item">Logout</a></li>
                    </ul>
                </li>
            @else
            <li><a href="{{route('login-registration')}}" class="nav-link">Login / Register</a></li>
            @endif
        </ul>
    </div>
</nav>

@yield('content')

<footer>
    <section class="py-5 bg-secondary">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card card-body h-100">
                        <h4 class="text-center">Why Choice US</h4>
                    <hr/>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto atque deserunt error fugiat, id ipsam, itaque magni nemo nulla omnis quod, sapiente veritatis voluptate! At autem fuga illo quia totam.</p>
                     </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-body h-100">
                        <h4 class="text-center">Popular Course</h4>
                        <hr/>
                        <ul class="navbar-nav">
                            <li><a href="" class="nav-link">Web Development</a></li>
                            <li><a href="" class="nav-link">Android Development</a></li>
                            <li><a href="" class="nav-link">Master in English </a></li>
                            <li><a href="" class="nav-link">Master in Higher Math </a></li>
                            <li><a href="" class="nav-link">Master in Higher Physics </a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-body h-100">
                    <h4 class="text-center">Contact With Us</h4>
                    <hr/>
                    <p>
                        House # 420, Road # 120, West Razabazar,Dhaka 1215 <br/>
                        Email:sokal@example.com <br/>
                        Phone:01830214885
                    </p>
                    <hr/>
                    <ul class="nav">
                        <li><a href="" class="nav-link"><i class="fa-brands fa-facebook-square fa-2x "></i></a></li>
                        <li><a href="" class="nav-link"><i class="fa-brands fa-twitter-square fa-2x "></i></a></li>
                        <li><a href="" class="nav-link"><i class="fa-brands fa-linkedin-in fa-2x "></i></a></li>
                        <li><a href="" class="nav-link"><i class="fa-brands fa-google-plus-square fa-2x "></i></a></li>
                        <li><a href="" class="nav-link"><i class="fa-brands fa-github-square fa-2x "></i></a></li>
                    </ul>
                </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="text-center text-white mb-0">Design & Developed By- Developer@MdSokal</p>
                </div>
            </div>
        </div>
    </section>
</footer>



<script src="{{asset('/')}}website/js/jquery-3.6.0.js"></script>
<script src="{{asset('/')}}website/js/bootstrap.js"></script>
</body>
</html>
