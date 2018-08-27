<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\BestController;
use App\Models\PositionModel;
use Illuminate\Http\Request;
use Illuminate\Queue\RedisQueue;

class PositionController extends BestController
{
    protected $view_data = [];
    public function __construct(){parent::__construct();}

    public function index($id,Request $request){

        $view_data      = $this->bestinfo;
        $position       = $this->_getPositionDetail($id);
        $view_data['position']          = $position;
        $view_data['new_positin_list']  = $this->_getNewPosition($position->type);
        return view('web/position_item',$view_data);
    }

    /**
     * 获取职位
     * @param $id 职位ID
     * @return mixed
     */
    public function _getPositionDetail($id){
        $where              = [];
        $where['id']        = $id;
        $where['publish']   = 1;
        $position           =  PositionModel::where($where)->with('cityName','experienceName','educationName','departmeName','positionTypeName')->first();
        return $position;
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
