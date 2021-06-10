<nav class="mt-2">
    <ul class="nav nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
        @foreach ($dtMenu as $key => $d)
            <li class="nav-item @if($menu_Active == $d['ID']) menu-is-opening menu-open @endif">
                <a href="{{$d['link']}}" class="nav-link w-100 @if($menu_Active == $d['ID']) active @endif" style="background:  transparent; box-shadow: none">
                <i class="{{$d['fafaicon']}} nav-icon"></i>
                <p class="w-auto">
                    {{$d['menu_name']}}
                </p>
                @foreach ($dtMenu2 as $key => $d2)                    
                @if ($d['ID'] == $d2['menu_ID'])
                    <i class="right fas fa-angle-left"></i>
                    @break
                @endif
                @endforeach
                </a>
                @foreach ($dtMenu2 as $key => $d2)                    
                @if ($d['ID'] == $d2['menu_ID'])
                    <ul class="nav nav-treeview" style="display: @if($menu_Active == $d['ID']) block @else none @endif;">
                        <li class="nav-item">
                            <a href="{{$d2['link']}}" class="nav-link w-100 @if($menu_Active2 == $d2['ID']) active2 @endif" style="color: #000000">
                            <i class="far @if($menu_Active2 == $d2['ID']) fa-check-circle @else fa-circle @endif  nav-icon"></i>
                            <p class="w-auto">{{$d2['menu_name']}}</p>
                            </a>
                        </li>
                    </ul>
                @endif
                @endforeach
            </li>
        @endforeach
    </ul>
</nav>