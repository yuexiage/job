<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\BestController;
use App\Models\PositionModel;
use Illuminate\Http\Request;
use Illuminate\Queue\RedisQueue;

class PositionListController extends BestController
{
    protected $view_data = [];
    public function __construct(){parent::__construct();}

    public function index($type,Request $request){

        $view_data      = $this->bestinfo;

        $view_data['new_positin_list']  = $this->_getNewPosition($type);
        return view('web/position_list',$view_data);
    }


    /**
     * 获取最新招聘职位
     * @param $type 职位性质（全职、兼职）
     */
    public function _getNewPosition($type){
        $where              = [];
        $where['publish']   = 1;
        $where['type']      = $type;
        $newPosition        = PositionModel::where($where)->limit(10)->orderBy('created_at','DESC')->with('cityName')->get();
        return $newPosition;
    }
}
