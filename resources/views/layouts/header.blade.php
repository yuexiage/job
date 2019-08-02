<?php
/**
 * Created by PhpStorm.
 * User: yuexiage
 * Date: 2018/7/9
 * Time: 14:13
 */
?>
<!DOCTYPE html>
<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <title>@yield('title')</title>
    <meta name="keywords" content="@yield('keywords')">
    <meta name="description" content=@yield('description')"">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
	<link rel="shortcut icon" href="favicon.ico">
    <link href="{{ asset('css/bootstrap.min.css?v=3.3.6')}}{{time()}}" rel="stylesheet">
    <link href="{{ asset('css/font-awesome.min.css?v=') }}{{time()}}" rel="stylesheet">
    <link href="{{ asset('js/layui/css/layui.css?v=') }}{{time()}}" rel="stylesheet">
    <link href="{{ asset('css/home_base.css?v=') }}{{time()}}" rel="stylesheet">
    <script src="{{ asset('js/jquery.min.js?v=2.1.4') }}{{time()}}"></script>
    <script src="{{ asset('js/layui/layui.js?v=1.0.0') }}{{time()}}"></script>
    <script src="{{ asset('js/bootstrap.min.js?v=3.3.6') }}{{time()}}"></script>
</head>
<body>
{{--header--}}
<div class="layui-header header header-index tm-top-bar" summer="">
    <div class="layui-main">
        <a class="logo" href="/">
            <img src="//res.layui.com/static/images/layui/logo.png" alt="layui">
        </a>
        <ul class="layui-nav" lay-filter="">
            <li class="layui-nav-item
            @if(!empty(session('bestinfo')['menu']))
            layui-this
            @endif
            "><a href="/">首页</a></li>
            @foreach(session('bestinfo')['job_type'] as $key=> $row)
            <li class="layui-nav-item {{session('bestinfo')['menu']==$key?'layui-this':''}}" ><a href="{{url('/position_list/'.$key )}}">{{$row}}</a></li>
            @endforeach
            <li class="layui-nav-item"><a href="">关于我们</a></li>
            @if (Route::has('login'))
                @auth
                    <a href="{{ url('/home') }}">Home</a>
                @else
                    <li class="layui-nav-item">
                    <a href="{{ route('login') }}">{{ __('login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="layui-nav-item">
                        <a href="{{ route('register') }}">{{ __('register') }}</a>
                        </li>
                    @endif
                @endauth
            @endif
        </ul>
    </div>
</div>