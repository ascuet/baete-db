<!DOCTYPE html>
<html>
<head>
    @include('include.head')
    @yield('table_style')
</head>
<body>
   
<div class="container-fluid">
    @include('include.nav')
    @yield('content')
    
</div>

@yield('scripts')
</body>
</html>