<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class mt_sub_org extends Model
{
    use HasFactory;
    public $table="mt_sub_org";
    public $timestamps = false;
    protected $fillable = ['main_orgid','name_th','name_en','address'
                            ,'street','zip_code','provinceid','districtid'
                            ,'sub_districtid','phone_number','email','ievangelist_number_limit'
                            ,'is_active','create_by','create_date','update_by','update_date'];
}
