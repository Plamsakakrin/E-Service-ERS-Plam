@extends('layouts.master')
@section('content')
<div class="container">
    <div class="row mb-2">
        <div class="col-lg-6 col-12">
            <label class="text-header">องค์การทางศาสนา (องค์การย่อย)
            </label>
        </div>
        <div class="col-lg-6 col-12" style="text-align: end;">
            <button type="button" class=" btn btn" style="background-color: #DB681D; color:white;" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                <i class="fa fa-search pr-1" aria-hidden="true"></i>
                เงื่อนไขการค้นหา
            </button>
        </div>
    </div>
    <hr>
    <form action="{{route('searchsub')}}" method="post">
        @csrf
        <div class="collapse {{$show}}" id="collapseExample">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row" style="padding: 10px;">
                                <div class="col-md-4">
                                    <label for="main_orgid" class="form-label">ชื่อองค์การใหญ่: </label>
                                    <input type="text" id="textfield1" autocomplete="off" class="form-control" name="main_orgid" value="{{$main_orgid}}">
                                    <br>
                                </div>
                                <div class="col-md-4">
                                    <label for="name_th" class="form-label">ชื่อองค์การย่อย: </label>
                                    <input type="text" id="textfield2" autocomplete="off" class="form-control" name="name_th" value="{{$name_th}}">
                                    <br>
                                </div>
                                <div class="col-md-4">
                                    <label for="provinceid" class="form-label">จังหวัด: </label>
                                    <!-- <input type="text"  id="textfield3"  autocomplete="off" class="form-control" name="provinceid" value="{{$provinceid}}"> -->
                                    <select name="provinceid" class="form-select province">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($province as $row)

                                        <option value="{{$row->id}}">{{$row->name_th}}</option>

                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="is_active" class="form-label">สถานะ: </label>
                                    <select name="is_active" id="textfield3" class="form-select">
                                        <option value="">== กรุณาเลือก ==</option>
                                        @if($is_active == "1")
                                        <option value="1" selected> เปิด </option>
                                        <option value="2"> ปิด </option>

                                        @elseif($is_active == "2")
                                        <option value="1"> เปิด </option>
                                        <option value="2" selected> ปิด </option>
                                        @else
                                        <option value="1"> เปิด </option>
                                        <option value="2"> ปิด </option>
                                        @endif
                                    </select>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <center>
                                    <button type="submit" name="submit" class="btn" style="background-color: #DB681D; color:white;"><i class="fa fa-search"></i> ค้นหา</button>
                                    <button onclick="clearFields()" class="btn btn-secondary"><i class="fa fa-refresh"></i> เคลียร์คำ</button>
                                    <!-- <button type="button" onclick="myFunction()">Clear input field</button> -->
                                    <!-- <button type="button" class="btn btn-secondary" style="color:white;" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    <i class="fa fa-times" aria-hidden="true"></i>
                                    ปิด
                                </button> -->
                                </center><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="row mt-2">
        <div style="margin-bottom: 10px;" class="ml-2">
            <a href="{{route('addsub')}}" class="btn btn-success text-normal">
                <label class="txtv3 p-0 m-0"><i class="fa fa-plus pr-1" aria-hidden="true"></i> เพิ่ม</label>
            </a>
        </div>
    </div>


    <div class="card mt-2">
        <div class="card-header p-1 d-none d-lg-block" style="background-color: #DB681D; color:white;">
            <div class="row">
                <div class="col-lg-1 text-center">
                    <label class="pl-2 text-normal font-weight-normal">ลำดับ</label>
                </div>
                <div class="col-lg-2 text-left">
                    <label class="text-normal font-weight-normal">ชื่อองค์การใหญ่</label>
                </div>
                <div class="col-lg-2 text-left">
                    <label class="text-normal font-weight-normal">ชื่อองค์การย่อย</label>
                </div>
                <div class="col-lg-2 text-center">
                    <label class="text-normal font-weight-normal">จังหวัด</label>
                </div>
                <div class="col-lg-2 p-0 text-center">
                    <label class="text-normal font-weight-normal">จำนวนผู้เผยแพร่ศาสนา</label>
                </div>
                <div class="col-lg-2 pl-2 p-0 text-center">
                    <label class="text-normal font-weight-normal">สถานะ</label>
                </div>
                <div class="col-lg-1 p-0 text-center">
                    <label class="text-normal font-weight-normal">Action</label>
                </div>
            </div>
        </div>

        @if($suborg->count() !== 0)
        @foreach($suborg as $row )

        <div class="card-body p-3 row-green" style="border-bottom:1px solid lightgray; margin-bottom:2px">
            <div class="row">
                <div class="col-lg-1  text-lg-center">
                    <label class="text-normal">{{$suborg->firstItem()+$loop->index}}</label>
                </div>
                <div class="col-lg-2 text-lg-left">
                    <label class="text-normal">{{$row->mainorg_th}}</label>
                </div>
                <div class="col-lg-2 text-lg-left">
                    <label class="text-normal">{{$row->subname}}</label>
                </div>
                <div class="col-lg-2 text-lg-center">
                    <label class="text-normal">{{$row->name_th}}</label>
                </div>
                <div class="col-lg-2   text-lg-center">
                    <label class="text-normal">{{$row->ievangelist_number_limit}}</label>
                </div>
                <div class="col-lg-2  pl-3 p-0 text-lg-center">
                    <label class="text-normal">
                        @if ($row->is_active == 1)
                        <i class="fa fa-check-circle" aria-hidden="true" style="font-size: 20px;color:#4ca64c" title="เปิด"></i>
                        @elseif ($row->is_active == 2)
                        <i style="font-size: 20px; color: red;" class="fa fa-times-circle" title="ปิด"></i>
                        @else
                        ไม่ระบุ
                        @endif
                    </label>
                </div>
                <div class="col-lg-1 p-0 text-center">
                    <a href="/settingorgform_page/editsub/edit?id={{$row->id}}"><i style="color: black;" class="fa fa-pencil-square-o" title="แก้ไขข้อมูล"></i></a>
                    <a href="{{url('/settingorgform_page/deletesub/'.$row->id)}}" data-bs-toggle="modal" data-bs-target="#alertdalete">
                        <i style="color: red;" class="fa fa-times-circle" title="ยกเลิก"></i>
                    </a>

                </div>
            </div>
        </div>
        @endforeach
        @else
        <div class="card-body text-center">
            <label class="text-normal">ไม่พบข้อมูล</label>
        </div>
        @endif
    </div>
    {{$suborg->links()}}
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="alertdalete" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #db681d; color:white;">
                <h5 class="text-nomal">ระบบ E-Service</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{url('/settingorgform_page/deletesub/'.$row->id)}}" method="get">
                @csrf
                <input type=hidden id="id" name=id>
                <div class="modal-body" style="text-align: center;">
                    <br><br>
                    ยืนยันการยกเลิกข้อมูล
                    <br><br>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" data-bs-target="#alertdalete" data-bs-toggle="modal" data-bs-dismiss="modal" style="background-color:#20a2aa;"><i class="fa fa-check" aria-hidden="true"></i> ยืนยัน</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fa fa-times pr-2" aria-hidden="true"></i> ปิด</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- <div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalToggleLabel2">Modal 2</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ยกเลิกข้อมูลเรียบร้อยแล้ว
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fa fa-times pr-2" aria-hidden="true"></i>ปิด</button>
            </div>
        </div>
    </div>
</div> -->


<!-- Modal -->
<div class="modal fade" id="alert" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #db681d; color:white;">
                <h5 class="text-nomal">ระบบ E-Service</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body" style="text-align: center;">
                <br><br>
                @if(session("success"))
                {{ Session::get('success') }}
                @elseif(count($errors) > 0)
                @foreach ($errors->all() as $error)
                {{ $error }}
                @endforeach
                @endif
                <br><br>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fa fa-times pr-2" aria-hidden="true"></i> ปิด</button>
            </div>
        </div>
    </div>
</div>




<!-- <script src="{{asset('asset/css/main.js')}}"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

@if( Session::has('success'))
<script type="text/javascript">
    $(document).ready(function() {
        $('#alert').modal('show');
    });
</script>
@endif

<!-- clear textfild -->
<script type="text/javascript">
    function clearFields() {
        document.getElementById("textfield1").value = ""
        document.getElementById("textfield2").value = ""
        document.getElementById("textfield3").value = ""
        document.getElementById("textfield4").value = ""
    }

    // alert modal 
    // $(document).on('click','.delete',function(){
    //      let id = $(this).attr('data-id');
    //      $('#id').val(id);
    // });
</script>
<!-- clear textfild -->

@endsection
