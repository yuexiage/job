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
    <title>后台管理系统</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
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