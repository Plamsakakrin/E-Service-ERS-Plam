<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body style="background: #ffffff">
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm text-center" style="border-bottom: 3px solid #ed7d31;">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img id="imgLogo" runat="server" src="{{asset('Images/icons/E-service DOF.png')}}" style="width: auto; max-height: 80px" alt="Logo">
                </a>
                <h3 style="position: absolute; left: 50%; transform: translateX(-50%); font-weight: bold;">ระบบ E-Service สำหรับออกหนังสือรับรอง <br> ผู้เผยแพร่ศาสนาชาวต่างประเทศ</h3>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
