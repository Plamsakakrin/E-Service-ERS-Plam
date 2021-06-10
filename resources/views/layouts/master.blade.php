<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DRA ERS</title>

  <!-- sweetalert2 -->
<!-- <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> -->

  <!-- google font -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Sarabun:ital,wght@0,300;0,400;1,400&display=swap" rel="stylesheet">

  <!-- ajax -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- bootstrap 5-->
  <link rel="stylesheet" href="{{asset ('css/bootstrap.min.css')}}">
  

  <!-- cssstlye -->
  <link rel="stylesheet" href="{{asset ('asset/css/style.css')}}">
  <link rel="stylesheet" href="{{asset ('asset/css/ui-lightness/jquery-ui-1.8.10.custom.css')}}">

  <!-- card-body -->
  <link rel="stylesheet" href="{{asset ('asset/css/card-body.css')}}">

  <!-- fa-fa-font -->
  <link rel="stylesheet" href="{{asset('css/all.min.css')}}">

  <!-- npm sweetalert -->
  <!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@9.17.2/dist/sweetalert2.min.css"> -->

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/brands.min.css">
  <link rel="stylesheet" href="{{ asset('css/app.css') }}">
  <link rel="stylesheet" href="{{ asset('css/main.css') }}">
</head>

<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed">
  <div class="wrapper">

    <nav class="navbar navbar-light text-center fixed-top">
      <a class="navbar-brand" href="#">
        <img id="imgLogo" runat="server" src="{{asset('Images/icons/E-service DOF.png')}}" style="width: auto; max-height: 50px" alt="Logo">
      </a>
      <h3 style="position: absolute; left: 50%; transform: translateX(-50%); font-weight: bold;">ระบบ E-Service สำหรับออกหนังสือรับรอง <br> ผู้เผยแพร่ศาสนาชาวต่างประเทศ</h3>
    </nav>

    <!-- Navbar -->

    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button">
            <i class="fas fa-bars"></i>
          </a>
        </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <!-- Authentication Links -->
        @guest
        @if (Route::has('login'))
        <li class="nav-item">
          <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
        </li>
        @endif

        @if (Route::has('register'))
        <li class="nav-item">
          <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
        </li>
        @endif
        @else
        <li class="nav-item dropdown">
          <a id="navbarDropdown" class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
            <img id="imgLogo" runat="server" src="{{asset('Images/icons/user_Default.png')}}" style="width: auto; max-height: 30px" alt="Logo">
            {{ Auth::user()->name }}
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" role="button">
            <i class="fa fa-key"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ route('logout') }}" role="button" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
            <i class="fa fa-sign-out-alt"></i>
          </a>

          <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
            @csrf
          </form>
        </li>
        @endguest
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar elevation-4">
      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Brand Logo -->
        <a href="#" class="brand-link pl-3 pr-3" href="#">
          <!--<img src="{{ asset('Images/icons/E-service DOF.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">-->
          <i class="fas fa-home"></i>
          <span style="font-size: 0.9rem !important" class="brand-text font-weight-light">หน้าหลัก</span>
        </a>
        <!-- Sidebar Menu -->
        @inject('menu', 'App\Http\Controllers\NavMenuController')
        {{ $menu->index() }}
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Main content -->
      <div class="content pt-2">
        @yield('content')
      </div>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
      <div class="p-3">
        <h5>Title</h5>
        <p>Sidebar content</p>
      </div>
    </aside>
    <!-- /.control-sidebar -->

  </div>
  <!-- ./wrapper -->

  <!-- REQUIRED SCRIPTS -->

  <script src="{{asset('js/app.js')}}"></script>
  {{csrf_field()}}
  <script>
  // จังหวัด อำเภอ
    $('.province').change(function() {
      if ($(this).val() != '') {
        var select = $(this).val();
        var _token = $('input[name="_token"]').val();
        $.ajax({
          url: "{{route('fetch')}}",
          method: "get",
          data: {
            select: select,
            _token: _token
          },
          success: function(result) {
            $('.district').html(result);
          }
        })
      }
    });
  // อำเภอ ตำบล
    $('.district').change(function() {
      if ($(this).val() != '') {
        var select = $(this).val();
        var _token = $('input[name="_token"]').val();
        $.ajax({
          url: "{{route('fetch2')}}",
          method: "get",
          data: {
            select: select,
            _token: _token
          },
          success: function(result) {
            $('.subdistrictid').html(result);
          }
        })
      }
    });
 
  // จังหวัด อำเภอ 2
    $('.province2').change(function() {
      if ($(this).val() != '') {
        var select = $(this).val();
        var _token = $('input[name="_token"]').val();
        $.ajax({
          url: "{{route('fetch3')}}",
          method: "get",
          data: {
            select: select,
            _token: _token
          },
          success: function(result) {
            $('.district2').html(result);
          }
        })

      }
    });

  // อำเภอ ตำบล 2
    $('.district2').change(function() {
      if ($(this).val() != '') {
        var select = $(this).val();
        var _token = $('input[name="_token"]').val();
        $.ajax({
          url: "{{route('fetch4')}}",
          method: "get",
          data: {
            select: select,
            _token: _token
          },
          success: function(result) {
            $('.subdistrictid2').html(result);
          }
        })
      }
    });
  </script>
  @include('layouts.footer')
</body>

</html>