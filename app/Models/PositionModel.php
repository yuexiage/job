<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PositionModel extends Model
{
    protected $table = 'position';
    public static $type = ['1'=>'全职','2'=>'兼职'];
    /**
     * 城市
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    function cityName(){
        return $this->hasOne(CityModel::class,'id', 'city')->select('id','name');
    }

    /**
     * 工作经验
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    function experienceName(){
        return $this->hasOne(ExperienceModel::class,'id', 'experience');
    }

    /**
     * 学历
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    function educationName(){
        return $this->hasOne(EducationModel::class,'id', 'education');
    }

    /**
     * 招聘部门
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    function departmeName(){
        return $this->hasOne(DepartmeModel::class,'id', 'departme')->select('id','departme_name');
    }

    /**
     * @return mixed
     * 职位类别
     */
    function positionTypeName(){
        return $this->hasOne(PositionTypeModel::class,'id', 'position_type')->select('id','name');
    }
}
