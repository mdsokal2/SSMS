<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Email confirmation</title>
</head>
<body>
<h1 class="text-success bg-success bg-warning">Welcome</h1>
<h3>Hi, dear {{$data['title']}}</h3>
<hr/>
<h3 class="text-success bg-warning">Your Id is:  {{$data['id']}}</h3>
<h3 class="text-success bg-warning">Your Password is:  {{$data['password']}}</h3>
<h3 class="text-muted">Your login address is:  {{$data['login_url']}}</h3>
</body>
</html>
