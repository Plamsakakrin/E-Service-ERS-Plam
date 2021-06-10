<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class mt_menu extends Model
{
    use HasFactory;
    protected $table = 'mt_menu';
    protected $primaryKey = 'ID';
    public $timestamps = false;
    protected $fillable = [
        'ID',
        'menu_name',
        'sort_order',
        'fafaicon',
        'link',
    ];
}
