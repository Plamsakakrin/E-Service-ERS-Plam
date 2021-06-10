<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ers_org_objective extends Model
{
    use HasFactory;
    public $table="ers_org_objective";
    public $timestamps = false;
    protected $fillable =['objective','ers_form2id'];
}
