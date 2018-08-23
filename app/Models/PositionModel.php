<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PositionModel extends Model
{
    protected $table = 'position';

    function cityName(){
        return $this->hasOne(CityModel::class,'id', 'city');
    }
}
