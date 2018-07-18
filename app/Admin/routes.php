<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/', 'HomeController@index');
    $router->resource('departme', DepartmeController::class);                           #部门
    $router->post('position/publish', 'PositionController@publish');                     #批量发布
    $router->resource('position', PositionController::class);                           #招聘职位
    $router->resource('education', EducationController::class);                         #学历
	$router->resource('position_type', PositionTypeController::class);                  #职位类别
    $router->resource('city', CityController::class);
    $router->resource('experience', ExperienceController::class);                       #工作经验
    $router->resource('setting', SettingController::class);                             #工作经验
});
