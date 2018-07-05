<?php

namespace App\Http\Controllers;
use App\Models\Good;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redis;
class TestController extends Controller
{
    //


    public function test(Request $request){
    	
        $text = $request->input('text');

        Redis::publish('test-channel', $text);
        return view('test');


		/*$data  	= [];
		$j		= 1;
		$start 	= microtime(true);
    	for($i 	=1;$i<=20000;$i++){
    		$data[] = ['goods_sn'=>$faker->numberBetween(10001,20000),'goods_name'=>$faker->name,'prize'=>$faker->numberBetween(20,50)];
    	}
    	$end  	= microtime(true);
    	echo 	'生产第'.$j.'批21000条数据耗时：'.round($end-$start,3).'秒<br>';
    	$start 	= microtime(true);
		Good::
		DB::table('goods')->insert($data);
    	$end  	= microtime(true);
		echo 'InnoDB第'.$j.'批插入20000条数据耗时'.round($end-$start,3).'秒<br>';*/
    }
}
