@extends('layouts.master')
@section('content')
    <div class="container">
        <div class="row mb-2">
            <div class="col-6">
                <label class="text-header"><i style="color:#DB681D" class="fa fa-newspaper-o pr-1" aria-hidden="true"></i>&nbsp;แบบอก.4
                </label>
            </div>
            <div style="text-align: end;">
                <a href="{{route('edit')}}" class="btn btn-link"> แบบ อก.1 </a>
                <a href="{{route('orgform2')}}" class="btn btn-link"> แบบ อก.2 </a>
                <a href="{{route('orgform3')}}" class="btn btn-link"> แบบ อก.3 </a>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col align-self-start">
                <label for="">เลขที่แบบอก.1: 64-05-0005</label>
            </div>
            <div class="col-auto">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label for="" class="col-form-label">วันที่ยื่นเอกสาร:</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="14/5/2564">
                    </div>
                </div>
            </div>
        </div><br>
        <div class="row">
            <div class="col align-self-start">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label for="" class="col-form-label">ลำดับที่:</label>
                    </div>
                    <div class="col-auto">
                        <select name="" class="form-select">
                            <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                            <option value=""> 1 </option>
                            <option value=""> 2 </option>
                            <option value=""> 3 </option>
                            <option value=""> 4 </option>
                            <option value=""> 5 </option>
                        </select>
                    </div>
                    <div class="col-auto">
                        <a href="#" class="btn btn-link">ตรวจสอบบัญชีรายชื่อผู้เผยแพร่</a>
                    </div>
                </div>
            </div>
        </div><br>

        <form action="">
            <div class="row">
                <div class="col-12">
                    <div class="card">

                        <div class="header p-1">
                            <label class="text-normal font-weight-normal pl-2">
                                <b>แบบ อก.4</b>
                            </label>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <!-- <label class="form-label"> ข้าพเจ้า </label> -->
                                <div class="col-md-3">
                                    <label for="" class="form-label">ข้าพเจ้า: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <!-- <option value=""> นาง </option>
                                        <option value=""> นางสาว </option> -->
                                        <option value=""> นาย </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ชื่อ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="มาโนช">
                                </div><br>
                                <div class="col-md-3">
                                    <label for="" class="form-label">นามสกุล: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="แจ้งมุข">
                                </div><br>
                                <div class="col-md-3">
                                    <label for="" class="form-label">อายุ(ปี): </label>
                                    <input type="text" class="form-control" name="" disabled="" value="62">
                                </div><br>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="" class="form-label">อยู่บ้านเลขที่: </label>
                                    <textarea class="form-control" placeholder="" disabled="" style="height: 130px">อยู่บ้านเลขที่ 203/1 ซอย ศึกษาวิทยา   แขวง/ตำบล สีลม   เขต/อำเภอ บางรัก   จังหวัด กรุงเทพมหานคร</textarea>
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" disabled="" name="" value="">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">แขวง/ตำบล: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> สีลม </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">เขต/อำเภอ: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> บางรัก </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">จังหวัด: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> กรุงเทพมหานคร </option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="" class="form-label">เป็นหัวหน้า/ประธานองค์ศาสนาชื่อ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="องค์การสหกิจคริสเตียนแห่งประเทศไทย">
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="" class="form-label">ตั้งอยู่เลขที่: </label>
                                    <textarea class="form-control" placeholder="" disabled="" style="height: 130px">54 ซอย รามคำแหง 22</textarea>
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" disabled="" name="" value="">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">แขวง/ตำบล: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> หัวหมาก </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">เขต/อำเภอ: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> บางกะปิ </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">จังหวัด: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> กรุงเทพมหานคร </option>
                                    </select><br>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <label for="" class="form-lable">1. ข้าพเจ้าขอรับรองว่า</label>
                                <div class="col-md-3">
                                    <label for="" class="form-label">คำนำหน้า: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> นาง </option>
                                        <!-- <option value=""> นางสาว </option>
                                        <option value=""> นาย </option> -->
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ชื่อ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="มีรา วันสุข">
                                </div><br>
                                <div class="col-md-3">
                                    <label for="" class="form-label">นามสกุล: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="โซห์สเล่ย์">
                                </div><br>
                                <div class="col-md-3">
                                    <label for="" class="form-label">เชื้อชาติ: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> อินเดีย </option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="" class="form-label">สัญชาติ: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> อินเดีย </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">หนังสือเดินทางเลขที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="">
                                </div><br>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ออกให้ที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="">
                                </div><br>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="" class="form-label">เมื่อวันที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="">
                                </div><br>
                                <div class="col-md-3">
                                    <label for="" class="form-label">เดือน: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="">
                                </div><br>
                                <div class="col-md-3">
                                    <label for="" class="form-label">พ.ศ. : </label>
                                    <input type="text" class="form-control" name="" disabled="" value="">
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="" class="form-label">ปัจจุบันอยู่บ้านเลขที่: </label>
                                    <textarea class="form-control" placeholder="" disabled="" style="height: 130px"></textarea>
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" disabled="" name="" value="">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">แขวง/ตำบล: </label>
                                    <select name="" class="form-select" disabled="">
                                        <option value="" selected>== กรุณาเลือก ==</option>
                                        <!-- <option value=""> หัวหมาก </option> -->
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">เขต/อำเภอ: </label>
                                    <select name="" class="form-select" disabled="">
                                        <option value="" selected>== กรุณาเลือก ==</option>
                                        <!-- <option value=""> บางกะปิ </option> -->
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">จังหวัด: </label>
                                    <select name="" class="form-select" disabled="">
                                        <option value="" selected>== กรุณาเลือก ==</option>
                                        <!-- <option value=""> กรุงเทพมหานคร </option> -->
                                    </select><br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="" class="form-label">เป็นผู้เผยแพร่ศาสนาองค์การ: </label>
                                    <input type="text" class="form-control" disabled="" name="" value="">
                                    <br>
                                </div>
                                <div class="col-md-6">
                                    <label for="" class="form-label">สังกัดองค์การ: </label>
                                    <input type="text" class="form-control" disabled="" name="" value="">
                                    <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="" class="form-label">มีสำนักงานตั้งอยู่ที่: </label>
                                    <textarea class="form-control" placeholder="" disabled="" style="height: 130px"></textarea>
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" disabled="" name="" value="">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">แขวง/ตำบล: </label>
                                    <select name="" class="form-select" disabled="">
                                        <option value="" selected>== กรุณาเลือก ==</option>
                                        <!-- <option value=""> หัวหมาก </option> -->
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">เขต/อำเภอ: </label>
                                    <select name="" class="form-select" disabled="">
                                        <option value="" selected>== กรุณาเลือก ==</option>
                                        <!-- <option value=""> บางกะปิ </option> -->
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">จังหวัด (จริง): </label>
                                    <select name="" class="form-select" disabled="">
                                        <option value="" selected>== กรุณาเลือก ==</option>
                                        <!-- <option value=""> กรุงเทพมหานคร </option> -->
                                    </select><br>
                                </div>
                            </div>
                            <hr>
                            <form action="">
                                <div class="row">
                                    <label for="" class="form-label">2. ให้ผู้แพร่ศานานี้มีสิทธิที่จะทำการเผยแพร่ศาสนาในเขตพื้นที่ต่างๆ ดังนี้</label>
                                    <div class="col-md-3">
                                        <label for="" class="form-label">เขตพื้นที่แขวง/ตำบล: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="" class="form-label">เขต/อำเภอ: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="" class="form-label">จังหวัด: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <!-- <div class="col-1">
                                            <label for="" class="form-label" type="hidden"></label>
                                        </div> -->
                                    <div class="col-auto">
                                        <br>
                                        <center>
                                            <button type="submit" name="submit" class="btn btn-success" style="margin-top:7px;">
                                                <i class="fas fa-plus"></i> เพิ่ม</button>
                                        </center>
                                    </div>
                                </div>
                            </form>
                            <table class="table table" width="100%" style="text-align: center;">
                                <thead>
                                    <tr style="background: #ff7b26e6; color:white;">
                                        <th>ลำดับ</th>
                                        <th>เขตพื้นที่แขวง/ตำบล</th>
                                        <th>เขต/อำเภอ</th>
                                        <th>จังหวัด</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- <tr id="orangi"> -->
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>1</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                            <div class="row">
                                <label for="" class="form-label">3. ในการเข้ามาเผยแพร่ศาสนาในประเทศไทยของผู้เผยแพร่ศาสนาผู้นี้ ได้นำครอบครัวประกอบด้วยภรรยาและบุตรติดตาม ดังมีรายชื่อต่อไปนี้</label>
                                <div class="col-md-4">
                                    <label for="" class="form-label">ชื่อ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="ทดสอบ">
                                    <br>
                                </div>
                                <div class="col-md-4">
                                    <label for="" class="form-label">นามสกุล: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="ทดสอบ">
                                    <br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">อายุ (ปี): </label>
                                    <input type="text" class="form-control" name="" disabled="" value="5">
                                    <br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ความสัมพันธ์: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="บุตร">
                                    <br>
                                </div>
                            </div>
                            <hr>

                            <div class="row">
                                <center>
                                    <label for="" class="form-label">ส่วนลงนาม </label>
                                    <br>
                                </center>
                                <div class="col-md-6 offset-md-4">
                                    <div class="row g-3 align-items-center">


                                        <label for="" class="col-form-label">ชื่อ-นามสกุลผู้ลงนาม:</label>

                                        <div class="col-md-8">
                                            <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="นาย มาโนช แจ้งมุข">
                                        </div>

                                        <label for="" class="col-form-label">ตำแหน่ง:</label>

                                        <div class="col-md-8">
                                            <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="หัวหน้า/ประธานองค์การทางศาสนา">
                                        </div>
                                    </div>
                                </div>

                            </div>


                        </div>
                        <hr>
                        <center>
                            <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;"><i class="fa fa-floppy-o"></i> บันทึก</button>
                            <button type="submit" name="submit" class="btn" style="background: #db681d; color:white;"><i class="fa fa-share-square"></i> ยืนยัน</button>
                            <button type="submit" name="submit" class="btn" style="background: #007bff; color:white;"><i class="fa fa-print"></i> พิมพ์</button>
                            <a href="{{route('homeorg')}}" class="btn btn-secondary text-normal">
                                <label class="txtv3 p-0 m-0"><i class="fa fa-times" aria-hidden="true" style="color: white;"></i> ปิด</label>
                            </a>
                        </center>
                        <br>
                    </div>
                </div>
            </div>
        </form>


    </div>
@endsection