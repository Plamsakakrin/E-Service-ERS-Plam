<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class mt_menuLv2 extends Model
{
    use HasFactory;
    protected $table = 'mt_menulv2';
    protected $primaryKey = 'ID';
    public $timestamps = false;
    protected $fillable = [
        'ID',
        'menu_name',
        'sort_order',
        'fafaicon',
        'link',
        'menu_ID',
    ];
}
