<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\BestController;
use App\Models\SlideModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
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
        $view_data              = $this->bestinfo;
        $view_data['slides']    = $this->_getSlides();

        return view('home',$view_data);
    }

    public function _getSlides(){
        $slides = SlideModel::get();
        return $slides;
    }
}
