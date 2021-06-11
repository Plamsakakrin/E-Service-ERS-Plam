@extends('layouts.master')
@section('content')
<div class="container">



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



    @if($type == "add")
    <form method="post" action="{{url('/settingorgform_page/store')}}">
        @else
        <form action="{{ route('org_form.update', [ '_token' => csrf_token(),'editid'=>$id]) }}" method="POST" enctype="multipart/form-data">
            @endif
            @csrf
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="header p-1">
                            <label class="text-normal font-weight-normal pl-2">
                                <b>แบบ อก.2</b>
                            </label>
                        </div>
                        <div class="card-body">

                            <div class="row">
                                <input type="hidden" class="form-control" value="" name="id">
                                <div class="col-md-6">
                                    <label class="form-label" style="color: blue;"> 1. </label>
                                    <label style="color:red">*</label>
                                    <label for="mainorg_th">ชื่อองค์การทางศาสนา (ไทย):</label></label>
                                    <input type="text" class="form-control" autocomplete="off" name="mainorg_th" value="{{ $type == 'edit' ? $mainorg_th : "" }} @if ($type == " add"){{old('mainorg_th')}} @endif">
                                    @error('mainorg_th')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <div class="col-md-6">
                                    <label for="mainorg_en">ชื่อองค์การทางศาสนา (อังกฤษ):</label></label>
                                    <input type="text" class="form-control" autocomplete="off" name="mainorg_en" value="{{ $type == 'edit' ? $mainorg_en : "" }} @if ($type == " add"){{old('mainorg_en')}} @endif"><br>
                                </div>
                                <div class="col-md-6">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="history_org" class="form-label">ประวัติองค์การศาสนา และความสัมพันธ์กับองค์การทางศาสนา<br> ในต่างประเทศ: </label>
                                    <textarea class="form-control" name="history_org" autocomplete="off" placeholder="" style="height: 130px">{{ $type == 'edit' ? $history_org : "" }} @if ($type == "add"){{old('history_org')}} @endif</textarea>
                                    <!-- @error('history_org')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror -->
                                    <br>
                                </div>
                                <div class="col-md-6"><br>
                                    <label for="under_unit" class="form-label">ซึ่งสังกัดอยู่ใน: </label>
                                    <textarea class="form-control" name="under_unit" autocomplete="off" placeholder="" style="height: 130px">{{ $type == 'edit' ? $under_unit : "" }} @if ($type == "add"){{old('under_unit')}} @endif</textarea>
                                    <br>
                                </div>
                                <!-- <div class="row"> -->
                                <div class="col-md-6">
                                    <label for="religion_detail1" class="form-label">ทำงานด้านการสอนศาสนาคริสต์ศาสนา: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="religion_detail1" value="{{ $type == 'edit' ? $religion_detail1 : "" }} @if ($type == " add"){{old('religion_detail1')}} @endif"><br>
                                </div>
                                <div class="col-md-6">
                                    <label for="religion_detail2" class="form-label">นิกาย: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="religion_detail2" value="{{ $type == 'edit' ? $religion_detail2 : "" }}  @if ($type == " add"){{old('religion_detail2')}} @endif"><br>
                                </div>
                                <!-- </div> -->
                                <!-- <div class="row"> -->
                                <div class="col-md-6">
                                    <label for="office_address" class="form-label">โดยสำนักงานตั้งอยู่เลขที่: </label>
                                    <textarea class="form-control" name="office_address" autocomplete="off" placeholder="" style="height: 60px">{{ $type == 'edit' ? $office_address : "" }} @if ($type == "add"){{old('office_address')}} @endif</textarea>
                                    <br>
                                </div>
                                <div class="col-md-6">
                                    <label for="office_street" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" name="office_street" autocomplete="off" value="{{ $type == 'edit' ? $office_street : "" }} @if ($type == " add"){{old('office_street')}} @endif">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label style="color:red">*</label>
                                    <label for="office_provinceid" class="form-label">จังหวัด: </label>
                                    <select name="office_provinceid" class="form-select province">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($province as $row)
                                        @if ($type == "edit")

                                        @if ($ers2->office_provinceid)
                                        <option value="{{$row->id}}" {{ $ers2->office_provinceid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif

                                        @else
                                        <option value="{{$row->id}}">{{$row->name_th}}</option>
                                        @endif
                                        @endforeach

                                    </select>
                                    @error('office_provinceid')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="office_districtid" class="form-label">เขต/อำเภอ: </label>
                                    <select name="office_districtid" class="form-select district">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($district as $row)
                                        @if ($type == "edit")

                                        @if ($ers2->office_districtid)
                                        <option value="{{$row->id}}" {{ $ers2->office_districtid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="office_subdistrictid" class="form-label">แขวง/ตำบล: </label>
                                    <select name="office_subdistrictid" class="form-select subdistrictid">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($sub_district as $row)
                                        @if ($type == "edit")

                                        @if ($ers2->office_subdistrictid)
                                        <option value="{{$row->id}}" {{ $ers2->office_subdistrictid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="office_posecode" class="form-label">รหัสไปรษณีย์: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="office_posecode" onkeypress="return isNumberKey(event)" value="{{ $type == 'edit' ? $office_posecode : "" }}  @if ($type == " add"){{old('office_posecode')}} @endif">
                                    @error('office_posecode')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <!-- </div> -->
                            </div>
                            <hr>

                            @if($type == "edit")
                            <div class="row">
                                <label class="form-label" style="color:blue">2. จำนวนศาสนิก และจำนวนผู้เผยแพร่</label>
                                <div class="row">
                                    &nbsp; &nbsp;
                                    <div class="row g-1 align-items-center">
                                        <div class="col-md-auto pl-3">
                                            <label for="total_member" class="col-form-label">2.1 จำนวนศาสนิกชนในประเทศไทย รวมทั้งสิ้น:</label>
                                        </div>
                                        <div class="col-md-2">
                                            <input type="text" name="total_member" autocomplete="off" class="form-control" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $total_member : "" }}">
                                        </div>
                                        <div class="col-md-2">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                    </div>
                                    @error('total_member')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row  g-2 align-items-center">
                                    <div class="col-md-auto pl-5">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                        <label for="male_member" class="col-form-label">แยกเป็นชาย:</label>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" name="male_member" autocomplete="off" class="form-control" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $male_member : "" }}">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">คน</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp; <div class="row g-2 align-items-center">
                                    <div class="col-auto">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp;
                                        <label for="female_member" class="col-form-label">แยกเป็นหญิง:</label>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" name="female_member" autocomplete="off" class="form-control" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $female_member : "" }}">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">คน</label>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-1 align-items-center">
                                    <div class="col-auto">
                                        <label for="evangelist_number_limit" class="col-form-label">2.2 จำนวนผู้เผยแพร่ศาสนาที่ต้องการให้มาดำเนินงานในประเทศไทย:</label>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" class="form-control" autocomplete="off" name="evangelist_number_limit" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $evangelist_number_limit : "" }}">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">คน</label>
                                        <label for="" class="col-form-label">แยกประเภท ดังนี้:</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp;
                                        <div class="col-auto">
                                            <label for="evangelist_number" class="col-form-label">1. ผู้เผยแพร่ศาสนาและอบรมศีลธรรม:</label>
                                        </div>
                                        <div class="col-md-2">
                                            <input type="text" class="form-control" autocomplete="off" name="evangelist_number" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $evangelist_number : "" }}">
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    &nbsp; &nbsp; <div class="row g-3 align-items-center">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp;

                                        <div class="col-md-auto">
                                            <label for="doctor_number" class="col-form-label">
                                                2. แพทย์:
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;
                                            </label>
                                        </div>
                                        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                        <div class="col-md-2">
                                            <input type="text" class="form-control" autocomplete="off" name="doctor_number" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $doctor_number : "" }}">
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp;
                                        <div class="col-md-auto">
                                            <label for="nurse_number" class="col-form-label">
                                                3. พยาบาล:
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp;
                                            </label>
                                        </div>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <div class="col-md-2">
                                            <input type="text" class="form-control" autocomplete="off" name="nurse_number" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $nurse_number : "" }}">
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp;
                                        <div class="col-md-auto">
                                            <label for="other_number" class="col-form-label">
                                                4. อื่นๆ (ระบุ):
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                            </label>
                                        </div>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <div class="col-md-2">
                                            <input type="text" class="form-control" autocomplete="off" name="other_number" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" style="text-align: right;" value="{{ $type == 'edit' ? $other_number : "" }}">
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-1 align-items-center">
                                    <div class="col-auto">
                                        <label for="current_evangelist_sq" class="col-form-label">2.3 ปัจจุบันผู้เผยแพร่ศาสนาที่องค์การขอให้กรมการศาสนาออกใบรับรอง เพื่อต่อวีซ่าเป็นบุคคลลำดับที่:</label>
                                    </div>
                                    <div class="col-md-1">
                                        <input type="text" class="form-control" autocomplete="off" name="current_evangelist_sq" aria-describedby="passwordHelpInline" disabled="" value="{{ $type == 'edit' ? $current_evangelist_sq : "" }}">
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <label for="" class="form-label" style="color: blue;"> 3. แผนงานระยะยาวขององค์การ</label>
                                <div class="col-md-12">
                                    &nbsp; &nbsp;
                                    <label for="" class="form-label">3.1 องค์การมีแผนงานระยะยาวที่จะดำเนินงานในประเทศ คือ (ระบุชื่อโครงการหรืองานที่จะดำเนินการในประเทศไทย): </label>
                                    <br>
                                </div>
                                <input type="hidden" class="form-control" value="{{$id}}" id="longid" name="longid">
                                &nbsp; &nbsp;<div class="col-md-3">
                                    <label style="color:red">*</label>
                                    <label for="plan_type" class="form-label">ประเภท: </label>
                                    <select name="plan_type" class="form-select" id="plan_type">
                                        <option value="" selected>== กรุณาเลือก ==</option>
                                        <option value="1"> งาน </option>
                                        <option value="2"> โครงการ </option>
                                    </select>
                                    <span id="lblCheck" class="d-none" style="color: red;">กรุณาเลือกประเภท</span>
                                    <br>
                                </div>
                                <div class="col-md-4">
                                    <label style="color:red">*</label>
                                    <label for="plan_detail" class="form-label">แผนงาน: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="plan_detail" id="plan_detail" value="">

                                    <span id="lblCheck2" class="d-none" style="color: red;">กรุณากรอกแผนงาน</span>
                                    <br>
                                </div>
                                <div class="col-auto">
                                    <br>
                                    <center>
                                        <button id="btnlongdata" onclick="longdata(this);" type="button" name="btnlongdata" class="btn btn-success button" style="margin-top:8px;">
                                            <i class="fas fa-plus"></i> เพิ่ม</button>
                                    </center>

                                </div>
                                <br>
                                @if($long->count() !== 0)
                                <div class="d-flex justify-content-center">
                                    <div class="col-md-9">
                                        <div class="card mt-2">
                                            <div class="card-header p-1 d-none d-lg-block" style="background-color:  #ff7b26e6; color:white;">
                                                <div class="row">
                                                    <div class="col-lg-1 text-center">
                                                        <label class="pl-2 text-normal font-weight-normal">ลำดับ</label>
                                                    </div>
                                                    <div class="col-lg-4 text-left">
                                                        <label class="text-normal font-weight-normal">ประเภท</label>
                                                    </div>
                                                    <div class="col-lg-5 text-left">
                                                        <label class="text-normal font-weight-normal">แผนงาน</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2 p-0 text-center">
                                                        <label class="text-normal font-weight-normal">Action</label>
                                                    </div>
                                                </div>
                                            </div>

                                            @if($long->count() !== 0)
                                            @php($i=1)
                                            @foreach($long as $row)

                                            <div class="card-body p-3 row-green" style="border-bottom:1px solid lightgray; margin-bottom:2px; background-color: #e9fbf2; color:black;">
                                                <div class="row">
                                                    <div class="col-lg-1  text-lg-center">
                                                        <label class="text-normal">{{$i++}}</label>
                                                    </div>
                                                    <div class="col-lg-4 text-left">
                                                        <label class="text-normal">

                                                            @if ($row->plan_type == 1)
                                                            <label for="">งาน</label>
                                                            @elseif ($row->plan_type == 2)
                                                            <label for="">โครงการ</label>
                                                            @else
                                                            @endif
                                                        </label>
                                                    </div>
                                                    <div class="col-lg-5 text-left">
                                                        <label class="text-normal editableColumns">{{$row->plan_detail}}</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2 p-0 text-center">
                                                        <a href="{{url('/settingorgform_page/longtermplandelete/'.$row->id)}}" onclick="return confirm('ต้องการลบข้อมูลหรือไม่')"><i style="color: red;" class="fa fa-trash"></i></a>
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
                                    </div>
                                </div>
                                @endif
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    &nbsp; &nbsp;<label for="" class="form-label">3.2 วัตถุประสงค์ของแผนงานหรือโครงการ: </label>
                                    <br>
                                </div>
                                <input type="hidden" class="form-control" autocomplete="off" value="{{$id}}" id="objid" name="objid">
                                &nbsp; &nbsp; <div class="col-md-7">
                                    <label style="color:red">*</label>
                                    <label for="objective" class="form-label">วัตถุประสงค์ของแผนงานหรือโครงการ: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="objective" id="objective" value="">
                                    <!-- @error('objective')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror -->
                                    <span id="Check3_2" class="d-none" style="color: red;">กรุณากรอกวัตถุประสงค์ของแผนงานหรือโครงการ</span>
                                    <br>
                                </div>
                                <!-- <div class="col-1">
                                            <label for="" class="form-label" type="hidden"></label>
                                        </div> -->
                                <div class="col-auto">
                                    <br>
                                    <center>
                                        <button id="btnobjdata" onclick="objdata(this);" type="button" name="btnobjdata" class="btn btn-success button" style="margin-top:8px;">
                                            <i class="fas fa-plus"></i> เพิ่ม</button>
                                    </center>
                                </div>
                                <br>
                                @if($obj->count() !== 0)
                                <div class="d-flex justify-content-center">
                                    <div class="col-md-9">
                                        <div class="card mt-2">
                                            <div class="card-header p-1 d-none d-lg-block" style="background-color:  #ff7b26e6; color:white;">
                                                <div class="row">
                                                    <div class="col-lg-1 text-center">
                                                        <label class="pl-2 text-normal font-weight-normal">ลำดับ</label>
                                                    </div>

                                                    <div class="col-lg-9 text-left">
                                                        <label class="text-normal font-weight-normal">วัตถุประสงค์ของแผนงานหรือโครงการ</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2 p-0 text-center">
                                                        <label class="text-normal font-weight-normal">Action</label>
                                                    </div>
                                                </div>
                                            </div>

                                            @if($obj->count() !== 0)
                                            @php($i=1)
                                            @foreach($obj as $row)

                                            <div class="card-body p-3 row-green" style="border-bottom:1px solid lightgray; margin-bottom:2px; background-color: #e9fbf2; color:black;">
                                                <div class="row">
                                                    <div class="col-lg-1  text-lg-center">
                                                        <label class="text-normal">{{$i++}}</label>
                                                    </div>
                                                    <div class="col-lg-9 text-left">
                                                        <label class="text-normal">{{$row->objective}}</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2  p-0 text-center">
                                                        <a href="{{url('/settingorgform_page/objectivedelete/'.$row->id)}}" onclick="return confirm('ต้องการลบข้อมูลหรือไม่')"><i style="color: red;" class="fa fa-trash"></i></a>
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
                                    </div>
                                </div>
                                @endif
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    &nbsp; &nbsp;<label for="" class="form-label">3.3 แนวการดำเนินของแผนงานหรือโครงการ: </label>
                                    <br>
                                </div>
                                <input type="hidden" class="form-control" value="{{$id}}" id="actid" name="actid">
                                &nbsp; &nbsp; <div class="col-md-7">
                                    <label style="color:red">*</label>
                                    <label for="action" class="form-label">แนวการดำเนินของแผนงานหรือโครงการ: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="action" id="action" value="">
                                    <span id="Check3_3" class="d-none" style="color: red;">กรุณากรอกแนวการดำเนินของแผนงานหรือโครงการ</span>
                                    <br>
                                </div>
                                <div class="col-auto">
                                    <br>
                                    <center>
                                        <button id="btnactdata" onclick="actdata(this);" type="button" name="btnactdata" class="btn btn-success button" style="margin-top:8px;">
                                            <i class="fas fa-plus"></i> เพิ่ม</button>
                                    </center>
                                </div>
                                <br>
                                @if($act->count() !== 0)
                                <div class="d-flex justify-content-center">
                                    <div class="col-md-9">
                                        <div class="card mt-2">
                                            <div class="card-header p-1 d-none d-lg-block" style="background-color:  #ff7b26e6; color:white;">
                                                <div class="row">
                                                    <div class="col-lg-1 text-center">
                                                        <label class="pl-2 text-normal font-weight-normal">ลำดับ</label>
                                                    </div>

                                                    <div class="col-lg-9 text-left">
                                                        <label class="text-normal font-weight-normal">แนวการดำเนินของแผนงานหรือโครงการ</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2 p-0 text-center">
                                                        <label class="text-normal font-weight-normal">Action</label>
                                                    </div>
                                                </div>
                                            </div>

                                            @if($act->count() !== 0)
                                            @php($i=1)
                                            @foreach($act as $row)

                                            <div class="card-body p-3 row-green" style="border-bottom:1px solid lightgray; margin-bottom:2px; background-color: #e9fbf2; color:black;">
                                                <div class="row">
                                                    <div class="col-lg-1  text-lg-center">
                                                        <label class="text-normal">{{$i++}}</label>
                                                    </div>
                                                    <div class="col-lg-9 text-left">
                                                        <label class="text-normal">{{$row->action}}</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2 p-0 text-center">
                                                        <a href="{{url('/settingorgform_page/actiondelete/'.$row->id)}}" onclick="return confirm('ต้องการลบข้อมูลหรือไม่')"><i style="color: red;" class="fa fa-trash"></i></a>
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
                                    </div>
                                </div>
                                @endif
                            </div>
                            <hr>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-1 align-items-center">
                                    <div class="col-auto">
                                        &nbsp; &nbsp;&nbsp;<label for="year_plan_period" class="col-form-label">3.4 ระยะเวลาดำเนินงานของแผนงานหรือโครงงาน:</label>
                                    </div>
                                    <div class="col-md-1">
                                        <input type="text" class="form-control" autocomplete="off" name="year_plan_period" onkeypress="return isNumberKey(event)" aria-describedby="passwordHelpInline" value="{{ $type == 'edit' ? $year_plan_period : "" }}">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">ปี</label>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    &nbsp;&nbsp; &nbsp;<label for="" class="form-label">3.5 เงินทุนและที่มาของรายได้: </label>
                                    <br>
                                </div>
                                <input type="hidden" class="form-control" value="{{$id}}" id="incid" name="incid">
                                &nbsp; &nbsp; <div class="col-md-7">
                                    <label style="color:red">*</label>
                                    <label for="incomesource" class="form-label">เงินทุนและที่มาของรายได้: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="incomesource" id="incomesource" value="">
                                    <span id="Check3_5" class="d-none" style="color: red;">กรุณากรอกเงินทุนและที่มาของรายได้</span>
                                    <br>
                                </div>
                                <div class="col-auto">
                                    <br>
                                    <center>
                                        <button id="btnincdata" onclick="incdata(this);" type="button" name="btnincdata" class="btn btn-success button" style="margin-top:8px;">
                                            <i class="fas fa-plus"></i> เพิ่ม</button>
                                    </center>
                                </div>
                                <br>
                                @if($inc->count() !== 0)
                                <div class="d-flex justify-content-center">
                                    <div class="col-md-9">
                                        <div class="card mt-2">
                                            <div class="card-header p-1 d-none d-lg-block" style="background-color:  #ff7b26e6; color:white;">
                                                <div class="row">
                                                    <div class="col-lg-1 text-center">
                                                        <label class="pl-2 text-normal font-weight-normal">ลำดับ</label>
                                                    </div>

                                                    <div class="col-lg-9 text-left">
                                                        <label class="text-normal font-weight-normal">เงินทุนและที่มาของรายได้</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2 p-0 text-center">
                                                        <label class="text-normal font-weight-normal">Action</label>
                                                    </div>
                                                </div>
                                            </div>

                                            @if($inc->count() !== 0)
                                            @php($i=1)
                                            @foreach($inc as $row)

                                            <div class="card-body p-3 row-green" style="border-bottom:1px solid lightgray; margin-bottom:2px; background-color: #e9fbf2; color:black;">
                                                <div class="row">
                                                    <div class="col-lg-1  text-lg-center">
                                                        <label class="text-normal">{{$i++}}</label>
                                                    </div>
                                                    <div class="col-lg-9 text-left">
                                                        <label class="text-normal">{{$row->incomesource}}</label>
                                                    </div>
                                                    <div class="col-lg-2 pl-2 p-0 text-center">
                                                        <a href="{{url('/settingorgform_page/income_sourcedelete/'.$row->id)}}" onclick="return confirm('ต้องการลบข้อมูลหรือไม่')"><i style="color: red;" class="fa fa-trash"></i></a>
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

                                    </div>
                                </div>
                                @endif
                            </div>
                            <hr>

                        </div>

                        <div class="header p-1">
                            <label class="text-normal font-weight-normal pl-2">
                                <b>ข้อมูลหัวหน้า/ประธานองค์การศาสนา</b>
                            </label>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <label style="color:red">*</label>
                                    <label for="prefix" class="form-label">คำนำหน้า: </label>
                                    <select name="prefix" class="form-select">
                                        <option value="0" selected>== กรุณาเลือก ==</option>

                                        @foreach ($prefixs as $row)
                                        @if ($type == "edit")
                                        <option value="{{$row->id}}" {{ $ers2->prefix == $row->id ? 'selected' : '' }}>{{$row->prefix_name}}</option>
                                        @else
                                        <option value="{{$row->id}}">{{$row->prefix_name}}</option>
                                        @endif
                                        @endforeach

                                    </select>
                                    @error('prefix')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <div class="col-md-4">
                                    <label style="color:red">*</label>
                                    <label for="fname" class="form-label">นาม: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="fname" value="{{ $type == 'edit' ? $fname : "" }}">
                                    @error('fname')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <div class="col-md-4">
                                    <label style="color:red">*</label>
                                    <label for="lname" class="form-label">นามสกุล: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="lname" value="{{ $type == 'edit' ? $lname : "" }}">
                                    @error('lname')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="race" class="form-label">เชื้อชาติ: </label>
                                    <select name="race" class="form-select">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($race as $row)
                                        @if ($type == "edit")
                                        <option value="{{$row->id}}" {{ $ers2->race == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @else
                                        <option value="{{$row->id}}">{{$row->name_th}}</option>
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="nationality" class="form-label">สัญชาติ: </label>
                                    <select name="nationality" class="form-select">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($nationality as $row)
                                        @if ($type == "edit")
                                        <option value="{{$row->id}}" {{ $ers2->nationality == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @else
                                        <option value="{{$row->id}}">{{$row->name_th}}</option>
                                        @endif
                                        @endforeach

                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="religion" class="form-label">ศาสนา: </label>
                                    <select name="religion" class="form-select">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($religion as $row)
                                        @if ($type == "edit")
                                        <option value="{{$row->id}}" {{ $ers2->religion == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @else
                                        <option value="{{$row->id}}">{{$row->name_th}}</option>
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="old" class="form-label">อายุ(ปี): </label>
                                    <input type="text" class="form-control" autocomplete="off" onkeypress="return isNumberKey(event)" name="old" value="{{ $type == 'edit' ? $old : "" }}">
                                    <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="address" class="form-label">อยู่บ้านเลขที่: </label>
                                    <textarea class="form-control" name="address" autocomplete="off" placeholder="" style="height: 60px">{{ $type == 'edit' ? $address : "" }} @if ($type == "add"){{old('address')}} @endif</textarea>
                                    <br>
                                </div>
                                <div class="col-md-6">
                                    <label for="street" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="street" value="{{ $type == 'edit' ? $street : "" }}">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label style="color:red">*</label>
                                    <label for="provinceid" class="form-label">จังหวัด: </label>
                                    <select name="provinceid" class="form-select province2">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($province2 as $row)
                                        @if ($type == "edit")
                                        <option value="{{$row->id}}" {{ $ers2->provinceid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @else
                                        <option value="{{$row->id}}">{{$row->name_th}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                    @error('provinceid')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="districtid" class="form-label">เขต/อำเภอ: </label>
                                    <select name="districtid" class="form-select district2">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($district2 as $row)
                                        @if ($type == "edit")
                                        @if ($ers2->districtid)
                                        <option value="{{$row->id}}" {{ $ers2->districtid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="sub_districtid" class="form-label">แขวง/ตำบล: </label>
                                    <select name="sub_districtid" class="form-select subdistrictid2">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($sub_district2 as $row)
                                        @if ($type == "edit")
                                        @if ($ers2->sub_districtid)
                                        <option value="{{$row->id}}" {{ $ers2->sub_districtid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="posecode" class="form-label">รหัสไปรษณีย์: </label>
                                    <input type="text" class="form-control" autocomplete="off" onkeypress="return isNumberKey(event)" name="posecode" value="{{ $type == 'edit' ? $posecode : "" }}">
                                    <!-- @error('provinceid')
                        <span class="text-danger">{{$message}}</span>
                        @enderror -->
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <hr>
                            <div class="row">
                                <center>
                                    <label for="" class="form-label">ส่วนลงนาม </label>
                                    <br>
                                </center>
                                <div class="col-md-6 offset-md-4">
                                    <div class="row g-1 align-items-center">
                                        <label for="guarantee_by" class="col-form-label">ชื่อ-นามสกุลผู้ลงนาม:</label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" autocomplete="off" aria-describedby="passwordHelpInline" name="guarantee_by" value="{{ $type == 'edit' ? $guarantee_by : "" }}">
                                        </div>
                                        <label for="guarantee_position" class="col-form-label">ตำแหน่ง:</label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" autocomplete="off" aria-describedby="passwordHelpInline" name="guarantee_position" value="{{ $type == 'edit' ? $guarantee_position : "" }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="doc_status" class="form-label">สถานะ: </label><br>
                                    @if ($type == "edit")
                                    @if ($ers2->doc_status == 1)
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="1" checked>
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="2">
                                        <label class="form-check-label">ปิด</label>
                                    </div>
                                    @elseif ($ers2->doc_status == 2)
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="1">
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="2" checked>
                                        <label class="form-check-label">ปิด</label>
                                    </div>

                                    @else
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="1" checked>
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="2">
                                        <label class="form-check-label">ปิด</label>
                                    </div>
                                    @endif

                                    @else
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="1" checked>
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="doc_status" id="doc_status" value="2">
                                        <label class="form-check-label">ปิด</label>
                                    </div>
                                    @endif

                                    <br>
                                </div>
                            </div>
                        </div>
                        <hr>
                        @endif
                        <center>
                            <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;"><i class="fa fa-floppy-o"></i> บันทึก</button>
                            <!-- <button type="submit" name="submit" class="btn" style="background: #db681d; color:white;"><i class="fa fa-pencil-square-o"></i> แก้ไข</button> -->
                            @if($type == "edit")
                            <button type="submit" name="submit" class="btn" style="background: #007bff; color:white;"><i class="fa fa-print"></i> พิมพ์</button>
                            @endif
                            <a href="{{route('searchbig_org')}}" class="btn btn-secondary text-normal">
                                <label class="txtv3 p-0 m-0"><i class="fa fa-times" aria-hidden="true" style="color: white;"></i> ปิด</label>
                            </a>
                        </center>
                        <br>
                    </div>
                    <!-- floating Button -->
                    <div class="adminActions">
                        <input type="checkbox" name="adminToggle" class="adminToggle" />
                        <a class="adminButton" href="#!"><i class="fa fa-plus"></i></a>
                        <div class="adminButtons">
                            <a href="{{route('searchbig_org')}}" title="กลับไปยังหน้าก่อนหน้านี้"><i class="fa fa-times"></i></a>
                            <a href="#" title="พิมพ์"><i class="fa fa-print"></i></a>
                            <button type="submit" title="บันทึกข้อมูล" class="btn btnfloat"><i class="fa fa-floppy-o"></i></button>
                        </div>
                    </div>
                    <!-- floating Button -->
                </div>
            </div>
        </form>
</div>
{{csrf_field()}}
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

@if( Session::has('success'))
<script type="text/javascript">
    $(document).ready(function() {
        $('#alert').modal('show');
    });
</script>
@elseif (count($errors) > 0)
@foreach ($errors->all() as $error)
<script>
    $(document).ready(function() {
        $('#alert').modal('show');
    });
</script>
@endforeach
@endif

<script>
    // แผนงานระยะยาวขององค์การ
    function longdata(link) {

        // validate  แผนงานระยะยาวขององค์การ

        var element1 = document.getElementById("plan_type").value;
        // var element2 = document.getElementById("plan_detail").value;

        if (element1 != "") {
            var test1 = document.getElementById("lblCheck").value;
            lblCheck.classList.add("d-none");
        } else {
            var test1 = document.getElementById("lblCheck").value;
            lblCheck.classList.remove("d-none");
        }

        var element2 = document.getElementById("plan_detail").value;
        if (element2 != "") {
            var test1 = document.getElementById("lblCheck2").value;
            lblCheck2.classList.add("d-none");
        } else {
            var test1 = document.getElementById("lblCheck2").value;
            lblCheck2.classList.remove("d-none");
        }
        // validate  แผนงานระยะยาวขององค์การ


        var var1 = document.getElementById("plan_type").value;
        var var2 = document.getElementById("plan_detail").value;
        var var3 = document.getElementById("longid").value;
        //   alert(var3);
        $.ajax({
            url: "{{route('setting.longtermplan')}}",
            method: "post",
            data: {
                plan_type: var1,
                _token: '{!! csrf_token() !!}',
                plan_detail: var2,
                _token: '{!! csrf_token() !!}',
                longid: var3,
                _token: '{!! csrf_token() !!}'
            },
            success: function(result) {
                // alert("เพิ่มแผนงานระยะยาวขององค์การเรียบร้อย");
                location.reload();
            }
        });
    }


    // วัตถุประสงค์ของแผนงานหรือโครงการ
    function objdata(link) {


        // validate  วัตถุประสงค์ของแผนงานหรือโครงการ

        var element1 = document.getElementById("objective").value;

        if (element1 != "") {
            var test1 = document.getElementById("Check3_2").value;
            Check3_2.classList.add("d-none");
        } else {
            var test1 = document.getElementById("Check3_2").value;
            Check3_2.classList.remove("d-none");
        }

        // validate  วัตถุประสงค์ของแผนงานหรือโครงการ

        var var1 = document.getElementById("objective").value;
        var var2 = document.getElementById("objid").value;
        //   alert(var3);
        $.ajax({
            url: "{{route('setting.objective')}}",
            method: "get",
            data: {
                objective: var1,
                _token: '{!! csrf_token() !!}',
                objid: var2,
                _token: '{!! csrf_token() !!}'
            },
            success: function(result) {
                // alert("เพิ่มวัตถุประสงค์ของแผนงานหรือโครงการเรียบร้อย");
                location.reload();
            }
        });
    }

    // แนวการดำเนินของแผนงานหรือโครงการ
    function actdata(link) {


        // validate  แนวการดำเนินของแผนงานหรือโครงการ

        var element1 = document.getElementById("action").value;

        if (element1 != "") {
            var test1 = document.getElementById("Check3_3").value;
            Check3_3.classList.add("d-none");
        } else {
            var test1 = document.getElementById("Check3_3").value;
            Check3_3.classList.remove("d-none");
        }
        // validate  แนวการดำเนินของแผนงานหรือโครงการ

        var var1 = document.getElementById("action").value;
        var var2 = document.getElementById("actid").value;
        //   alert(var3);
        $.ajax({
            url: "{{route('setting.action')}}",
            method: "get",
            data: {
                action: var1,
                _token: '{!! csrf_token() !!}',
                actid: var2,
                _token: '{!! csrf_token() !!}'
            },
            success: function(result) {
                // alert("เพิ่มแนวการดำเนินของแผนงานหรือโครงการเรียบร้อย");
                location.reload();
            }
        });
    }

    // เงินทุนและที่มาของรายได้
    function incdata(link) {

        // validate เงินทุนและที่มาของรายได้

        var element1 = document.getElementById("incomesource").value;

        if (element1 != "") {
            var test1 = document.getElementById("Check3_5").value;
            Check3_5.classList.add("d-none");
        } else {
            var test1 = document.getElementById("Check3_5").value;
            Check3_5.classList.remove("d-none");
        }
        // validate เงินทุนและที่มาของรายได้     

        var var1 = document.getElementById("incomesource").value;
        var var2 = document.getElementById("incid").value;
        //   alert(var3);
        $.ajax({
            url: "{{route('setting.income_source')}}",
            method: "get",
            data: {
                incomesource: var1,
                _token: '{!! csrf_token() !!}',
                incid: var2,
                _token: '{!! csrf_token() !!}'
            },
            success: function(result) {
                // alert("เพิ่มเงินทุนและที่มาของรายได้เรียบร้อย");
                location.reload();
            }
        });
    }
</script>

<!-- จำกัดใส่ได้แค่ตัวเลข -->
<script>
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode != 46 && charCode > 31 &&
            (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
</script>
<!-- จำกัดใส่ได้แค่ตัวเลข -->

@endsection
