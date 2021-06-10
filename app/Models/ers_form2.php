<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ers_form2 extends Model
{
    public $table="ers_form2";
    public $timestamps = false;
    protected $fillable = ['history_org','under_unit','religion_detail1','religion_detail2','office_address'
    ,'office_street','office_provinceid','office_districtid','office_subdistrictid','office_posecode'
    ,'total_member','male_member','female_member','evangelist_number_limit','evangelist_number','doctor_number'
    ,'nurse_number','other_number','current_evangelist_sq','year_plan_period'
    ,'prefix','fname','lname','old','street','address','posecode','guarantee_by','guarantee_position'
    ,'doc_status','race','nationality','religion','provinceid','districtid','sub_districtid','update_by','create_by','mainorg_en','mainorg_th','update_date'];
}
