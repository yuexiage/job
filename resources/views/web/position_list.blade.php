@extends('layouts.app')
@section('title', $site_name)
@section('keywords', $keywords)
@section('description', $description)
@section('footer', $footer)
@section('content')
    <div class="container-fluid position_main">
        <div class="position_panel w1200 ">
            <div class="w680 fl bg mb20">
                <div class="mt20 breadcrumb c999 f12 icon pl20 bp1">
                    <i class="fa fa-home" aria-hidden="true"></i>&nbsp;首页&gt;<span class="ml3">{{$job_type[$menu]}}&gt;</span><span class="ml3">职位列表</span>
                </div>
                <div class="mt30 wp94 border_red m0 h50 lh50 pr" style="height:44px;border: 2px solid rgb(34, 172, 56);">
                    <a class="fl c333 pl20 pr20 border_right" href="javascript:void(0)" id="searchInputTypeArea" title="{{$job_type[$menu]}}招聘">
                        {{$job_type[$menu]}}招聘
                    </a>
                    <input class="fl lh50 h50 outline-none f14 wp66 c999 pl10 jHolder" type="text" placeholder="搜索职位名称" title="搜索职位名称" id="positionNameV" name="positionNameV" value="">
                    <a class="fr f18 cfff pl46 pr20 bg_search icon bp10" style="padding-right: 10px; background-color: rgb(34, 172, 56);" href="javascript:void(0)" onclick="searchPost()"><i class="layui-icon" style="font-size: 18px;">&#xe615;</i>&nbsp;职位搜索</a>
                </div>

















            </div>
            <div class="w280 fr mb20">
                <div class="w280 bg pt20">
                    <div class="ml20 c333 f18">最新职位</div>
                    @foreach($new_positin_list as $row)
                        <div class="ml20 mt10 border_dashed mr20">
                            <span class="fl bg_btn_green bg_btn_small f10 lh14 cfff mt8 mr10 w30 tc" style="background-color: #FF5722;">{{$job_type[$row->type]}}</span>
                            <a class="c666 lh30" href="{{url('/position/id/'.$row->id)}}"><font title="{{$row->title}}">{{$row->title}}</font></a>
                            <div class="f12 c999 overhidden pb10 lh24">
                                <span class="Clearfix fl mr50  bp4 "><font title="{{isset($row->cityName->name)?$row->cityName->name:''}}" initialletter="B"><i class="fa fa-map-marker" aria-hidden="true"></i>{{isset($row->cityName->name)?$row->cityName->name:''}}</font></span>
                                <span class="Clearfix fl bp5 pl15"><i class="fa fa-clock-o" aria-hidden="true"></i>{{$row->created_at}}</span>
                            </div>
                        </div>
                    @endforeach
                    <a class="block f12 c999 lh40 tr mr20" href="{{url('/position_list/'.$row->type )}}">更多职位&gt;</a>
                </div>

            </div>
        </div>
    </div>

@endsection