@extends('layouts.master')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="card w-100 h-auto">
            <div class="card-body">
                <div class="row">
                    <div class="col-12 text-center">
                        <img style="width: 250px; margin-top: 20px;" src="{{asset('Images/icons/profile4.png')}}" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-offset-3 col-1 text-right" style="margin-left: 25%">
                        <span class="font-weight-bold">ชื่อ:</span>
                    </div>
                    <div class="col-2 text-left">
                        <span>ทดสอบ</span>
                    </div>
                    <div class="col-2 text-right">
                        <span class="font-weight-bold">นามสกุล:</span>
                    </div>
                    <div class="col-2 text-left">
                        <span>ทดสอบ</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-offset-3 col-1 text-right" style="margin-left: 25%">
                        <span class="font-weight-bold">ตำแหน่ง:</span>
                    </div>
                    <div class="col-2 text-left">
                        <span>เจ้าหน้าที่ทั่วไป</span>
                    </div>
                    <div class="col-2 text-right">
                        <span class="font-weight-bold">หน่วยงาน:</span>
                    </div>
                    <div class="col-2 text-left">
                        <span>กรมการศาสนา</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-1 text-right" style="margin-left: 25%">
                        <span class="font-weight-bold">บทบาท:</span>
                    </div>
                    <div class="col-2 text-left">
                        <span>Super Admin</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
