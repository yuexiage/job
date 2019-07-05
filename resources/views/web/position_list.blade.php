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
                    <a class="fl c333 pl20 pr20 border_right" href="javascript:void(0)" id="searchInputTypeArea" title="{{$job_type[$menu]}}招聘">
                        {{$job_type[$menu]}}招聘
                    </a>
                    <input class="fl lh50 h50 outline-none f14 wp66 c999 pl10 jHolder" type="text" placeholder="搜索职位名称" title="搜索职位名称" id="positionNameV" name="positionNameV" value="	IOS高级工">
                    <a class="fr f18 cfff pl46 pr20 bg_search icon bp10" style="padding-right: 10px; background-color: rgb(34, 172, 56);" href="javascript:void(0)" ><i class="layui-icon" style="font-size: 18px;">&#xe615;</i>&nbsp;职位搜索</a>
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
                    <table id="position_list"></table>
                    <input type="hidden" name="type" value="{{$menu}}">






















                    <ul class="overhidden bgc_f4 lh40 f15 c333">
                        <li class="fl ml8 w220" style="width:380px;">职位名称</li>
                        <li class="fl w100 tl" style="width:100px;">职位类别</li>
                        <li class="fl w100 tl" style="width:100px;">工作地点</li>
                        <li class="fl w100 tl" style="width:px;">发布时间</li>
                    </ul>
                    <div id="postList">
                        <ul class="overhidden c333 mt20 lh24">
                            <li class="fl ml8 w220" style="width:380px">
                                <input type="checkbox" class="middle fl" value="182202">
                                <span class="ml10 middle hand fl theme_color postNameC" data-postid="182202" data-recruittype="2" onclick="postDetail(this)" importpost="0" title="高级算法工程师（风险政策）6010" style="max-width:330px;">
                                    高级算法工程师（风险政策）6010
                                </span>
                            </li>
                            <li class="fl w100 tl toe" style="width:100px" title="金融类">金融类</li>
                            <li class="fl w100 tl toe" style="width:100px" title="北京市-海淀区">北京市-海淀区</li>
                            <li class="fl w80 tl" style="width:px">2018-12-07</li>
                            <li class="fl"><i class="layui-icon">&#xe61a;</i></a>
                            </li>
                        </ul>
                        <div class="kuang p20 pr mt10 ml10 mr10" id="182202" style="display: none;">
                            <span class="Clearfix pa left20 top-8">
                                <img src="/wt/images/web/style300/arrow.jpg">
                            </span>
                            <div class="c333 mb10">职位描述</div>
                            <p class="lh20 f12 c666">1、利用多种算法挖掘数据内在的模式和特征，基于业务需求进行专项分析，发现潜在规律；
                                <br>为风险管理提供决策支持；
                                <br>2、深入挖掘多个内外部数据，构建贷前、贷后风险变量集市并定期维护和更新；
                                <br>3、全流程参与特征工程、样本选取、算法训练、模型验证测试、算法部署及冠军挑战等工作。</p>
                            <div class="c333 mt20 mb10">任职要求</div>
                            <p class="lh20 f12 c666">1、计算机、统计学、数学、数理统计等相关专业，本科以上学历；
                                <br>2、熟练掌握python、SQL；
                                <br>3、扎实的理论和算法基础，精通决策树、逻辑回归，随机森林，GBDT等数据挖掘算法；同时掌握无监督算法。
                                <br>4、有信贷、汽车金融相关业务经验优先；
                                <br>5、具备良好的团队协作意识、沟通能力，有较强的学习能力及责任心，能够承担工作压力。</p>
                            <input type="hidden" id="submitUserId_182202" class="lh20 f12 c666" value="391947adfb773d57">
                            <div class="overhidden mt20 ml100">
                                <a class="bg_btn_colo_extend fl lh38 wp23 tc cfff f16 mrp bg_btn_big" href="javascript:void(0)" onclick="positionRegist(182202)">投递此职位</a>
                                <a class="bg_btn_colo_extend fl lh38 wp23 tc cfff f16 mrp bg_btn_big" href="javascript:void(0)" onclick="addAlternativePost(182202)">收藏职位</a>
                            </div>
                        </div>
                    </div>
                    <div id="test1"></div>
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
            var layer = layui.layer
                ,form = layui.form
                ,laypage = layui.laypage,
                table = layui.table;
            var token = $('meta[name="csrf-token"]').attr('content');
            var type  = $('input[name="type"]').val();
            table.render({
                   elem: '#position_list'
                ,method:  'post'
                ,height:  312
                 ,width:  800
                 ,where:  {'_token':token,'type':type,'keyword':'北京'}
                   ,url:   '{{url('/getallpostion/')}}' //数据接口
                  ,page:   true //开启分页
                 ,limit:   20
                  ,cols: [[ //表头
                        {field: 'id', title: 'ID', width:50,align:'center'}
                        ,{field: 'title', title: '职位名称',width:292,templet: '#titleTpl'}
                        ,{field: 'type', title: '职位类别' ,align:'center',width:100,templet: '#positionTypeTpl'}
                        ,{field: 'city_name', title: '工作地点',align:'center',width:100,templet: '#city_nameTpl'}
                        ,{field: 'departme_name', title: '招聘部门',align:'center',width:100,templet: '#departmeTpl'}
                        ,{field: 'created_at', title: '发布时间', align:'center',width:150}
                ]]
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