<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ers_org_action extends Model
{
    use HasFactory;
    public $table="ers_org_action";
    public $timestamps = false;
    protected $fillable =['action','ers_form2id'];
}
