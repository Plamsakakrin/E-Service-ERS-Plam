<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\mt_menu;
use App\Models\mt_menuLv2;

class NavMenuController extends Controller
{
    //
    public function index()
    {
        $menu = mt_menu::select('ID',
                                'menu_name',
                                'sort_order',
                                'fafaicon',
                                'link',)
                        ->OrderBy('sort_order')
                        ->get();

        $menu2 = mt_menuLv2::select('ID',
                                    'menu_name',
                                    'sort_order',
                                    'fafaicon',
                                    'link',
                                    'menu_ID',)
                            ->OrderBy('sort_order')
                            ->get();

        $link = explode('/',request()->path())[0] ?? null;
        $dtMenuID = mt_menuLv2::Select('ID','menu_ID')->Where('link', '/'.$link)->first();
        foreach($dtMenuID as $key => $d)
        {
            $menu_Active = $dtMenuID->menu_ID;
            $menu_Active2 = $dtMenuID->ID;
        }

        return view('NavMenu',
        [
            'menu_Active' => $menu_Active,
            'menu_Active2' => $menu_Active2,
            'dtMenu' => $menu,
            'dtMenu2' => $menu2
        ]);
    }
}
