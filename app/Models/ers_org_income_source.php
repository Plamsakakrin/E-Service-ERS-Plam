<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ers_org_income_source extends Model
{
    use HasFactory;
    use HasFactory;
    public $table="ers_org_income_source";
    public $timestamps = false;
    protected $fillable =['incomesource','ers_form2id'];
}
