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
                    <i class="fa fa-home" aria-hidden="true"></i><a href="/">首页</a>&gt;<span class="ml3"><a href="{{url('/position_list/'.$type )}}">{{$job_type[$menu]}}</a>&gt;</span><span class="ml3">职位列表</span>
                </div>
                <div class="mt30 wp94 border_red m0 h50 lh50 pr" style="height:44px;border: 2px solid rgb(34, 172, 56);">
                    <a class="fl c333 pl20 pr20 border_right" href="javascript:void(0)"  title="{{$job_type[$menu]}}招聘">
                        {{$job_type[$menu]}}招聘
                    </a>
                    <input class="fl lh50 h50 outline-none f14 wp66 c999 pl10 jHolder" type="text" placeholder="搜索职位名称" title="搜索职位名称" id="positionNameV" name="positionNameV" value="	IOS高级工">
                    <a class="fr f18 cfff pl46 pr20 bg_search icon bp10" id="searchInputTypeArea" style="padding-right: 10px; background-color: rgb(34, 172, 56);" href="javascript:void(0)" ><i class="layui-icon" style="font-size: 18px;">&#xe615;</i>&nbsp;职位搜索</a>
                </div>
                <div class="m0 wp94 mt20">
                    <input type="hidden" id="workPlaceNameV" name="workPlaceNameV" value="">
                    <div class="overhidden mt15 workPlaceArea">
                        <span class="fl icon  f12 bp7 c999">工作地点</span>
                        <ul class="fl f12 w560 ml15 lh20 mt0">
                              {!! $citys !!}
                        </ul>
                    </div>
                </div>
                <div class="mt22 m0 wp94">
                    <table id="position_list" class="layui-table" lay-data="{id: 'table_id'}"></table>
                    <input type="hidden" name="type" value="{{$menu}}">
                </div>
            </div>
            <div class="w280 fr mb20">
                <div class="w280 bg pt20">
                    <div class="ml20 c333 f18">最新职位</div>
                    @if (count($new_positin_list)>0)
                        @foreach($new_positin_list as $row)
                            <div class="ml20 mt10 border_dashed mr20">
                                <span class="fl bg_btn_green bg_btn_small f10 lh14 cfff mt8 mr10 w30 tc" style="background-color: #FF5722;">{{$job_type[$menu]}}</span>
                                <a class="c666 lh30" href="{{url('/position/id/'.$row->id)}}"><font title="{{$row->title}}">{{$row->title}}</font></a>
                                <div class="f12 c999 overhidden pb10 lh24">
                                    <span class="Clearfix fl mr50  bp4 "><font title="{{isset($row->cityName->name)?$row->cityName->name:''}}" initialletter="B"><i class="fa fa-map-marker" aria-hidden="true"></i>{{isset($row->cityName->name)?$row->cityName->name:''}}</font></span>
                                    <span class="Clearfix fl bp5 pl15"><i class="fa fa-clock-o" aria-hidden="true"></i>{{$row->created_at}}</span>
                                </div>
                            </div>
                        @endforeach
                        <a class="block f12 c999 lh40 tr mr20" href="{{url('/position_list/'.$menu )}}">更多职位&gt;</a>
                    @else
                        <a class="block f12 c999 lh40 tr mr20" href="###">没有更多职位&gt;</a>
                    @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        layui.use(['layer', 'form','laypage','table'], function(){
            var layer       = layui.layer
                ,form       = layui.form
                ,laypage    = layui.laypage,
                table       = layui.table;
            var token       = $('meta[name="csrf-token"]').attr('content');
            var type        = $('input[name="type"]').val();
            var keyword     = $('input[name="positionNameV"]').val();
            var tableIns    = table.render({
                   elem:'#position_list'
                ,method:'post'
                ,height:312
                 ,width:800
                 ,where:{'_token':token,'type':type,'keyword':keyword}
                   ,url: '{{url('/getallpostion/')}}' //数据接口
                  ,page:true //开启分页
                 ,limit:20
                  ,cols:[[ //表头
                        {field: 'id', title: 'ID', width:50,align:'center'}
                        ,{field: 'title', title: '职位名称',width:292,templet: '#titleTpl'}
                        ,{field: 'type', title: '职位类别' ,align:'center',width:100,templet: '#positionTypeTpl'}
                        ,{field: 'city_name', title: '工作地点',align:'center',width:100,templet: '#city_nameTpl'}
                        ,{field: 'departme_name', title: '招聘部门',align:'center',width:100,templet: '#departmeTpl'}
                        ,{field: 'created_at', title: '发布时间', align:'center',width:150}
                ]]
            });
            //搜索
            $("#searchInputTypeArea").click(function () {
                var search     = $('input[name="positionNameV"]').val();
                var where      = {'_token':token,'type':type,'keyword':search};
                tableIns.reload({
                    where: where
                    ,page: {
                        curr: 1 //重新从第 1 页开始
                    }
                });
            });
        });
    </script>
    <script type="text/html" id="titleTpl">
        <a href="/?table-demo-id=@{{d.id}}" class="layui-table-link" target="_blank">@{{ d.title }}</a>
    </script>
    <script type="text/html" id="city_nameTpl">
        <span style="color:#FFB800" >@{{ d.city_name.name }}</span>
    </script>
    <script type="text/html" id="departmeTpl">
        @{{ d.departme_name.departme_name }}
    </script>
    <script type="text/html" id="positionTypeTpl">
        @{{ (d.type==1)?'全职':"兼职" }}
    </script>


@endsection