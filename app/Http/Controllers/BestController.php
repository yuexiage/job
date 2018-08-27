<?php

namespace App\Http\Controllers;

use App\Models\PositionModel;
use App\Models\PositionTypeModel;
use App\Models\SettingModel;
use App\Http\Controllers\Controller;

class BestController extends Controller
{
    protected $bestinfo = [];
    public function __construct()
    {
        $this->bestinfo             = $this->_getSetting();
        $this->bestinfo['menu']     = $this->_getMenu();
        $this->bestinfo['job_type'] = PositionModel::$type;
    }

    /**
     * 获取网站信息
     * @return mixed
     */
    public function _getSetting(){
        $setting = SettingModel::first();
        return unserialize($setting->setting);
    }

    /**
     * 获取当前菜单
     */
    public function _getMenu(){
        $menu_name = request()->route()->getAction();
        if(isset($menu_name['as'])){
            switch ($menu_name['as']){
                case 'position_item':
                    $id = request()->id;
                    $type = PositionModel::where('id',$id)->value('type');
                    return $type;
                    break;
                default:
                    return '';
            }
        }else{
            return '';
        }
    }
}
