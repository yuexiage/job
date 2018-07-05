<?php

use Faker\Generator as Faker;

$factory->define(\App\Models\Good::class, function (\Faker\Generator $faker) {
    return [
        'goods_sn' => $faker->numberBetween(10001,20000),
        'goods_name' =>$faker->name, 
        'prize' => $faker->numberBetween(20,50)
    ];
});