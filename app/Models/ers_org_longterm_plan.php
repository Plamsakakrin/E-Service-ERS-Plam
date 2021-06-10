<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ers_org_longterm_plan extends Model
{
    use HasFactory;
    public $table="ers_org_longterm_plan";
    public $timestamps = false;
    protected $fillable =['plan_type','plan_detail','ers_form2id'];

}
