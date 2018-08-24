<?php
/**
 * Created by PhpStorm.
 * User: yuexiage
 * Date: 2018/7/9
 * Time: 14:19
 */
?>
@extends('layouts.app')
@section('title', $site_name)
@section('keywords', $keywords)
@section('description', $description)
@section('footer', $footer)
@section('content')
    <link href="{{ asset('css/swiper.min.css?v=') }}{{time()}}" rel="stylesheet">
    {{--slide--}}
    <div class="site-banner">
        <div class="tm-section tm-bg-img" id="tm-section-1">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    @foreach($slides as $row)
                    <div class="swiper-slide">
                        @if(empty($row->href))
                            <img src='{{asset($row->img)}}' width="100%">
                        @else
                            <a href="{{$row->href}}">
                                <img src='{{asset($row->img)}}' width="100%">
                            </a>
                        @endif;
                    </div>
                    @endforeach
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
    {{--relative--}}
    <div class="tm-section tm-position-relative">
        <div class="container tm-pt-5 tm-pb-4">
            <div class="row">
                <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">
                    <i class="fa tm-fa-6x fa-legal tm-color-primary tm-margin-b-20"></i>
                    <h3 class="tm-color-primary tm-article-title-1">最新</h3>
                    <div class="position_list">
                        <ul>
                            @foreach($newposition as $row)
                                <li><a href="{{url('/position/id/'.$row->id)}}">[{{isset($row->cityName->name)?$row->cityName->name:''}}] {{$row->title}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </article>
                <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">
                    <i class="fa tm-fa-6x fa-plane tm-color-primary tm-margin-b-20"></i>
                    <h3 class="tm-color-primary tm-article-title-1">热门</h3>
                    <div class="position_list">
                        <ul>
                            @foreach($hotposition as $row)
                                <li><a href="{{url('/position/id/'.$row->id)}}">[{{isset($row->cityName->name)?$row->cityName->name:''}}] {{$row->title}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </article>
                <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">
                    <i class="fa tm-fa-6x fa-life-saver tm-color-primary tm-margin-b-20"></i>
                    <h3 class="tm-color-primary tm-article-title-1">急聘</h3>
                    <div class="position_list">
                        <ul>
                            @foreach($expeditedposition as $row)
                                <li><a href="{{url('/position/id/'.$row->id)}}">[{{isset($row->cityName->name)?$row->cityName->name:''}}] {{$row->title}}</a></li>
                            @endforeach
                        </ul>
                    </div>
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