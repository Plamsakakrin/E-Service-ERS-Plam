@extends('layouts.master')
@section('content')
<div class="container">
    <div class="row mb-2">
        <div class="col-6">
            <label class="text-header">องค์การทางศาสนา</label>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-4 pl-2">
                    <a href="{{route('searchbig_org')}}">
                        <div class="cardd card-1" style="height:140px; text-align:center; border: none;">
                            <!-- <i class="fa fa-file-video-o" aria-hidden="true" style="font-size:100px; background-color:orang;"></i> -->
                            <!-- <hr> -->
                            <br>
                            <h3>องค์การทางศาสนา <br>(องค์การใหญ่)</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 mb-4 pl-2">
                    <a href="{{route('searchsub_org')}}">
                        <div class="cardd card-3" style="height:140px; text-align:center; border: none;">
                            <br>
                            <h3>องค์การทางศาสนา <br>(องค์การย่อย)</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

</div>





@endsection
