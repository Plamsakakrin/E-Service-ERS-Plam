@extends('layouts.master')
@section('content')
    <div class="container">
        <div class="row mb-2">
            <div class="col-6">
                <label class="text-header"><i style="color:#DB681D" class="fa fa-newspaper-o pr-1" aria-hidden="true"></i>&nbsp;แบบอก.3
                </label>
            </div>
            <div style="text-align: end;">
                <a href="{{route('edit')}}" class="btn btn-link"> แบบ อก.1 </a>
                <a href="{{route('orgform2')}}" class="btn btn-link"> แบบ อก.2 </a>
                <a href="{{route('orgform4')}}" class="btn btn-link"> แบบ อก.4 </a>
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
                                <b>แบบ อก.3</b>
                            </label>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <label class="form-label"> 1. </label>
                                <div class="col-md-3">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">คำนำหน้า: </label>
                                    <select name="" class="form-select" disabled="">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> นาง </option>
                                        <option value=""> นางสาว </option>
                                        <option value=""> นาย </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">ชื่อ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="มีรา วันสุข"><br>
                                </div>
                                <div class="col-md-3">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">นามสกุล: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="โซห์สเล่ย์"><br>
                                </div>
                                <div class="col-md-3">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">อายุ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="40"><br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">สังกัดองค์การย่อยชื่อ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="องค์การสหกิจคริสเตียนแห่งประเทศไทย">
                                </div>
                                <div class="col-md-6">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">สังกัดองค์การใหญ่ชื่อ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="องค์การสหกิจคริสเตียนแห่งประเทศไทย"><br>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <label class="form-label"> 2. </label>
                                <div class="col-md-4">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">สถานที่พักบ้านเลขที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                                <div class="col-md-4">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                                <div class="col-md-4">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">แขวง/ตำบล: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">เขต/อำเภอ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                                <div class="col-md-4">
                                    <!-- <label style="color:red">*</label> -->
                                    <label for="" class="form-label">จังหวัด: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <label class="form-label"> 3. </label>
                                <div class="col-md-12">
                                    <label for="" class="form-label">ได้เดินทางเข้ามาในประเทศครั้งสุดท้ายถึงวันที่: </label>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">วันที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="1"><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">เดือน: </label><br>
                                    <input type="text" class="form-control" name="" disabled="" value="ธันวาคม">
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">พ.ศ. </label>
                                    <input type="text" class="form-control" name="" disabled="" value="2562">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="" class="form-label">ได้รับอนุญาตให้ต่ออายุหนังสือเดินทางครั้งสุดท้ายวันที่: </label>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">วันที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="1"><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">เดือน: </label><br>
                                    <input type="text" class="form-control" name="" disabled="" value="ธันวาคม">
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">พ.ศ. </label>
                                    <input type="text" class="form-control" name="" disabled="" value="2562">
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ถึงวันที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value="31"><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">เดือน: </label><br>
                                    <input type="text" class="form-control" name="" disabled="" value="ธันวาคม">
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">พ.ศ. </label>
                                    <input type="text" class="form-control" name="" disabled="" value="2563">
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <label class="form-label"> 4. </label>
                                <div class="col-md-4">
                                    <label for="" class="form-label">ได้เข้าปฏิบัติงานในเขตพื้นที่: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ตำบล: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">อำเภอ: </label>
                                    <input type="text" class="form-control" name="" disabled="" value=""><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">จังหวัด: </label>
                                    <input type="text" class="form-control" name="" value="กรุงเทพมหานคร" disabled=""><br>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <label for="" class="form-label">5. </label>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ในรอบ 4 เดือนที่: </label>
                                    <input type="text" class="form-control" name="" value=""><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ตั้งแต่เดือน: </label>
                                    <input type="text" class="form-control" name="" value=""><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ปี พ.ศ. : </label>
                                    <input type="text" class="form-control" name="" value=""><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ถึงเดือน: </label>
                                    <input type="text" class="form-control" name="" value=""><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">ปี พ.ศ. : </label>
                                    <input type="text" class="form-control" name="" value=""><br>
                                </div>
                                <div class="col-md-12">
                                    <label for="" class="form-label">นับตั้งแต่ได้เข้ามาปฏิบัติงานในประเทศไทยได้ปฏิบัติงานไปแล้ว ดังนี้: </label>
                                    <textarea class="form-control" placeholder="" style="height: 130px"></textarea>
                                    <br>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <center>
                                    <label for="" class="form-label">ส่วนลงนาม </label>
                                </center>
                                <div class="col-md-6">
                                    <!-- <div class="col-md-12">
                                        <label for="" class="form-label">ลงนาม </label>
                                        <br>
                                    </div> -->
                                    <div class="col-md-6 offset-md-3">
                                        <div class="row g-3 align-items-center">


                                            <label for="" class="col-form-label">ชื่อ-นามสกุลผู้ลงนาม:</label>

                                            <div class="col-md-11">
                                                <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="นาย มาโนช แจ้งมุข">
                                            </div>

                                            <label for="" class="col-form-label">ตำแหน่ง:</label>

                                            <div class="col-md-12">
                                                <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="หัวหน้า/ประธานองค์การทางศาสนา">
                                            </div>
                                            <label for="" class="col-form-label">วันที่:</label>

                                            <div class="col-md-11">
                                                <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="">
                                            </div>

                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-6 offset-md-3">
                                        <div class="row g-3 align-items-center">


                                            <label for="" class="col-form-label">ชื่อ-นามสกุลผู้ลงนาม:</label>

                                            <div class="col-md-11">
                                                <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="นาง มีรา วันสุข โซห์สเล่ย์">
                                            </div>

                                            <label for="" class="col-form-label">ตำแหน่ง:</label>

                                            <div class="col-md-12">
                                                <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="ผู้เผยแพร่ศาสนา">
                                            </div>
                                            <label for="" class="col-form-label">วันที่:</label>

                                            <div class="col-md-11">
                                                <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="">
                                            </div>

                                        </div>
                                    </div><br>
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