<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class main_orgController extends Controller
{


    public function addmain_org(){
        return view ('admin.addmain_org');
    }

}
