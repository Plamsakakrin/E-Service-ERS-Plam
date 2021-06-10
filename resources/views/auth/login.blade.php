@extends('layouts.app')
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


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/brands.min.css">
<link rel="stylesheet" href="{{ asset('css/app.css') }}">
<link rel="stylesheet" href="{{ asset('css/main.css') }}">
<script src='https://www.google.com/recaptcha/api.js'></script>

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-4 col-lg-4">
            <div class="card">
                <div class="card-body" style="background: #f8fafc">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group row text-center">
                            <div class="col-md-12">
                                <h3 style="color: #1e3269"><i class="fa fa-unlock-alt pr-2"></i>เข้าสู่ระบบ</h3>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <input id="username" type="username" class="form-control 
                                        @error('username') is-invalid @enderror" name="username" value="{{ old('username') }}" required autocomplete="username" autofocus placeholder="Username">

                                @error('username')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <input id="password" type="password" class="form-control 
                                        @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">

                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="g-recaptcha" data-sitekey="6LfaQPQaAAAAAFd8U55lg4w935BLyK9jMdJFM8b-"></div>


                        <br>
                        <div class="form-group row mb-0">
                            <div class="col-md-12">
                                <button type="submit" class="btn form-control text-light" style="background: #ed7d31">
                                    <i class="fa fa-sign-in-alt"></i>
                                    เข้าสู่ระบบ
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection