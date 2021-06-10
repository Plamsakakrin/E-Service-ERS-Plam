@extends('layouts.master')
@section('content')
    <div class="container">
        <div class="row mb-2">
            <div class="col-7">
                <label class="text-header"><i style="color:#DB681D" class="fa fa-newspaper-o pr-1" aria-hidden="true"></i>&nbsp;ระบบจัดการหนังสือรับรองคนต่างด้าวขอรับการตรวจลงตราประเภทคนอยู่ชั่วคราว เพื่อพำนักอยู่ในราชอาณาจักรเกินกว่า 90 วัน(รายใหม่):<label for="" class="form-label" style="color: blue;">&nbsp;แบบอก. 1-4 </label>
                </label>

            </div>
        </div>
        <div style="text-align: end;">

            <button type="button" class=" btn btn" style="background-color: #DB681D; color:white;" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                <i class="fa fa-search pr-1" aria-hidden="true"></i>
                เงื่อนไขการค้นหา
            </button><br>
        </div>
        <hr>
        <div class="collapse" id="collapseExample"><br>
            <!-- <div class="row"> -->
            <div class="col-md-12">
                <div class="card"><br>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="" class="form-label">เลขที่แบบอก. 1 : </label>
                                <input type="text" class="form-control" name="" value="">
                                <br>
                            </div>
                            <div class="col-md-3">
                                <label for="" class="form-label">ชื่อ-นามสกุล ผู้เผยแพร่ศาสนา: </label>
                                <input type="text" class="form-control" name="" value="">
                                <br>
                            </div>
                            <div class="col-md-3">
                                <label for="=" class="form-label">องค์การใหญ่: </label>
                                <select id="=" name="=" class="form-select">
                                    <option value="" selected>== กรุณาเลือก ==</option>
                                    <option value=""> องค์การสหกิจคริสเตียนแห่งประเทศไทย </option>
                                    <option value=""> มูลนิธิคริสตจักรเซเว่นธ์เดย์แอ๊ดเวนตีสแห่งประเทศไทย </option>
                                </select><br>
                            </div>
                            <div class="col-md-3">
                                <label for="=" class="form-label">องค์การย่อย: </label>
                                <select id="=" name="=" class="form-select">
                                    <option value="" selected>== กรุณาเลือก ==</option>
                                    <option value=""> องค์การสหกิจคริสเตียนแห่งประเทศไทย </option>
                                    <option value=""> คริสตจักรเอกมัย </option>
                                    <option value=""> คริสตจักรโรงพยาบาลมิชชั่น </option>
                                </select><br>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label class="form-label">เริ่มวันที่: </label>
                                <input type="text" class="form-control" id="datepicker-th-2" name="date1" />
                                <br>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">ถึงวันที่: </label>
                                <input type="text" class="form-control" id="datepicker-th-1" name="date2" />
                                <br>
                            </div>
                            <div class="col-md-3">
                                <label for="=" class="form-label">สถานะ: </label>
                                <select id="=" name="=" class="form-select">
                                    <option value="" selected>== กรุณาเลือก ==</option>
                                    <option value=""> ร่าง </option>
                                    <option value=""> อยู่ระหว่างยื่นเอกสาร </option>
                                    <option value=""> อยู่ระหว่างการตรวจสอบเอกสาร </option>
                                    <option value=""> เอกสารไม่ครบถ้วนหรือไม่ถูกต้อง </option>
                                    <option value=""> อยู่ระหว่างการพิจารณา </option>
                                    <option value=""> รายการคำขอได้รับการอนุมัติ </option>
                                    <option value=""> ยกเลิก </option>
                                </select><br>
                            </div>
                        </div>
                        <center>
                            <button type="submit" name="submit" class="btn" style="background: #20a2aa; color:white;"><i class="fa fa-search"></i> ค้นหา</button>
                            <button type="submit" name="submit" class="btn" style="background: darkorange; color:white;"><i class="fa fa-refresh"></i> เคลียร์คำ</button>
                            <button type="button" class="btn btn-secondary" style="color:white;" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                <i class="fa fa-times" aria-hidden="true"></i>
                                ปิด
                            </button>
                        </center><br>
                    </div>
                </div>
            </div>
        </div><br>
        <div class="row">
            <div style="margin-bottom: 10px;">
                <a href="#" class="btn btn-success text-normal">
                    <label class="txtv3 p-0 m-0"><i class="fa fa-plus pr-1" aria-hidden="true"></i> เพิ่ม</label>
                </a>
            </div>
        </div>
            <table class="table table" width="100%" style="text-align: center;">
                <thead>
                    <tr style="background: #DB681D; color:white;">
                        <th>ลำดับ</th>
                        <th style="width: 700px;">เลขที่คำขอ</th>
                        <th style="width: 500px;">ชื่อ-นามสกุล <br> ผู้เผยแพร่</th>
                        <th style="width: 200px;">องค์การใหญ่</th>
                        <th style="width: 200px;">องค์การย่อย</th>
                        <th style="width: 100px;">วันที่ยื่นเอกสาร</th>
                        <th style="width: 100px;">สถานะ</th>
                        <th style="width: 100px;">แก้ไขล่าสุดโดย</th>
                        <th style="width: 100px;">วันที่/เวลาแก้ไขล่าสุด</th>
                        <th style="width: 100px;">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- <tr id="orangi"> -->
                    <tr style="color:black; background-color:white;">
                        <td>1</td>
                        <td style="color: blue;"> <u>64-05-0005</u></td>
                        <td>คุณสมใจ ทดสอบ1</td>
                        <td>องค์การสหกิจคริสเตียน <br> แห่งประเทศไทย </td>
                        <td>องค์การสหกิจคริสเตียน <br> แห่งประเทศไทย </td>
                        <td>3/5/2564</td>
                        <td><i class="fa fa-history" aria-hidden="true" style="font-size: 20px;" title="อยู่ระหว่างยื่นเอกสาร"></i></td>
                        <td>คุณทดสอบ2</td>
                        <td>3/5/2564 10.00</td>
                        <td>

                            <a href="{{route('edit')}}"><i style="color: black;" class="fa fa-pencil-square-o" title="แก้ไขข้อมูล"></i></a>
                            <a href="#"><i style="color: red;" class="fa fa-times-circle" title="ยกเลิก"></i></a>
                        </td>

                    </tr>
                    <tr style="background-color: #fffacd; color:black;">
                        <td>2</td>
                        <td style="color: blue;"><u>64-05-0004</u></td>
                        <td>คุณสมชาย ทดสอบ2</td>
                        <td>มูลนิธิคริสตจักร<br>เซเว่นธ์เดย์<br>แอ๊ดเวนตีสแห่งประเทศไทย</td>
                        <td>คริสตจักรเอกมัย</td>
                        <td>2/5/2564</td>
                        <td><i class="fa fa-reply" aria-hidden="true" style="font-size: 20px; color:orange" title="เอกสารไม่ครบถ้วนหรือไม่ถูกต้อง"></i></td>
                        <td>คุณทดสอบ1</td>
                        <td>2/5/2564 10.00</td>

                        <td>

                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o" title="แก้ไขข้อมูล"></i></a>
                            <a href="#"><i style="color: red;" class="fa fa-times-circle" title="ยกเลิก"></i></a>
                        </td>
                    </tr>
                    <tr style="background-color: #e9fbf2; color:black;">
                        <td>3</td>
                        <td style="color: blue;"> <u>64-05-003</u></td>
                        <td>คุณสมนึก ทดสอบ3</td>
                        <td>มูลนิธิคริสตจักร<br>เซเว่นธ์เดย์<br>แอ๊ดเวนตีสแห่งประเทศไทย</td>
                        <td>คริสตจักรโรงพยาบาลมิชชั่น</td>
                        <td>1/5/2564</td>
                        <td><i class="fa fa-check-circle" aria-hidden="true" style="font-size: 20px;color:#4ca64c" title="รายการคำขอได้รับการอนุมัติ"></i></td>
                        <td>คุณทดสอบ1</td>
                        <td>1/5/2564 10.00</td>
                        <td>
                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o" title="แก้ไขข้อมูล"></i></a>
                            <a href="#"><i style="color: red;" class="fa fa-times-circle" title="ยกเลิก"></i></a>
                        </td>
                    </tr>
                    <tr style="background-color: #e9fbf2; color:black;">
                        <td>4</td>
                        <td style="color: blue;"><u>64-05-0002</u></td>
                        <td>คุณสมนึก &nbsp; &nbsp; ทดสอบ4</td>
                        <td>มูลนิธิคริสตจักร<br>เซเว่นธ์เดย์<br>แอ๊ดเวนตีสแห่งประเทศไทย</td>
                        <td>คริสตจักรจีน เพิ่มสิน</td>
                        <td>29/4/2564</td>
                        <td><i class="fa fa-check-circle" aria-hidden="true" style="font-size: 20px;color:#4ca64c" title="รายการคำขอได้รับการอนุมัติ"></i></td>
                        <td>คุณทดสอบ1</td>
                        <td>29/4/2564 10.00</td>
                        <td>
                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o" title="แก้ไขข้อมูล"></i></a>
                            <a href="#"><i style="color: red;" class="fa fa-times-circle" title="ยกเลิก"></i></a>
                        </td>
                    </tr>
                    <tr style="background-color: #e9fbf2; color:black;">
                        <td>5</td>
                        <td style="color: blue;"><u>64-05-0001</u></td>
                        <td>คุณสมนึก ทดสอบ4</td>
                        <td>มูลนิธิคริสตจักร<br>เซเว่นธ์เดย์<br>แอ๊ดเวนตีสแห่งประเทศไทย</td>
                        <td>คริสตจักรจีน เพิ่มสิน</td>
                        <td>30/4/2564</td>
                        <td><i class="fa fa-check-circle" aria-hidden="true" style="font-size: 20px;color:#4ca64c" title="รายการคำขอได้รับการอนุมัติ"></i></td>
                        <td>คุณทดสอบ1</td>
                        <td>30/4/2564 10.00</td>
                        <td>
                            <a href="#"><i style="color: black;" class="fa fa-pencil-square-o" title="แก้ไขข้อมูล"></i></a>
                            <a href="#"><i style="color: red;" class="fa fa-times-circle" title="ยกเลิก"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <script>
        $(function() {
            var d = new Date();
            var toDay = d.getDate() + '/' + (d.getMonth() + 1) + '/' + (d.getFullYear() + 543);


            $("#datepicker-th-2").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd/mm/yy',
                isBuddhist: true,
                defaultDate: toDay,
                dayNames: ['อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสบดี', 'ศุกร์', 'เสาร์'],
                dayNamesMin: ['อา.', 'จ.', 'อ.', 'พ.', 'พฤ.', 'ศ.', 'ส.'],
                monthNames: ['มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม'],
                monthNamesShort: ['ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.', 'พ.ค.', 'มิ.ย.', 'ก.ค.', 'ส.ค.', 'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.']
            });
        });
    </script>
    <script>
        $(function() {
            var d = new Date();
            var toDay = d.getDate() + '/' + (d.getMonth() + 1) + '/' + (d.getFullYear() + 543);


            $("#datepicker-th-1").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd/mm/yy',
                isBuddhist: true,
                defaultDate: toDay,
                dayNames: ['อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสบดี', 'ศุกร์', 'เสาร์'],
                dayNamesMin: ['อา.', 'จ.', 'อ.', 'พ.', 'พฤ.', 'ศ.', 'ส.'],
                monthNames: ['มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม'],
                monthNamesShort: ['ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.', 'พ.ค.', 'มิ.ย.', 'ก.ค.', 'ส.ค.', 'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.']
            });
        });
    </script>
@endsection

</html>