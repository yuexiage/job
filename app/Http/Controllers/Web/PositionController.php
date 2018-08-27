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
        $view_data['position'] = $position;

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
}
