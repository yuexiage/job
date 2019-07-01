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

    /**
     * @param $type     兼职、全职
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index($type,Request $request){

        $view_data                      = $this->bestinfo;
        $view_data['new_positin_list']  = $this->_getNewPosition($type);
        $view_data['type']              = $type;
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

    /**
     * 获取所有招聘信息
     * @param $type 职位性质（全职、兼职）
     */
    public function _getAllPosition($type,$_where=[]){
        $where[]   = ['publish','=',1];
        $where[]   = ['type','=',$type];
        if(count($_where)>0){
            foreach ($_where as $key =>$value){
                switch ($key){
                    case 'like':
                        $where[] = [$value[0],'like',$value[1]];
                        break;
                    default:
                        $where[] = [$key,'=',$value];
                }
            }
        }
        $allPosition        = PositionModel::where($where)->orderBy('created_at','DESC')->with('cityName')->get();
        return $allPosition;
    }

    public function _getPosition($type,$_where=[],$limit=10,$offset=0){
        $where[]   = ['publish','=',1];
        $where[]   = ['type','=',$type];
        if(count($_where)>0){
            foreach ($_where as $key =>$value){
                switch ($key){
                    case 'like':
                        $where[] = [$value[0],'like',$value[1]];
                        break;
                    default:
                        $where[] = [$key,'=',$value];
                }
            }
        }
        $allPosition        = PositionModel::where($where)->limit($limit)->offset($offset)->orderBy('created_at','DESC')->with('cityName')->get();
        return $allPosition;
    }

     public function _getCityLi($type){
         $newPosition  = $this->_getAllPosition($type);
        $html = '';
        foreach ($newPosition as $val){
            if (isset($val->cityName->name) && !isset($citys[$val->cityName->name])){
                $citys[$val->cityName->name] = $val->cityName->name;
                $html.= '<li class="item w75 tc fl" id = "'.$val->cityName->id.'">'.$val->cityName->name.'</li>';
            }
        }
        return $html;
     }

     public function cityList($type){
         $citys                 = $this->_getCityLi($type);
         $view_data['citys']    = $citys;
         return view('web/city_list',$view_data);
     }

     /**
      * 获取所有列表
      */
     public  function getAllPostion($type,Request $request){
         $input     = $request->all();
         $_where    = [];
         $title     = $input['positionNameV'];
         if(trim($title)!=''){
             $_where['like'] = ['title','%'.$title.'%'];
         }
         //TODO 城市判断
         $curr      =   $input['curr'];
         $limit     =   $input['limit'];
         $offset    =   ($curr-1)*$limit;
         $allosition  = $this->_getAllPosition($type,$_where);
         $position  = $this->_getPosition($type,$_where,$limit,$offset);
         $result=['total'=>count($allosition->toArray()),'data'=>$position];
         echo json_encode($result,JSON_FORCE_OBJECT);
     }
}
