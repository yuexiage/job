@extends('layouts.app')
@section('title', $site_name)
@section('keywords', $keywords)
@section('description', $description)
@section('footer', $footer)
@section('content')
    <div class="container-fluid position_main">
        <div class="position_panel w1200 ">
            <div class="w680 fl bg mb20">
                <div class="collection">
                    <img src="{{url('images/sc.png')}}" alt="">
                </div>
                <div class="mt20 breadcrumb c999 f12 icon pl20 bp1">
                    <i class="fa fa-home" aria-hidden="true"></i>&nbsp;首页&gt;<span class="ml3">{{$job_type[$menu]}}&gt;</span><span class="ml3">{{$position->title}}</span>
                </div>
                <div class="f28 c333 mt30 ml20">
                    【{{isset($position->departmeName->departme_name)?$position->departmeName->departme_name:''}}】{{$position->title}}
                </div>
                <div class="mt30 ml20 mr20 p20 bgc_f4">
                    <ul class="c999 overhidden lh24">
                        <li class="fl wp33-3">
                            工作地点：
                            <span class="c333">
							    <span title="{{isset($position->cityName->name)?$position->cityName->name:''}}">
                                    {{isset($position->cityName->name)?$position->cityName->name:''}}</span>
								</span>
                        </li>
                        <li class="fl wp33-3">工作经验：
                            <span class="c333">
                                <font title="{{isset($position->experienceName->name)?$position->experienceName->name:''}}">
                                {{isset($position->experienceName->name)?$position->experienceName->name:''}}
                                </font>
                            </span>
                        </li>
                        <li class="fl wp33-3">
                            <span class="mr28">
                                <span>学　　历：</span>
                                <span class="c333">
                                    <font title="{{isset($position->educationName->name)?$position->educationName->name:''}}">
                                        {{isset($position->educationName->name)?$position->educationName->name:''}}
                                    </font>
                                </span>
                            </span>
                        </li>
                    </ul>
                    <ul class="c999 overhidden lh24">
                        <li class="fl wp33-3">工作类型：
                            <span class="c333">
                                <font title="{{$job_type[$menu]}}" initialletter="Q">
                                    {{$job_type[$menu]}}
                                </font>
								</span>
                        </li>
                        <li class="fl wp33-3">招聘人数：
                            <span class="c333">
                                @if($position->num==0)
                                    若干
                                    @else
                                    {{$position->num}}人
                                @endif
							</span>
                        </li>
                        <li class="fl wp33-3">发布时间：
                            <span class="c333">{{$position->created_at}}</span>
                        </li>
                    </ul>
                </div>

                <div class="mt25 ml20 mr20">
                    <div class="f18 c333 mb15">职位描述</div>
                   {!! $position->description !!}
                    <div class="f18 c333 mb15 mt20">任职要求</div>
                    {!! $position->claim !!}

                    <div class="overhidden mt40 wp90 m0 mb50 ml100" style="margin-top:50px;">
                        <button class="layui-btn layui-col-md2 layui-col-md-offset5">
                            <i class="layui-icon">&#xe609;</i> 投递此职位
                        </button>
                    </div>
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