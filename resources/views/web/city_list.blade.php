<link href="{{ asset('css/home_base.css?v=') }}{{time()}}" rel="stylesheet">
<ul class="cityactive">
    <li class="all active w75">全部</li>
    <li class="cityactive_left w75 center"></li>
    <li class="cityactive_right w75">当前选择：<span class="cityname"></span></li>
</ul>
<ul class="citylist">

    {!! $citys !!}

</ul>
