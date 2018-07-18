<?php
/**
 * Created by PhpStorm.
 * User: yuexiage
 * Date: 2018/7/9
 * Time: 14:19
 */
?>
@extends('layouts.app')
@section('content')
    <link href="{{ asset('css/swiper.min.css?v=') }}{{time()}}" rel="stylesheet">
    {{--header--}}
    <div class="layui-header header header-index tm-top-bar" summer="">
        <div class="layui-main">
            <a class="logo" href="/">
                <img src="//res.layui.com/static/images/layui/logo.png" alt="layui">
            </a>
            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item  layui-this"><a href="">首页</a></li>
                <li class="layui-nav-item"><a href="">全职招聘</a></li>
                <li class="layui-nav-item"><a href="">兼职招聘</a></li>
                <li class="layui-nav-item"><a href="">关于我们</a></li>
            </ul>
        </div>
    </div>
    {{--slide--}}
    <div class="site-banner">
        <div class="tm-section tm-bg-img" id="tm-section-1">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src='images/552ed9fee0b4b10a.jpg' width="100%"></div>
                    <div class="swiper-slide"><img src='images/d8ff34b6513abf17.jpg' width="100%"></div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
    {{--relative--}}
    <div class="tm-section tm-position-relative">
        <div class="container tm-pt-5 tm-pb-4">
            <div class="row text-center">
                <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">
                    <i class="fa tm-fa-6x fa-legal tm-color-primary tm-margin-b-20"></i>
                    <h3 class="tm-color-primary tm-article-title-1">最新</h3>
                    <p>Pellentesque at velit ante. Duis scelerisque metus vel felis porttitor gravida. Donec at felis libero. Mauris odio tortor.</p>
                    <a href="#" class="text-uppercase tm-color-primary tm-font-semibold">Continue reading...</a>
                </article>
                <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">
                    <i class="fa tm-fa-6x fa-plane tm-color-primary tm-margin-b-20"></i>
                    <h3 class="tm-color-primary tm-article-title-1">热门</h3>
                    <p>Pellentesque at velit ante. Duis scelerisque metus vel felis porttitor gravida. Donec at felis libero. Mauris odio tortor.</p>
                    <a href="#" class="text-uppercase tm-color-primary tm-font-semibold">Continue reading...</a>
                </article>
                <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">
                    <i class="fa tm-fa-6x fa-life-saver tm-color-primary tm-margin-b-20"></i>
                    <h3 class="tm-color-primary tm-article-title-1">急聘</h3>
                    <p>Pellentesque at velit ante. Duis scelerisque metus vel felis porttitor gravida. Donec at felis libero. Mauris odio tortor.</p>
                    <a href="#" class="text-uppercase tm-color-primary tm-font-semibold">Continue reading...</a>
                </article>
            </div>
        </div>
    </div>
    <div class="tm-section tm-section-pad tm-bg-img tm-position-relative" id="tm-section-6">
        <div class="container ie-h-align-center-fix">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-7">
                    <div id="google-map"></div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 col-xl-5 mt-3 mt-md-0">
                    <div class="tm-bg-white tm-p-4">
                        <form action="index.html" method="post" class="contact-form">
                            <div class="form-group">
                                <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name" required="">
                            </div>
                            <div class="form-group">
                                <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email" required="">
                            </div>
                            <div class="form-group">
                                <input type="text" id="contact_subject" name="contact_subject" class="form-control" placeholder="Subject" required="">
                            </div>
                            <div class="form-group">
                                <textarea id="contact_message" name="contact_message" class="form-control" rows="9" placeholder="Message" required=""></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary tm-btn-primary">Send Message Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer f12 c999" style="background: rgb(42, 44, 55);">
        <div class="text-info" style="padding-top: 4px;">
            <span>已通过ISO27001:2013 信息安全认证</span>
        </div>
        <div class="text-info" style="margin-top: -13px;">
            <span><div style="text-align:center"><span style="color:#D3D3D3">Copyright © 2018 瓜子二手车直卖网 &nbsp;Powered By&nbsp;</span><a href="http://www.dayee.com" target="_blank"><span style="color:#D3D3D3">Dayee</span></a></div></span>
        </div>
    </div>
    <script src="{{ asset('js/swiper.min.js?v=') }}{{time()}}"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            pagination: {
                el: '.swiper-pagination',
            },
        });
    </script>
    <script>
        $(window).on("scroll", function() {
            if($(window).scrollTop() > 100) {
                $(".tm-top-bar").addClass("active");
            } else {
                //remove the background property so it comes transparent again (defined in your css)
                $(".tm-top-bar").removeClass("active");
            }
        });
    </script>
@endsection