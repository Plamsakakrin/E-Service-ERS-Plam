@extends('layouts.master')
@section('content')
    <div class="container">
        <div class="row mb-2">
            <div class="col-6">
                <label class="text-header"><i style="color:#DB681D" class="fa fa-newspaper-o pr-1" aria-hidden="true"></i>&nbsp;แบบอก.2
                </label>
            </div>
            <div style="text-align: end;">
                <a href="{{route('edit')}}" class="btn btn-link"> แบบ อก.1 </a>
                <a href="{{route('orgform3')}}" class="btn btn-link"> แบบ อก.3 </a>
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
                                <b>แบบ อก.2</b>
                            </label>
                        </div>
                        <div class="card-body">


                            <div class="row">
                                <label class="form-label"> 1 </label>
                                <div class="col-md-8">
                                    <label for="" class="form-label">ประวัติองค์การศาสนา และความสัมพันธ์กับองค์การทางศาสนาในต่างประเทศ: </label>
                                    <input type="text" class="form-control" name="" value="องค์การสหกิจคริสเตียนแห่งประเทศไทย"><br>
                                </div>
                                <div class="col-md-4">
                                    <label for="" class="form-label">ซึ่งสังกัดอยู่ใน: </label>
                                    <input type="text" class="form-control" name="" value=""><br>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="" class="form-label">ทำงานด้านการสอนศาสนาคริสต์ศาสนา: </label>
                                        <input type="text" class="form-control" name="" value=""><br>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="" class="form-label">นิกาย: </label>
                                        <input type="text" class="form-control" name="" value="โปรเตสแตนท์"><br>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="" class="form-label">โดยสำนักงานตั้งอยู่เลขที่: </label>
                                        <textarea class="form-control" placeholder="" style="height: 130px">54 ซอยรามคำแหง 22</textarea>
                                        <br>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="" class="form-label">ถนน: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <div class="col-md-2">
                                        <label for="" class="form-label">แขวง/ตำบล: </label>
                                        <select name="" class="form-select">
                                            <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                            <option value=""> หัวหมาก </option>
                                        </select><br>
                                    </div>
                                    <div class="col-md-2">
                                        <label for="" class="form-label">เขต/อำเภอ: </label>
                                        <select name="" class="form-select">
                                            <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                            <option value=""> บางกะปิ </option>
                                        </select><br>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="" class="form-label">จังหวัด: </label>
                                        <select name="" class="form-select">
                                            <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                            <option value=""> กรุงเทพมหานคร </option>
                                        </select><br>
                                    </div>
                                    <div class="col-md-2">
                                        <label for="" class="form-label">รหัสไปรษณีย์: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <label class="form-label">2. จำนวนศาสนิก และจำนวนผู้เผยแพร่</label>
                                <div class="row">
                                    &nbsp; &nbsp; <div class="row g-3 align-items-center">
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">2.1 จำนวนศาสนิกชนในประเทศไทย รวมทั้งสิ้น:</label>
                                        </div>
                                        <div class="col-auto">
                                            <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="55,000">
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    &nbsp; &nbsp; <div class="row g-3 align-items-center">
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">แยกเป็นชาย:</label>
                                        </div>
                                        <div class="col-auto">
                                            <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="35,000">
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">แยกเป็นหญิง:</label>
                                        </div>
                                        <div class="col-auto">
                                            <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="25,000">
                                        </div>
                                        <div class="col-auto">
                                            <label for="" class="col-form-label">คน</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">2.2 จำนวนผู้เผยแพร่ศาสนาที่ต้องการให้มาดำเนินงานในประเทศไทย:</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="26">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">คน</label>
                                        <label for="" class="col-form-label">แยกประเภท ดังนี้:</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">1. ผู้เผยแพร่ศาสนาและอบรมศีลธรรม:</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="26">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">คน</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp; <div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">2. แพทย์:</label>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="" class="col-form-label">คน</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">3. พยาบาล:</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">คน</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">4. อื่นๆ (ระบุ):</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">คน</label>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">2.3 ปัจจุบันผู้เผยแพร่ศาสนาที่องค์การขอให้กรมการศาสนาออกใบรับรอง เพื่อต่อวีซ่าเป็นบุคคลลำดับที่:</label>
                                    </div>
                                    <div class="col-md-1">
                                        <input type="text" class="form-control" aria-describedby="passwordHelpInline" disabled="" value="1">
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <form action="">
                                <div class="row">
                                    <label for="" class="form-label"> 3. แผนงานระยะยางขององค์การ</label>
                                    <div class="col-md-12">
                                        &nbsp; &nbsp;<label for="" class="form-label">3.1 องค์การมีแผนงานระยะยาวที่จะดำเนินงานในประเทศ คือ (ระบุชื่อโครงการหรืองานที่จะดำเนินการในประเทศไทย): </label>
                                        <br>
                                    </div>
                                    &nbsp; &nbsp;<div class="col-md-3">
                                        <label for="" class="form-label">ประเภท: </label>
                                        <select name="" class="form-select">
                                            <option value="" selected>== กรุณาเลือก ==</option>
                                            <option value=""> งาน </option>
                                            <option value=""> โครงการ </option>
                                        </select><br>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="" class="form-label">แผนงาน: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <!-- <div class="col-1">
                                            <label for="" class="form-label" type="hidden"></label>
                                        </div> -->
                                    <div class="col-auto">
                                        <br>
                                        <center>
                                            <button type="submit" name="submit" class="btn btn-success" style="margin-top:5px;">
                                                <i class="fas fa-plus"></i> เพิ่ม</button>
                                        </center>

                                    </div>
                                </div>
                                <!-- <center>
                                        <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;">
                                            <i class="fas fa-plus"></i>เพิ่ม</button>
                                    </center> -->
                            </form>
                            <br>
                            <table class="table table" width="100%" style="text-align: left;">
                                <thead>
                                    <tr style="background: #ff7b26e6; color:white;">
                                        <th>ลำดับ</th>
                                        <th>ประเภท</th>
                                        <th>แผนงาน</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- <tr id="orangi"> -->
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>1</td>
                                        <td>งาน</td>
                                        <td>ปฏิบัติงานเผยแพร่ศาสนา</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>

                                    </tr>
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>2</td>
                                        <td>งาน</td>
                                        <td>ส่งเสริมการฝึกอบรมและสอนศาสนาคริสต์ นิกายโปรเตสแตนท์</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>3</td>
                                        <td>งาน</td>
                                        <td>ส่งเสริมงานด้านวรรณกรรมคริสเตียน</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>4</td>
                                        <td>งาน</td>
                                        <td>ส่งเสริมความสามัคคีธรรมในหมู่พี่น้องคริสเตียน</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>5</td>
                                        <td>งาน</td>
                                        <td>เยี่ยมเยียนพพี่น้องคริสเตียน</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                            <form action="">
                                <div class="row">
                                    <div class="col-md-12">
                                        &nbsp; &nbsp;<label for="" class="form-label">3.2 วัตถุประสงค์ของแผนงานหรือโครงการ: </label>
                                        <br>
                                    </div>
                                    &nbsp; &nbsp; <div class="col-md-7">
                                        <label for="" class="form-label">วัตถุประสงค์ของแผนงานหรือโครงการ: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <!-- <div class="col-1">
                                            <label for="" class="form-label" type="hidden"></label>
                                        </div> -->
                                    <div class="col-auto">
                                        <br>
                                        <center>
                                            <button type="submit" name="submit" class="btn btn-success" style="margin-top:5px;">
                                                <i class="fas fa-plus"></i> เพิ่ม</button>
                                        </center>

                                    </div>
                                </div>
                                <!-- <center>
                                        <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;">
                                            <i class="fas fa-plus"></i>เพิ่ม</button>
                                    </center> -->
                            </form>
                            <br>
                            <table class="table table" width="100%" style="text-align: center;">
                                <thead>
                                    <tr style="background: #ff7b26e6; color:white;">
                                        <th>ลำดับ</th>
                                        <th>วัตถุประสงค์ของแผนงานหรือโครงการ</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- <tr id="orangi"> -->
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>1</td>
                                        <td>วัตถุประสงค์ 1</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>

                                    </tr>
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>2</td>
                                        <td>วัตถุประสงค์ 2</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                            <form action="">
                                <div class="row">
                                    <div class="col-md-12">
                                        &nbsp; &nbsp;<label for="" class="form-label">3.3 แนวการดำเนินของแผนงานหรือโครงการ: </label>
                                        <br>
                                    </div>
                                    &nbsp; &nbsp; <div class="col-md-7">
                                        <label for="" class="form-label">แนวการดำเนินของแผนงานหรือโครงการ: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <!-- <div class="col-1">
                                            <label for="" class="form-label" type="hidden"></label>
                                        </div> -->
                                    <div class="col-auto">
                                        <br>
                                        <center>
                                            <button type="submit" name="submit" class="btn btn-success" style="margin-top:5px;">
                                                <i class="fas fa-plus"></i> เพิ่ม</button>
                                        </center>

                                    </div>
                                </div>
                                <!-- <center>
                                        <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;">
                                            <i class="fas fa-plus"></i>เพิ่ม</button>
                                    </center> -->
                            </form>
                            <br>
                            <table class="table table" width="100%" style="text-align: center;">
                                <thead>
                                    <tr style="background: #ff7b26e6; color:white;">
                                        <th>ลำดับ</th>
                                        <th>แนวการดำเนินของแผนงานหรือโครงการ</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- <tr id="orangi"> -->
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>1</td>
                                        <td>แนวการดำเนิน 1</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>

                                    </tr>
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>2</td>
                                        <td>แนวการดำเนิน 2</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                            <div class="row">
                                &nbsp; &nbsp;<div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">3.4 ระยะเวลาดำเนินงานของแผนงานหรือโครงงาน:</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" class="form-control" aria-describedby="passwordHelpInline">
                                    </div>
                                    <div class="col-auto">
                                        <label for="" class="col-form-label">ปี</label>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <form action="">
                                <div class="row">
                                    <div class="col-md-12">
                                        &nbsp; &nbsp;<label for="" class="form-label">3.5 เงินทุนและที่มาของรายได้: </label>
                                        <br>
                                    </div>
                                    &nbsp; &nbsp; <div class="col-md-7">
                                        <label for="" class="form-label">เงินทุนและที่มาของรายได้: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <!-- <div class="col-1">
                                            <label for="" class="form-label" type="hidden"></label>
                                        </div> -->
                                    <div class="col-auto">
                                        <br>
                                        <center>
                                            <button type="submit" name="submit" class="btn btn-success" style="margin-top:5px;">
                                                <i class="fas fa-plus"></i> เพิ่ม</button>
                                        </center>

                                    </div>
                                </div>
                                <!-- <center>
                                        <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;">
                                            <i class="fas fa-plus"></i>เพิ่ม</button>
                                    </center> -->
                            </form>
                            <br>
                            <table class="table table" width="100%" style="text-align: center;">
                                <thead>
                                    <tr style="background: #ff7b26e6; color:white;">
                                        <th>ลำดับ</th>
                                        <th>เงินทุนและที่มาของรายได้</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- <tr id="orangi"> -->
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>1</td>
                                        <td>เงินทุนและที่มาของรายได้ 1</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>

                                    </tr>
                                    <tr style="background-color: #e9fbf2; color:black;">
                                        <td>2</td>
                                        <td>เงินทุนและที่มาของรายได้ 2</td>
                                        <td>
                                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o"></i></a>
                                            <a href="#"><i style="color: red;" class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <hr>
                        <div class="header p-1">
                            <label class="text-normal font-weight-normal pl-2">
                                <b>ข้อมูลหัวหน้า/ประธานองค์การศาสนา</b>
                            </label>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <label style="color:red">*</label>
                                    <label for="" class="form-label">คำนำหน้า: </label>
                                    <select name="" class="form-select">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <!-- <option value=""> นาง </option>
                                        <option value=""> นางสาว </option> -->
                                        <option value=""> นาย </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label style="color:red">*</label>
                                    <label for="" class="form-label">นาม: </label>
                                    <input type="text" class="form-control" name="" value="มาโนช">
                                </div><br>
                                <div class="col-md-3">
                                    <label style="color:red">*</label>
                                    <label for="" class="form-label">นามสกุล: </label>
                                    <input type="text" class="form-control" name="" value="แจ้งมุข">
                                    <br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">เชื้อชาติ: </label>
                                    <select name="" class="form-select">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> ไทย </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">สัญชาติ: </label>
                                    <select name="" class="form-select">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> ไทย </option>
                                    </select><br>
                                </div>
                                <div class="col-md-3">
                                    <label for="" class="form-label">ศาสนา: </label>
                                    <select name="" class="form-select">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> คริสต์ </option>
                                    </select><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">อายุ(ปี): </label>
                                    <input type="text" class="form-control" name="" value="62">
                                    <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="" class="form-label">อยู่บ้านเลขที่: </label>
                                    <textarea class="form-control" placeholder="" style="height: 130px">อยู่บ้านเลขที่ 203/1 ซอย ศึกษาวิทยา   แขวง/ตำบล สีลม   เขต/อำเภอ บางรัก   จังหวัด กรุงเทพมหานคร</textarea>
                                    <br>
                                </div>
                                <div class="col-md-auto">
                                    <label for="" class="form-label">ถนน: </label>
                                    <input type="text" class="form-control" name="" value="">
                                    <br>
                                </div>
                                <div class="col-md-auto">
                                    <label for="" class="form-label">แขวง/ตำบล: </label>
                                    <select name="" class="form-select">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> สีลม </option>

                                    </select><br>
                                </div>
                                <div class="col-md-auto">
                                    <label for="" class="form-label">เขต/อำเภอ: </label>
                                    <select name="" class="form-select">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> บางรัก </option>
                                        <!-- <option value=""> 2 </option> -->
                                    </select><br>
                                </div>
                                <div class="col-md-auto">
                                    <label for="" class="form-label">จังหวัด: </label>
                                    <select name="" class="form-select">
                                        <!-- <option value="" selected>== กรุณาเลือก ==</option> -->
                                        <option value=""> กรุงเทพมหานคร </option>
                                        <!-- <option value=""> 2 </option> -->
                                    </select><br>
                                </div>
                                <div class="col-md-2">
                                    <label for="" class="form-label">รหัสไปรษณีย์: </label>
                                    <input type="text" class="form-control" name="" value="">
                                    <br>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="header p-1">
                            <label class="text-normal font-weight-normal pl-2">
                                <b>ข้อมูลองค์การย่อย</b>
                            </label>
                        </div>
                        <form action="">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="" class="form-label">องค์การย่อย: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="" class="form-label">ที่อยู่: </label>
                                        <textarea class="form-control" placeholder="" style="height: 130px"></textarea>
                                        <br>
                                    </div>
                                    <div class="col-md-auto">
                                        <label for="" class="form-label">ถนน: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                    <div class="col-md-auto">
                                        <label for="" class="form-label">แขวง/ตำบล: </label>
                                        <select name="" class="form-select">
                                            <option value="" selected>== กรุณาเลือก ==</option>
                                            <option value=""> 1 </option>
                                            <option value=""> 2 </option>
                                        </select><br>
                                    </div>
                                    <div class="col-md-auto">
                                        <label for="" class="form-label">เขต/อำเภอ: </label>
                                        <select name="" class="form-select">
                                            <option value="" selected>== กรุณาเลือก ==</option>
                                            <option value=""> 1 </option>
                                            <option value=""> 2 </option>
                                        </select><br>
                                    </div>
                                    <div class="col-md-auto">
                                        <label for="" class="form-label">จังหวัด: </label>
                                        <select name="" class="form-select">
                                            <option value="" selected>== กรุณาเลือก ==</option>
                                            <option value=""> กรุงเทพมหานคร </option>
                                            <option value=""> 2 </option>
                                        </select><br>
                                    </div>
                                    <div class="col-md-2">
                                        <label for="" class="form-label">รหัสไปรษณีย์: </label>
                                        <input type="text" class="form-control" name="" value="">
                                        <br>
                                    </div>
                                </div>
                                <center>
                                    <button type="submit" name="submit" class="btn btn-success">
                                        <i class="fas fa-plus"></i> เพิ่ม</button>
                                </center>
                        </form>
                        <br>
                        <table class="table table" width="100%" style="text-align: center;">
                            <thead>
                                <tr style="background: #ff7b26e6; color:white;">
                                    <th>ลำดับ</th>
                                    <th>ชื่อองค์การย่อย</th>
                                    <th>ที่อยู่</th>
                                    <th>ถนน</th>
                                    <th>แขวง/ตำบล</th>
                                    <th>เขต/อำเภอ</th>
                                    <th>จังหวัด</th>
                                    <th>รหัสไปรษณีย์</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- <tr id="orangi"> -->
                                <tr style="background-color: #e9fbf2; color:black;">
                                    <td>1</td>
                                    <td>องค์การสหกิจคริสเตียนแห่งประเทศไทย</td>
                                    <td>54 ซอย รามคำแหง 22</td>
                                    <td></td>
                                    <td>หัวมาก</td>
                                    <td>บางกะปิ</td>
                                    <td>กรุงเทพมหานคร</td>
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

                        <!-- <div class="row">

                            <div class="col-md-7">

                                <center>
                                    <label for="" class="form-label">ส่วนลงนาม </label>
                                </center>

                                <div class="col-md-6 offset-md-3">
                                    <div class="row g-3 align-items-center">


                                        <label for="" class="col-form-label">ชื่อ-นามสกุลผู้ลงนาม:</label>

                                        <div class="col-md-10">
                                            <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="นาย มาโนช แจ้งมุข">
                                        </div>

                                        <label for="" class="col-form-label">ตำแหน่ง:</label>

                                        <div class="col-md-10">
                                            <input type="text" class="form-control" aria-describedby="passwordHelpInline" value="หัวหน้า/ประธานองค์การทางศาสนา">
                                        </div>

                                    </div>
                                </div><br>
                            </div>

                        </div> -->

                       











                    </div>





                    <hr>
                    <center>
                        <!-- <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;"><i class="fa fa-floppy-o"></i> บันทึก</button> -->
                        <button type="submit" name="submit" class="btn" style="background: #db681d; color:white;"><i class="fa fa-pencil-square-o"></i> แก้ไข</button>
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