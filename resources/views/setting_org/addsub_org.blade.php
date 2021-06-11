@extends('layouts.master')
@section('content')

<div class="container">
    <!-- <div class="row mb-2">
            <div class="col-6">
                <label class="text-header"><i style="color:#DB681D" class="fa fa-newspaper-o pr-1" aria-hidden="true"></i>&nbsp;แบบอก.2
                </label>
            </div>
        </div> -->
    <!-- <hr> -->

  
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
                    <button type="button" class="btn btn-secondary"  data-bs-dismiss="modal"><i class="fa fa-times pr-2" aria-hidden="true"></i>ปิด</button>
                </div>
            </div>
        </div>
    </div>




    @if($type == "add")
    <form method="post" action="{{url('/settingorgform_page/storesub')}}">
        @else
        <form action="{{ route('org_form.updatesub', [ '_token' => csrf_token(),'editid'=>$id]) }}" method="POST" enctype="multipart/form-data">
            @endif
            @csrf
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="header p-1">
                            <label class="text-normal font-weight-normal pl-2">
                                <b>องค์การทางศาสนา (องค์การย่อย)</b>
                            </label>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <input type="hidden" class="form-control" value="" name="id">
                                <div class="col-md-12">
                                    &nbsp; &nbsp; <div class="row g-3 align-items-center">
                                        <div class="col-auto">
                                            <label for="main_orgid" class="col-form-label">ชื่อองค์การใหญ่:</label>
                                        </div>
                                        <div class="col-md-10">
                                            <select name="main_orgid" class="form-select">
                                                <option value="0" selected>== กรุณาเลือก ==</option>
                                                @foreach ($ers2 as $row)



                                                @if ($type == "edit")

                                                @if ($suborg->main_orgid)
                                                <option value="{{$row->id}}" {{ $suborg->main_orgid == $row->id ? 'selected' : '' }}>{{$row->mainorg_th}}</option>
                                                @endif

                                                @else
                                                <option value="{{$row->id}}">{{$row->mainorg_th}}</option>
                                                @endif
                                                @endforeach
                                            </select>
                                            @error('main_orgid')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                        </div>
                                    </div><br>
                                </div>
                                <div class="col-md-6">
                                    <label style="color:red">*</label>
                                    <label for="name_th">ชื่อองค์การทางศาสนา (ไทย):</label></label>
                                    <input type="text" autocomplete="off" class="form-control" name="name_th" value="{{ $type == 'edit' ? $name_th : "" }}  @if ($type == "add"){{old('name_th')}} @endif">
                                    @error('name_th')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                                <div class="col-md-6">
                                    <label style="color:red">*</label>
                                    <label for="name_en">ชื่อองค์การทางศาสนา (อังกฤษ):</label></label>
                                    <input type="text" autocomplete="off" class="form-control" name="name_en" value="{{ $type == 'edit' ? $name_en : "" }} @if ($type == "add"){{old('name_en')}} @endif">
                                    @error('name_en')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="address" class="form-label">ที่อยู่: </label>
                                    <textarea class="form-control" name="address" autocomplete="off" placeholder="" 
                                    style="height: 60px">{{ $type == 'edit' ? $address : "" }} @if ($type == "add"){{old('address')}} @endif</textarea>
                                    <br>
                                </div>
                                <div class="col-md-6">
                                    <label for="street" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="street" value="{{ $type == 'edit' ? $street : "" }} @if ($type == "add"){{old('street')}} @endif">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label style="color:red">*</label>
                                    <label for="provinceid" class="form-label">จังหวัด: </label>
                                    <select name="provinceid" class="form-select province">
                                        <option value="0" selected>== กรุณาเลือก ==</option>

                                        @foreach ($province as $row)
                                        @if ($type == "edit")

                                        @if ($suborg->provinceid)
                                        <option value="{{$row->id}}" {{ $suborg->provinceid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif

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
                                    <select name="districtid" class="form-select district">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($district as $row)
                                        @if ($type == "edit")

                                        @if ($suborg->districtid)
                                        <option value="{{$row->id}}" {{ $suborg->districtid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="sub_districtid" class="form-label">แขวง/ตำบล: </label>
                                    <select name="sub_districtid" class="form-select subdistrictid">
                                        <option value="0" selected>== กรุณาเลือก ==</option>
                                        @foreach ($sub_district as $row)
                                        @if ($type == "edit")

                                        @if ($suborg->sub_districtid)
                                        <option value="{{$row->id}}" {{ $suborg->sub_districtid == $row->id ? 'selected' : '' }}>{{$row->name_th}}</option>
                                        @endif
                                        @endif
                                        @endforeach
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="zip_code" class="form-label">รหัสไปรษณีย์: </label>
                                    <input type="text" autocomplete="off" class="form-control" onkeypress="return isNumberKey(event)" name="zip_code" value="{{ $type == 'edit' ? $zip_code : "" }} @if ($type == "add"){{old('zip_code')}} @endif">
                                    <!-- @error('zip_code')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror -->
                                    <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="phone_number" class="form-label">เบอร์โทรศัพท์: </label>
                                    <input type="text" autocomplete="off" class="form-control" name="phone_number" onkeypress="return isNumberKey(event)" value="{{ $type == 'edit' ? $phone_number : "" }} @if ($type == "add"){{old('phone_number')}} @endif">
                                    <!-- @error('phone_number')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror -->
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="email" class="form-label">อีเมล: </label>
                                    <input type="email" autocomplete="off" class="form-control" name="email" value="{{ $type == 'edit' ? $email : "" }} @if ($type == "add"){{old('email')}} @endif">
                                    <br>
                                </div>
                            </div>
                            <hr>
                               <div class="row">
                               <div class="col-md-3">
                                    <label for="ievangelist_number_limit" class="form-label">จำนวนผู้เผยแพร่ศาสนา: </label>
                                    <input type="text" class="form-control" autocomplete="off" name="ievangelist_number_limit" onkeypress="return isNumberKey(event)" value="{{ $type == 'edit' ? $ievangelist_number_limit : "" }} @if ($type == "add"){{old('ievangelist_number_limit')}} @endif">
                                    @error('ievangelist_number_limit')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                    <br>
                                </div>
                               </div>
                               <hr>
                               <div class="row">
                               <div class="col-md-3">
                                    <label for="is_active" class="form-label">สถานะ: </label><br>
                                    @if ($type == "edit")
                                    @if ($suborg->is_active == 1)
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="1" checked>
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="2">
                                        <label class="form-check-label">ปิด</label>
                                    </div>
                                    @elseif ($suborg->is_active == 2)
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="1">
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="2" checked>
                                        <label class="form-check-label">ปิด</label>
                                    </div>

                                    @else
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="1" checked>
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="2">
                                        <label class="form-check-label">ปิด</label>
                                    </div>
                                    @endif

                                    @else
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="1" checked>
                                        <label class="form-check-label">เปิด</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="is_active" id="is_active" value="2">
                                        <label class="form-check-label">ปิด</label>
                                    </div>
                                    @endif
                                    <br>
                                </div>
                               </div>
                        </div>
                        <hr>
                        <div class="row mb-2">
                            <center>
                                <button type="submit" class="btn" style="background: #20a2aa; color:white;"><i class="fa fa-floppy-o"></i> บันทึก</button>
                                <a href="{{route('searchsub_org')}}" class="btn btn-secondary text-normal">
                                    <label class="txtv3 p-0 m-0"><i class="fa fa-times" aria-hidden="true" style="color: white;"></i> ปิด</label>
                                </a>
                            </center>
                        </div><br>
                    </div>
                </div>
            </div>
</div>
</form>

{{csrf_field()}}
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<!-- Show modal -->
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
<!-- Show modal -->

<script>
    // จังหวัด อำเภอ
    $('.province').change(function() {
        if ($(this).val() != '') {
            var select = $(this).val();
            var _token = $('input[name="_token"]').val();
            $.ajax({
                url: "{{route('sub.fetchsub')}}",
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
                url: "{{route('sub.fetchsub2')}}",
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
