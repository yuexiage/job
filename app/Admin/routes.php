<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('departme', DepartmeController::class);
    $router->resource('position', PositionController::class);
    $router->resource('education', EducationController::class);
	$router->resource('position_type', PositionTypeController::class);
    $router->resource('city', CityController::class);
});
