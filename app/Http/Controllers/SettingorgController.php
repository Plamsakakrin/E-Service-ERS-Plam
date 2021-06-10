<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\ers_form2;
use App\Models\ers_org_action;
use App\Models\ers_org_income_source;
use App\Models\ers_org_longterm_plan;
use App\Models\ers_org_objective;
use App\Models\mt_sub_org;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class SettingorgController extends Controller
{
    // หน้าหลังจากเลือกเมนู
    public function indexorg()
    {
        return view('setting_org.home_org');
    }

    // -------------------- Start องค์การใหญ่ ------------------------------------------------------
  
    // หน้าองค์การใหญ่
    public function big_org()
    {
        // $ers2=Staff::paginate(3);  // แสดงข้อมูลตามที่ทำกำหนด
        $ers2 = DB::table('ers_form2')
            ->select('ers_form2.id', 'ers_form2.mainorg_th', 'ers_form2.guarantee_by', 'ers_form2.update_date', 'ers_form2.doc_status', 'ers_form2.fname',
             'ers_form2.lname', 'ers_form2.mainorg_th', 'ers_form2.prefix', 'pro.name_th', 'pre.prefix_name','ers_form2.update_by','use.name',
             'ers_form2.office_provinceid')
            ->LeftJoin('mt_province as pro', 'ers_form2.office_provinceid', 'pro.id')
            ->LeftJoin('mt_ prefix as pre', 'ers_form2.prefix', 'pre.id')
            ->Leftjoin('users as use' ,'ers_form2.update_by','use.id')
            ->paginate(10);
        // ->get();
        $mainorg_th = "";
        $fname = "";
        $doc_status = "";
        $office_provinceid = "";
        // $ers2 = DB::table('ers_form2')->get();
        $province = DB::table('mt_province')->get();
        // $user = DB::table('users')->get();
        $show = "";
        return view('setting_org.big_org', compact('ers2', 'province', 'show', 'doc_status', 'mainorg_th', 'fname','office_provinceid'));
        // ->with('i',(request()->input('page',1) - 1) * 5)
    }

    // ฟอร์มอก.2 ในองค์การใหญ่
    public function addmain(Request $request)
    {
        $ers2 = DB::table('ers_form2')
            ->select('ers_form2.id', 'ers_form2.prefix', 'pre.prefix_name', 'ers_form2.create_by', 'ers_form2.update_by', 'use.name')
            ->Join('mt_ prefix as pre', 'ers_form2.prefix', 'pre.id')
            ->Join('users as use', 'ers_form2.create_by', 'use.id')
            ->get();

        // $ers2 = DB::table('ers_form2')->get();
        $sub_district = DB::table('mt_sub_district')->get();
        $user = DB::table('users')->get();
        $long = DB::table('ers_org_longterm_plan')->get();
        $district = DB::table('mt_district')->get();
        $province = DB::table('mt_province')
            ->orderBy('name_th', 'asc')
            ->get();
        $type = "add";

        // กำหนดid โดย id ที่ถูกส่งมานั้นจะแสดง type เป็น  hidden ไว้
        $id = $request->input("id");
        $ers2id = ers_form2::find($id);
        $ers_form2id = DB::table('ers_form2')->where('id')->first();
        return view('setting_org.addmain_org', compact('long', 'type', 'sub_district', 'district', 'province', 'ers2', 'type', 'ers_form2id', 'id', 'ers2id'));
    }

    public function store(Request $request)
    {
        // ระบุตัวแปรให้ตรงตามTB
        $ersform2 = new ers_form2;
        $ersform2->history_org = $request->history_org;
        $ersform2->under_unit = $request->under_unit;
        $ersform2->religion_detail1 = $request->religion_detail1;
        $ersform2->religion_detail2 = $request->religion_detail2;
        $ersform2->office_address = $request->office_address;
        $ersform2->office_street = $request->office_street;
        $ersform2->office_provinceid = $request->office_provinceid;
        $ersform2->office_districtid = $request->office_districtid;
        $ersform2->office_subdistrictid = $request->office_subdistrictid;
        $ersform2->office_posecode = $request->office_posecode;
        $ersform2->total_member = $request->total_member;
        $ersform2->evangelist_number_limit = $request->evangelist_number_limit;
        $ersform2->evangelist_number = $request->evangelist_number;
        $ersform2->doctor_number = $request->doctor_number;
        $ersform2->nurse_number = $request->nurse_number;
        $ersform2->other_number = $request->other_number;
        $ersform2->current_evangelist_sq = $request->current_evangelist_sq;
        $ersform2->year_plan_period = $request->year_plan_period;
        $ersform2->prefix = $request->prefix;
        $ersform2->mainorg_en = $request->mainorg_en;
        $ersform2->mainorg_th = $request->mainorg_th;
        // $ersform2->update_by = Auth::user()->id;
        $ersform2->create_by = Auth::user()->id;
        $ersform2->create_date = \Carbon\Carbon::now();
        $request->validate(
            [
                'mainorg_th' => 'required|not_in:0',
                'office_provinceid' => 'required|not_in:0',
            ],

            // เปลี่ยนภาษาการแจ้งเตือน
            [
                'mainorg_th.required' => "กรุณากรอกชื่อองค์การทางศาสนา  (องค์การใหญ๋)",
                'office_provinceid.not_in' => "กรุณาเลือกจังหวัด",
            ]
        );
        $ersform2->save();
        // การ return กลับไปหน้าที่บันทึกพร้อมกับแจ้งเตือน
        return redirect()
            ->to('/settingorgform_page/edit/edit?id=' . $ersform2->id)
            ->with('success');
    }

    // จังหวัด อำเภอ
    function fetch(Request $request)
    {
        $id = $request->get('select');
        $result = array();
        $query = DB::table('mt_province')
            ->select('mt_district.name_th', 'mt_district.id')
            ->join('mt_district', 'mt_province.id', '=', 'mt_district.province_id')
            ->where('mt_province.id', $id)
            ->groupBy('mt_district.name_th', 'mt_district.id')
            ->orderBy('name_th', 'asc')
            ->get();

        // การแสดงผล
        $output = '<option value="0">== กรุณาเลือก ==</option>';
        foreach ($query as $row) {
            $output .= '<option value="' . $row->id . '">' . $row->name_th . '</option>';
        }
        echo $output;
    }

    // อำเภอ ตำบล
    function fetch2(Request $request)
    {
        $id = $request->get('select');
        $result = array();
        $query = DB::table('mt_district')
            ->select('mt_sub_district.name_th', 'mt_sub_district.id')
            ->join('mt_sub_district', 'mt_district.id', '=', 'mt_sub_district.district_id')
            ->where('mt_district.id', $id)
            ->groupBy('mt_sub_district.name_th', 'mt_sub_district.id')
            ->orderBy('name_th', 'asc')
            ->get();

        // การแสดงผล
        $output = '<option value="0">== กรุณาเลือก ==</option>';
        foreach ($query as $row) {
            $output .= '<option value="' . $row->id . '">' . $row->name_th . '</option>';
        }
        echo $output;
    }

    // จังหวัด อำเภอ
    function fetch3(Request $request)
    {
        $id = $request->get('select');
        $result = array();
        $query = DB::table('mt_province')
            ->select('mt_district.name_th', 'mt_district.id')
            ->join('mt_district', 'mt_province.id', '=', 'mt_district.province_id')
            ->where('mt_province.id', $id)
            ->groupBy('mt_district.name_th', 'mt_district.id')
            ->orderBy('name_th', 'asc')
            ->get();

        // การแสดงผล
        $output = '<option value="0">== กรุณาเลือก ==</option>';
        foreach ($query as $row) {
            $output .= '<option value="' . $row->id . '">' . $row->name_th . '</option>';
        }
        echo $output;
    }

    // อำเภอ ตำบล
    function fetch4(Request $request)
    {
        $id = $request->get('select');
        $result = array();
        $query = DB::table('mt_district')
            ->select('mt_sub_district.name_th', 'mt_sub_district.id')
            ->join('mt_sub_district', 'mt_district.id', '=', 'mt_sub_district.district_id')
            ->where('mt_district.id', $id)
            ->groupBy('mt_sub_district.name_th', 'mt_sub_district.id')
            ->orderBy('name_th', 'asc')
            ->get();

        // การแสดงผล
        $output = '<option value="0">== กรุณาเลือก ==</option>';
        foreach ($query as $row) {
            $output .= '<option value="' . $row->id . '">' . $row->name_th . '</option>';
        }
        echo $output;
    }

    public function edit(Request $request)
    {
        $id = $request->input("id");
        $ers2 = ers_form2::find($id);

        // $longid = $request->input("longid");
        // $long_plan= ers_org_longterm_plan::find($longid);
        // $long_plan = new ers_org_longterm_plan;

        // การส่ง request จากform
        $history_org = $ers2['history_org'];
        $under_unit = $ers2['under_unit'];
        $religion_detail1 = $ers2['religion_detail1'];
        $religion_detail2 = $ers2['religion_detail2'];
        $office_address = $ers2['office_address'];
        $office_street = $ers2['office_street'];
        $office_provinceid = $ers2['office_provinceid'];
        $office_districtid = $ers2['office_districtid'];
        $office_subdistrictid = $ers2['office_subdistrictid'];
        $office_posecode = $ers2['office_posecode'];
        $total_member = $ers2['total_member'];
        $male_member = $ers2['male_member'];
        $female_member = $ers2['female_member'];
        $evangelist_number_limit = $ers2['evangelist_number_limit'];
        $evangelist_number = $ers2['evangelist_number'];
        $doctor_number = $ers2['doctor_number'];
        $nurse_number = $ers2['nurse_number'];
        $other_number = $ers2['other_number'];
        $current_evangelist_sq = $ers2['current_evangelist_sq'];
        $year_plan_period = $ers2['year_plan_period'];
        $prefix = $ers2['prefix'];
        $fname = $ers2['fname'];
        $lname = $ers2['lname'];
        $old = $ers2['old'];
        $address = $ers2['address'];
        $street = $ers2['street'];
        $posecode = $ers2['posecode'];
        $guarantee_by = $ers2['guarantee_by'];
        $guarantee_position = $ers2['guarantee_position'];
        $doc_status = $ers2['doc_status'];
        $mainorg_th = $ers2['mainorg_th'];
        $mainorg_en = $ers2['mainorg_en'];


        // ระยะแผนงาน
        $long = DB::table('ers_org_longterm_plan')
            ->where('ers_org_longterm_plan.ers_form2id', $id)
            ->get();


        // วัตถุประสงค์ของแผนงานหรือโครงการ
        $obj = DB::table('ers_org_objective')
            ->where('ers_org_objective.ers_form2id', $id)
            ->get();

        // แนวการดำเนินของแผนงานหรือโครงการ
        $act = DB::table('ers_org_action')
            ->where('ers_org_action.ers_form2id', $id)
            ->get();

        // เงินทุนและที่มาของรายได้
        $inc = DB::table('ers_org_income_source')
            ->where('ers_org_income_source.ers_form2id', $id)
            ->get();

        $sub_district = DB::table('mt_sub_district')->get();
        $sub_district2 = DB::table('mt_sub_district')->get();
        $district = DB::table('mt_district')->get();
        $district2 = DB::table('mt_district')->get();
        $province = DB::table('mt_province')
            ->orderBy('name_th', 'asc')
            ->get();
        $province2 = DB::table('mt_province')
            ->orderBy('name_th', 'asc')
            ->get();
        $prefixs = DB::table('mt_ prefix')->get();
        $race = DB::table('mt_race')->get();
        $nationality = DB::table('mt_nationality')->get();
        $religion = DB::table('mt_religion')->get();
        $user = DB::table('ers_form2')
            ->select('ers_form2.id', 'ers_form2.create_by', 'ers_form2.update_by', 'use.name')
            ->Join('users as use', 'ers_form2.update_by', 'use.id')
            ->where('use.id')
            ->get();
        $type = "edit";
        $ers_form2id = DB::table('ers_form2')->where('id')->first();

        // return ไปยังหน้าadd
        return view('setting_org.addmain_org', compact(
            'id',
            'ers2',
            'history_org',
            'under_unit',
            'religion_detail1',
            'religion_detail2',
            'office_address',
            'office_street',
            'office_provinceid',
            'office_districtid',
            'office_subdistrictid',
            'office_posecode',
            'sub_district',
            'female_member',
            'total_member',
            'male_member',
            'district',
            'province',
            'type',
            'ers_form2id',
            'evangelist_number_limit',
            'evangelist_number',
            'doctor_number',
            'nurse_number',
            'other_number',
            'current_evangelist_sq',
            'long',
            'year_plan_period',
            'prefixs',
            'prefix',
            'lname',
            'fname',
            'old',
            'address',
            'street',
            'posecode',
            'guarantee_by',
            'guarantee_position',
            'race',
            'nationality',
            'religion',
            'doc_status',
            'province2',
            'sub_district2',
            'district2',
            'user',
            'obj',
            'act',
            'inc',
            'mainorg_th',
            'mainorg_en'

        ));
    }


    public function update(Request $request,$id)
    {
       
        
        $update = ers_form2::find($request->input('editid'))->update([

            'history_org' => $request->history_org,
            'under_unit' => $request->under_unit,
            'religion_detail1' => $request->religion_detail1,
            'religion_detail2' => $request->religion_detail2,
            'office_address' => $request->office_address,
            'office_street' => $request->office_street,
            'office_provinceid' => $request->office_provinceid,
            'office_districtid' => $request->office_districtid,
            'office_subdistrictid' => $request->office_subdistrictid,
            'office_posecode' => $request->office_posecode,
            'total_member' => $request->total_member,
            'male_member' => $request->male_member,
            'female_member' => $request->female_member,
            'evangelist_number_limit' => $request->evangelist_number_limit,
            'evangelist_number' => $request->evangelist_number,
            'doctor_number' => $request->doctor_number,
            'nurse_number' => $request->nurse_number,
            'other_number' => $request->other_number,
            'current_evangelist_sq' => $request->current_evangelist_sq,
            'year_plan_period' => $request->year_plan_period,
            'fname' => $request->fname,
            'lname' => $request->lname,
            'old' => $request->old,
            'street' => $request->street,
            'address' => $request->address,
            'posecode' => $request->posecode,
            'guarantee_by' => $request->guarantee_by,
            'guarantee_position' => $request->guarantee_position,
            'doc_status' => $request->doc_status,
            'prefix' => $request->prefix,
            'race' => $request->race,
            'nationality' => $request->nationality,
            'religion' => $request->religion,
            'provinceid' => $request->provinceid,
            'districtid' => $request->districtid,
            'sub_districtid' => $request->sub_districtid,
            // 'create_by' => $request->create_by,
            // 'update_by' => $request->update_by,
            'mainorg_th' => $request->mainorg_th,
            'mainorg_en' => $request->mainorg_en,
            'update_by' => Auth::user()->id,
            // 'update_date' => now(),
            'update_date' => Carbon::now(),
           
        ]);



        $request->validate(
            [
                'fname' => 'required|not_in:0',
                'lname' => 'required|not_in:0',
                'prefix' => 'required|not_in:0',
                'provinceid' => 'required|not_in:0',
                'mainorg_th' => 'required|not_in:0',
                'office_provinceid' => 'required|not_in:0',
                // 'posecode' => 'required|numeric',
            ],

            // เปลี่ยนภาษาการแจ้งเตือน
            [
                'fname.required' => "กรุณากรอกชื่อ",
                'lname.required' => "กรุณากรอกนามสกุล",
                'prefix.not_in' => "กรุณาเลือกคำนำหน้า",
                'provinceid.not_in' => "กรุณาเลือกจังหวัด",
                'mainorg_th.required' => "กรุณากรอกชื่อองค์การทางศาสนา  (องค์การใหญ๋)",
                'office_provinceid.not_in' => "กรุณาเลือกจังหวัด",
                // 'posecode.numeric' => "กรุณากรอกตัวเลข",
            ]
        );


        return redirect()
            // ->route('staff')
            // ->to('/settingorgform_page/edit/edit?id=' . $id)
            ->back()
            ->with('success',"บันทึกข้อมูลเรียบร้อยแล้ว");
        


        // return redirect()->route('big_org')->with('success', "อัพเดตข้อมูลเรียบร้อย"); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
    }


    //  ส่วนของการลบข้อมูลแบบถาวร
    public function delete($id)
    {

        $delete = ers_form2::find($id)->forceDelete(); // การลบตามid
        return redirect()->route('searchbig_org')->with('success', "ยกเลิกข้อมูลเรียบร้อยแล้ว"); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
    }


    // search องค์การใหญ่
    public function search(Request $request)
    {
        // สร้างตัวแปรเพื่อกำหนด Loopให้กับข้อมูล
        // $mainID = $request->input('mainorg_th');
        // $fnameID = $request->input('fname');
        // $staID = $request->input('doc_status');

        $mainorg_th = $request->input('mainorg_th');
        $fname = $request->input('fname');
        $doc_status = $request->input('doc_status');
        $office_provinceid = $request->input('office_provinceid');

        if (!empty($mainorg_th)) {
            $ers2 = DB::table('ers_form2')
                ->select('ers_form2.id', 'ers_form2.mainorg_th', 'ers_form2.guarantee_by', 'ers_form2.update_date', 'ers_form2.doc_status', 'pro.name_th', 'pre.prefix_name', 'ers_form2.fname', 'ers_form2.lname','use.name')
                ->Join('mt_province as pro', 'ers_form2.office_provinceid', 'pro.id')
                ->Join('mt_ prefix as pre', 'ers_form2.prefix', 'pre.id')
                ->Join('users as use' ,'ers_form2.update_by','use.id')
                ->where('ers_form2.mainorg_th', 'LIKE', '%' . $mainorg_th . '%')
                ->paginate(10);
        } elseif (!empty($fname)) {
            $ers2 = DB::table('ers_form2')
                ->select('ers_form2.id', 'ers_form2.mainorg_th', 'ers_form2.guarantee_by', 'ers_form2.update_date', 'ers_form2.doc_status', 'pro.name_th', 'pre.prefix_name', 'ers_form2.fname', 'ers_form2.lname','use.name')
                ->Join('mt_province as pro', 'ers_form2.office_provinceid', 'pro.id','pro.name_th')
                ->Join('mt_ prefix as pre', 'ers_form2.prefix', 'pre.id')
                ->Join('users as use' ,'ers_form2.update_by','use.id')
                ->where('ers_form2.fname', 'LIKE', '%' . $fname . '%')
                ->paginate(10);
        } elseif (!empty($doc_status)) {
            $ers2 = DB::table('ers_form2')
                ->select('ers_form2.id', 'ers_form2.mainorg_th', 'ers_form2.guarantee_by', 'ers_form2.update_date', 'ers_form2.doc_status', 'pro.name_th', 'pre.prefix_name', 'ers_form2.fname', 'ers_form2.lname','use.name')
                ->Join('mt_province as pro', 'ers_form2.office_provinceid', 'pro.id','pro.name_th')
                ->Join('mt_ prefix as pre', 'ers_form2.prefix', 'pre.id')
                ->Join('users as use' ,'ers_form2.update_by','use.id')
                ->where('ers_form2.doc_status', $doc_status)
                ->paginate(10);
        } elseif (!empty($office_provinceid)) {
            $ers2 = DB::table('ers_form2')
                ->select('ers_form2.id', 'ers_form2.mainorg_th', 'ers_form2.guarantee_by', 'ers_form2.update_date', 'ers_form2.doc_status', 'pro.name_th', 'pre.prefix_name', 'ers_form2.fname', 'ers_form2.lname','use.name')
                ->Join('mt_province as pro', 'ers_form2.office_provinceid', 'pro.id','pro.name_th')
                ->Join('mt_ prefix as pre', 'ers_form2.prefix', 'pre.id')
                ->Join('users as use' ,'ers_form2.update_by','use.id')
                // ->Join('ers_form2 as form2', 'mt_sub_org.main_orgid','form2.id','form2.mainorg_th')
                ->where('pro.name_th',$office_provinceid)
                ->paginate(10);
        }else {
            $ers2 = DB::table('ers_form2')
                ->select('ers_form2.id', 'ers_form2.mainorg_th', 'ers_form2.guarantee_by', 'ers_form2.update_date', 'ers_form2.doc_status', 'pro.name_th', 'pre.prefix_name', 'ers_form2.fname', 'ers_form2.lname','use.name')
                ->Join('mt_province as pro', 'ers_form2.office_provinceid', 'pro.id','pro.name_th')
                ->Join('mt_ prefix as pre', 'ers_form2.prefix', 'pre.id')
                ->Join('users as use' ,'ers_form2.update_by','use.id')
                ->paginate(10);
        }

        $type = "search";
        $province = DB::table('mt_province')->get();
        // $statuss = DB::table('status')->get();
        // dd("$hisID");

        $show = "show";

        // return กลับไปหน้า index
        return view('setting_org.big_org', compact('ers2', 'province', 'type', 'show', 'mainorg_th', 'fname', 'doc_status','office_provinceid'));
        // return back()->with('show', [$show]);
    }

    // ระยะเวลา
    public function longtermplan(Request $request)
    {
        $list["test"] = $request->input('plan_type');
        $list["test"] = $request->input('plan_detail');
        $id = $request->input('longid');
        $long = new ers_org_longterm_plan;
        $long->plan_type = $request->input('plan_type');
        $long->plan_detail = $request->input('plan_detail');


        $request->validate(
            [
                'plan_detail' => 'required',
                'plan_type' => 'required|not_in:0',
            ],

            // เปลี่ยนภาษาการแจ้งเตือน
            [
                'plan_detail.not_in' => "กรุณากรอกแผนงาน",
                'plan_type.required' => "กรุณาเลือกประเภท",
            ]
        );

        $long->ers_form2id = $id;

        // // การ saveข้อมูล
        $long->save();
        return response()->json($list);
    }

    // // แก้ไขข้อมูลระยะยาว
    // public function longtermplanedit(Request $request)
    // {
    // $id = $request->input("longid");
    // // $ers2 = ers_org_longterm_plan::find($id);
    // // ระยะแผนงาน
    // $long = DB::table('ers_org_longterm_plan')
    // ->where('ers_org_longterm_plan.ers_form2id', $id)
    // ->get();
    // $type = "edit";
    // return view('setting_org.addmain_org', compact('long','id','type'));
    // }

    // // อัพเดทข้อมูล
    // public function longtermplanupdate(Request $request){
    //     $update = ers_org_longterm_plan::find($request->input('editid'))->update
    //         ([
    //             'plan_detail' => $request->plan_detail,
    //             'plan_type' => $request->plan_type,
    //         ]);
    //         return redirect()
    //         // ->route('staff')
    //         ->back()
    //         ->with('success',"บันทึกข้อมูลเรียบร้อยแล้ว");
    // }

    // ลบข้อมูลระยะยาว
    public function longtermplandelete($id)
    {
        $delete = ers_org_longterm_plan::find($id)->forceDelete(); // การลบตามid
        return redirect()->back()->with('success'); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
    }

    // วัตถุประสงค์
    public function objective(Request $request)
    {
        $list["test"] = $request->input('objective');
        $id = $request->input('objid');
        $obj = new ers_org_objective;
        $obj->objective = $request->input('objective');

        $request->validate(
            [
                'objective' => 'required',

            ],

            // เปลี่ยนภาษาการแจ้งเตือน
            [
                'objective.not_in' => "กรุณากรอกแผนงาน",

            ]
        );

        $obj->ers_form2id = $id;

        // // การ saveข้อมูล
        $obj->save();
        return response()->json($list);
    }




    // ลบข้อมูลวัตถุประสงค์
    public function objectivedelete($id)
    {
        $delete = ers_org_objective::find($id)->forceDelete(); // การลบตามid
        return redirect()->back()->with('success'); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
    }


    // แนวการดำเนินของแผนงานหรือโครงการ
    public function action(Request $request)
    {
        $list["test"] = $request->input('action');
        $id = $request->input('actid');
        $obj = new ers_org_action;
        $obj->action = $request->input('action');
        $obj->ers_form2id = $id;

        // // การ saveข้อมูล
        $obj->save();
        return response()->json($list);
    }

    // ลบข้อมูลระยะยาว
    public function actiondelete($id)
    {
        $delete = ers_org_action::find($id)->forceDelete(); // การลบตามid
        return redirect()->back()->with('success'); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
    }

    // เงินทุนและที่มาของรายได้
    public function income_source(Request $request)
    {
        $list["test"] = $request->input('incomesource');
        $id = $request->input('incid');
        $obj = new ers_org_income_source;
        $obj->incomesource = $request->input('incomesource');
        $obj->ers_form2id = $id;

        // // การ saveข้อมูล
        $obj->save();
        return response()->json($list);
    }

    // ลบข้อมูลระยะยาว
    public function income_sourcedelete($id)
    {
        $delete = ers_org_income_source::find($id)->forceDelete(); // การลบตามid
        return redirect()->back()->with('success'); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
    }

    // -------------------- End องค์การใหญ่ ------------------------------------------------------



    // -------------------- Start องค์การย่อย ------------------------------------------------------


    public function sub_org()
    {


        // $ers2=Staff::paginate(3);  // แสดงข้อมูลตามที่ทำกำหนด
        $suborg = DB::table('mt_sub_org')
            ->select('mt_sub_org.id', 'mt_sub_org.name_th as subname', 'mt_sub_org.name_en', 'mt_sub_org.is_active', 'mt_sub_org.ievangelist_number_limit', 'mt_sub_org.is_active', 'pro.name_th','form2.mainorg_th')
            ->Join('mt_province as pro', 'mt_sub_org.provinceid', 'pro.id', 'pro.name_th')
            ->Join('ers_form2 as form2', 'mt_sub_org.main_orgid','form2.id','form2.mainorg_th')
            // ->Join('mt_sub_org as sub','mt_sub_org.name_th','')
            // ->where('mt_sub_org.id','subname')
            ->paginate(10);
        // ->get();

        // dd($suborg);

        $province = DB::table('mt_province')->get();
        // $subname = DB::table('mt_sub_org')
        // ->select('mt_sub_org.name_th as subname')
        // ->get();
        // $mainorg_th="";
        $main_orgid = "";
        $name_th = "";
        $is_active = "";
        $provinceid = "";
        $province = DB::table('mt_province')->get();
        $show = "";
        return view('setting_org.sub_org', compact('suborg', 'province', 'show', 'is_active', 'name_th', 'main_orgid','provinceid'));


        // return view('setting_org.sub_org');
    }
    public function addsub(Request $request)
    {

        // $suborg = DB::table('mt_sub_org')
        // ->select('mt_sub_org.id', 'mt_sub_org.name_th', 'mt_sub_org.main_orgid', 'form2.mainorg_th','form2.id')
        // ->Join('ers_form2 as form2', 'mt_sub_org.name_th', 'form2.id')
        // ->where('mt_sub_org.id')
        // ->get(); 


        $suborg = DB::table('mt_sub_org')->get();
        $ers2 = DB::table('ers_form2')->get();
        $sub_district = DB::table('mt_sub_district')
            ->orderBy('name_th', 'asc')
            ->get();
        $district = DB::table('mt_district')
            ->orderBy('name_th', 'asc')
            ->get();
        $province = DB::table('mt_province')
            ->orderBy('name_th', 'asc')
            ->get();
        $type = "add";

        // กำหนดid โดย id ที่ถูกส่งมานั้นจะแสดง type เป็น  hidden ไว้
        $id = $request->input("id");
        $suborgid = mt_sub_org::find($id);
        $mt_suborgid = DB::table('mt_sub_org')->where('id')->first();
        return view('setting_org.addsub_org', compact('suborg', 'ers2', 'type', 'sub_district', 'district', 'province',  'type', 'mt_suborgid', 'id', 'suborgid'));

        // return view('setting_org.addsub_org');
    }

    public function storesub(Request $request)
    {
        $suborg = new mt_sub_org;
        $suborg->main_orgid = $request->main_orgid;
        $suborg->name_th = $request->name_th;
        $suborg->name_en = $request->name_en;
        $suborg->address = $request->address;
        $suborg->street = $request->street;
        $suborg->zip_code = $request->zip_code;
        $suborg->provinceid = $request->provinceid;
        $suborg->districtid = $request->districtid;
        $suborg->sub_districtid = $request->sub_districtid;
        $suborg->phone_number = $request->phone_number;
        $suborg->email = $request->email;
        $suborg->ievangelist_number_limit = $request->ievangelist_number_limit;
        $suborg->is_active = $request->is_active;

        $suborg->create_date = \Carbon\Carbon::now();
        $suborg->create_by = Auth::user()->id;


        // $ersform2->create_by = Auth::user()->id;
        // $ersform2->create_date = \Carbon\Carbon::now();
        $request->validate(
            [
                'main_orgid' => 'required|not_in:0',
                'name_th' => 'required|not_in:0',
                'name_en' => 'required|not_in:0',
                'provinceid' => 'required|not_in:0',
                // 'phone_number' => 'required|max:10',

                // 'tel'=>'required|unique:db_staff|max:10',
            ],

            // เปลี่ยนภาษาการแจ้งเตือน
            [
                'main_orgid.not_in' => "กรุณาเลือกชื่อองค์การใหญ่",
                'name_th.required' => "กรุณากรอกชื่อองค์การทางศาสนา (ไทย)",
                'name_en.required' => "กรุณากรอกชื่อองค์การทางศาสนา (อังกฤษ)",
                'provinceid.not_in' => "กรุณาเลือกจังหวัด",
                // 'phone_number.max' => "ห้ามกรอกเกิน 10 ตัวเลข",
            ]
        );
        $suborg->save();
        // dd($suborg);
        // การ return กลับไปหน้าที่บันทึกพร้อมกับแจ้งเตือน
        return redirect()
            ->to('/settingorgform_page/editsub/edit?id=' . $suborg->id)
            ->with('success', "บันทึกข้อมูลเรียบร้อยแล้ว");
    }

    // จังหวัด อำเภอ
    function fetchsub(Request $request)
    {
        $id = $request->get('select');
        $result = array();
        $query = DB::table('mt_province')
            ->select('mt_district.name_th', 'mt_district.id')
            ->join('mt_district', 'mt_province.id', '=', 'mt_district.province_id')
            ->where('mt_province.id', $id)
            ->groupBy('mt_district.name_th', 'mt_district.id')
            ->orderBy('name_th', 'asc')
            ->get();

        // การแสดงผล
        $output = '<option value="0">== กรุณาเลือก ==</option>';
        foreach ($query as $row) {
            $output .= '<option value="' . $row->id . '">' . $row->name_th . '</option>';
        }
        echo $output;
    }

    // อำเภอ ตำบล
    function fetchsub2(Request $request)
    {
        $id = $request->get('select');
        $result = array();
        $query = DB::table('mt_district')
            ->select('mt_sub_district.name_th', 'mt_sub_district.id')
            ->join('mt_sub_district', 'mt_district.id', '=', 'mt_sub_district.district_id')
            ->where('mt_district.id', $id)
            ->groupBy('mt_sub_district.name_th', 'mt_sub_district.id')
            ->orderBy('name_th', 'asc')
            ->get();

        // การแสดงผล
        $output = '<option value="0">== กรุณาเลือก ==</option>';
        foreach ($query as $row) {
            $output .= '<option value="' . $row->id . '">' . $row->name_th . '</option>';
        }
        echo $output;
    }


    public function editsub(Request $request)
    {
        $id = $request->input("id");
        $suborg = mt_sub_org::find($id);
        // การส่ง request จากform
        $main_orgid = $suborg['main_orgid'];
        $name_th = $suborg['name_th'];
        $name_en = $suborg['name_en'];
        $address = $suborg['address'];
        $street = $suborg['street'];
        $zip_code = $suborg['zip_code'];
        $provinceid = $suborg['provinceid'];
        $districtid = $suborg['districtid'];
        $sub_districtid = $suborg['sub_districtid'];
        $phone_number = $suborg['phone_number'];
        $email = $suborg['email'];
        $ievangelist_number_limit = $suborg['ievangelist_number_limit'];
        $is_active = $suborg['is_active'];

        $sub_district = DB::table('mt_sub_district')
            ->orderBy('name_th', 'asc')
            ->get();
        $district = DB::table('mt_district')
            ->orderBy('name_th', 'asc')
            ->get();
        $province = DB::table('mt_province')
            ->orderBy('name_th', 'asc')
            ->get();
        $ers2 = DB::table('ers_form2')->get();
        $user = DB::table('ers_form2')
            ->select('ers_form2.id', 'ers_form2.create_by', 'ers_form2.update_by', 'use.name')
            ->Join('users as use', 'ers_form2.update_by', 'use.id')
            ->where('use.id')
            ->get();
        $type = "edit";
        $sub_orgid = DB::table('mt_sub_org')->where('id')->first();

        // return ไปยังหน้าadd
        return view('setting_org.addsub_org', compact(
            'id',
            'suborg',
            'main_orgid',
            'name_th',
            'name_en',
            'address',
            'street',
            'zip_code',
            'provinceid',
            'districtid',
            'sub_districtid',
            'phone_number',
            'email',
            'ievangelist_number_limit',
            'is_active',
            'sub_district',
            'district',
            'province',
            'type',
            'sub_orgid',
            'ers2'
        ));
    }

    public function updatesub(Request $request)
    {
        $update = mt_sub_org::find($request->input('editid'))->update([

            'main_orgid' => $request->main_orgid,
            'name_th' => $request->name_th,
            'name_en' => $request->name_en,
            'address' => $request->address,
            'street' => $request->street,
            'zip_code' => $request->zip_code,
            'provinceid' => $request->provinceid,
            'districtid' => $request->districtid,
            'sub_districtid' => $request->sub_districtid,
            'phone_number' => $request->phone_number,
            'email' => $request->email,
            'ievangelist_number_limit' => $request->ievangelist_number_limit,
            'is_active' => $request->is_active,

            'update_by' => Auth::user()->id,
            // 'update_by' => Auth::user()->id,

        ]);
        $request->validate(
            [
                'main_orgid' => 'required|not_in:0',
                'name_th' => 'required|not_in:0',
                'name_en' => 'required|not_in:0',
                'provinceid' => 'required|not_in:0',

                // 'tel'=>'required|unique:db_staff|max:10',
            ],

            // เปลี่ยนภาษาการแจ้งเตือน
            [
                'main_orgid.not_in' => "กรุณาเลือกชื่อองค์การใหญ่",
                'name_th.required' => "กรุณากรอกชื่อองค์การทางศาสนา (ไทย)",
                'name_en.required' => "กรุณากรอกชื่อองค์การทางศาสนา (อังกฤษ)",
                'provinceid.not_in' => "กรุณาเลือกจังหวัด",
            ]
        );


        return redirect()
            // ->route('staff')
            ->back()
            ->with('success', "บันทึกข้อมูลเรียบร้อยแล้ว");
        // return redirect()->route('searchbig_org')->with('success', "อัพเดตข้อมูลเรียบร้อย"); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
    }

    public function deletesub($id)
    {
    
        $delete = mt_sub_org::find($id)->forceDelete(); // การลบตามid
        return redirect()->back()->with('success', "ยกเลิกข้อมูลเรียบร้อยแล้ว"); // returnให้ไปที่routeแล้วตามด้วยrouteที่เราต้องการให้ไป
        // return redirect()->route('searchbig_org')->with('success', "ยกเลิกข้อมูลเรียบร้อยแล้ว");
    }

    public function searchsub(Request $request)
    {


        // สร้างตัวแปรเพื่อกำหนด Loopให้กับข้อมูล
        $main_orgid = $request->input('main_orgid');
        $name_th = $request->input('name_th');
        $provinceid = $request->input('provinceid');
        $is_active = $request->input('is_active');



        if (!empty($main_orgid)) {
            $suborg = DB::table('mt_sub_org')
                ->select('mt_sub_org.id', 'mt_sub_org.name_th as subname', 'mt_sub_org.main_orgid', 'mt_sub_org.provinceid', 'mt_sub_org.is_active', 'mt_sub_org.ievangelist_number_limit', 'pro.name_th', 'form2.mainorg_th')
                ->Join('mt_province as pro', 'mt_sub_org.provinceid', 'pro.id', 'pro.name_th')
                ->Join('ers_form2 as form2', 'mt_sub_org.main_orgid','form2.id','form2.mainorg_th')
                // ->groupBy('ers_form2.mainorg_th', 'ers_form2.id', 'mt_sub_org.id', 'mt_sub_org.main_orgid')
                ->where('form2.mainorg_th', 'LIKE', '%' . $main_orgid . '%')
                ->paginate(10);
            // dd($suborg);
        } elseif (!empty($name_th)) {
            $suborg = DB::table('mt_sub_org')
                ->select('mt_sub_org.id', 'mt_sub_org.name_th as subname', 'mt_sub_org.main_orgid', 'mt_sub_org.name_en', 'mt_sub_org.provinceid', 
                'mt_sub_org.is_active', 'mt_sub_org.ievangelist_number_limit', 'pro.name_th','form2.mainorg_th')
                ->Join('mt_province as pro', 'mt_sub_org.provinceid', 'pro.id', 'pro.name_th')
                ->Join('ers_form2 as form2', 'mt_sub_org.main_orgid','form2.id','form2.mainorg_th')
                ->where('mt_sub_org.name_th', 'LIKE', '%' . $name_th . '%')
                ->paginate(10);
        } elseif (!empty($is_active)) {
            $suborg = DB::table('mt_sub_org')
                ->select('mt_sub_org.id', 'mt_sub_org.name_th as subname', 'mt_sub_org.main_orgid', 'mt_sub_org.name_en', 'mt_sub_org.provinceid',
                 'mt_sub_org.is_active', 'mt_sub_org.ievangelist_number_limit', 'pro.name_th','form2.mainorg_th')
                ->Join('mt_province as pro', 'mt_sub_org.provinceid', 'pro.id', 'pro.name_th')
                ->Join('ers_form2 as form2', 'mt_sub_org.main_orgid','form2.id','form2.mainorg_th')
                ->where('mt_sub_org.is_active', $is_active)
                ->paginate(10);
        } elseif (!empty($provinceid)){
            $suborg = DB::table('mt_sub_org')
                ->select('mt_sub_org.id', 'mt_sub_org.name_th as subname', 'mt_sub_org.name_en', 'mt_sub_org.provinceid', 'mt_sub_org.is_active', 
                'mt_sub_org.ievangelist_number_limit', 'pro.name_th','form2.mainorg_th')
                ->Join('mt_province as pro', 'mt_sub_org.provinceid', 'pro.id', 'pro.name_th')
                ->Join('ers_form2 as form2', 'mt_sub_org.main_orgid','form2.id','form2.mainorg_th')
                ->where('pro.name_th', 'LIKE', '%' . $provinceid . '%')
                ->paginate(10);
        }else {
            $suborg = DB::table('mt_sub_org')
                ->select('mt_sub_org.id', 'mt_sub_org.name_th as subname', 'mt_sub_org.name_en', 'mt_sub_org.provinceid', 'mt_sub_org.is_active', 
                'mt_sub_org.ievangelist_number_limit', 'pro.name_th','form2.mainorg_th')
                ->Join('mt_province as pro', 'mt_sub_org.provinceid', 'pro.id', 'pro.name_th')
                ->Join('ers_form2 as form2', 'mt_sub_org.main_orgid','form2.id','form2.mainorg_th')
                ->paginate(10);
        }

        $type = "search";
        $province = DB::table('mt_province')->get();


        $show = "show";

        // return กลับไปหน้า index
        return view('setting_org.sub_org', compact('suborg', 'name_th', 'is_active', 'province', 'type', 'show', 'main_orgid','provinceid'));
        // return back()->with('show', [$show]);

    }

    // -------------------- End องค์การย่อย ------------------------------------------------------

}
