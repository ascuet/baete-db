<!DOCTYPE html>
<html>
<head>
    @include('include.head')
</head>
<body>
   
<div class="container-fluid">
    @include('include.nav')
    @yield('content')
    
</div>
   
</body>
</html>