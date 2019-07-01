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
                    <input class="fl lh50 h50 outline-none f14 wp66 c999 pl10 jHolder" type="text" placeholder="搜索职位名称" title="搜索职位名称" id="positionNameV" name="positionNameV" value="	IOS高级工">
                    <a class="fr f18 cfff pl46 pr20 bg_search icon bp10" style="padding-right: 10px; background-color: rgb(34, 172, 56);" href="javascript:void(0)" ><i class="layui-icon" style="font-size: 18px;">&#xe615;</i>&nbsp;职位搜索</a>
                </div>
                <div class="m0 wp94 mt20">
                    <input type="hidden" id="workPlaceNameV" name="workPlaceNameV" value="">
                    <div class="overhidden mt15 workPlaceArea">
                        <span class="fl icon  f12 bp7 c999">工作地点</span>
                        <p class="fl f12 w560 ml15 lh20 mt0">
                              <span class="w150 LocalDataUIC  fl" title="选择查询工作地点"  href="javascript:void(0)">
                                  <i class="placeholder"></i>
                                  <span class="items ml5 fl" style="left: 5px; height: 20px;"></span>
                                  <input type="text" readonly="readonly" unselectable="on" class="LocalDataUIC-input jHolder job_city" placeholder="选择查询工作地点">
                                  <!-- <em class="fr icon pl15 f12 bp7 c999" style="height: 20px;"></em> -->
                              </span>
                        </p>
                    </div>
                </div>

                <div class="mt22 m0 wp94">
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
    <script>
        layui.use(['layer', 'form','laypage'], function(){
            var layer = layui.layer
                ,form = layui.form
                ,laypage = layui.laypage;

            function getList(curr,limit){
                var positionNameV  = $("#positionNameV").val();
                var job_city       = $(".job_city").val();
                var info = {'positionNameV':positionNameV,'job_city':job_city,'curr':curr,'limit':limit};
                if($.trim(curr)=='' && $.trim(limit)==''){
                    layer.alert('信息错误');
                }
                $.ajax({
                    method: 'get',
                    url: "{{url('/getallpostion/')}}/{{$type}}",
                    data:info ,
                    async: false,
                    success: function (data) {
                        total = data.total
                        position_list = data.data;
                    }
                })
            }
            getList(1,10);

             laypage.render({
                elem: 'test1'
                ,count: total //数据总数，从服务端得到
                ,jump: function(obj, first){
                    //obj包含了当前分页的所有参数，比如：
                    console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
                    console.log(obj.limit); //得到每页显示的条数
                    if(!first){
                        getList(obj.curr,obj.limit);
                    }
                }
            });





            $(".LocalDataUIC-input").click(function () {
                layer.open({
                    type: 2,
                    shade: false,
                    title:'选择工作地点',
                    area: '500px',
                    content: "{{url('/citylist/')}}/{{$type}}",
                    zIndex: layer.zIndex, //重点1
                    success: function(layero){
                        layer.setTop(layero); //重点2
                    }
                });
            });
        });
    </script>
@endsection