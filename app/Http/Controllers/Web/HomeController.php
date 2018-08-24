<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\BestController;
use App\Models\PositionModel;
use App\Models\SlideModel;
use Illuminate\Http\Request;
class HomeController extends BestController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    protected $view_data = [];
    public function __construct()
    {
        parent::__construct();
        #$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $view_data                  = $this->bestinfo;
        //获取幻灯片
        $view_data['slides']        = $this->_getSlides();
        //最新招聘
        $view_data['newposition']   = $this->_getNewPosition();
        //获取热门招聘
        $view_data['hotposition']   = $this->_getHotPosition();
        //获取急聘信息
        $view_data['expeditedposition']   = $this->_getExpeditedPosition();
        return view('home',$view_data);
    }

    /**
     * 获取幻灯片
     * @return mixed
     */
    public function _getSlides(){
        $slides = SlideModel::get();
        return $slides;
    }

    /**
     * 获取最新招聘信息
     * @return mixed
     */
    public function _getNewPosition(){
        $newPosition = PositionModel::where('publish',1)->limit(5)->orderBy('created_at','DESC')->with('cityName')->get();
        return $newPosition;
    }

    /**
     * 获取热门招聘
     * @return mixed
     */
    public function _getHotPosition(){
        $hotPosition = PositionModel::where('publish',1)->limit(5)->orderBy('delivery','DESC')->with('cityName')->get();
        return $hotPosition;
    }

    /**
     * 获取急聘信息
     * @return mixed
     */
    public function _getExpeditedPosition(){
        $expeditedPosition = PositionModel::where(['publish'=>1,'expedited'=>1])->limit(5)->orderBy('created_at','DESC')->with('cityName')->get();
        return $expeditedPosition;
    }
}
