<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();


Route::group(['namespace' => 'Web'], function () {
    Route::get('/', 'HomeController@index');
    Route::get('/home', 'HomeController@index');
    Route::get('/position/id/{id}', 'PositionController@index')->name('position_item');
    Route::get('/position_list/{type}', 'PositionListController@index')->name('position_list');
    Route::get('/citylist/{type}', 'PositionListController@cityList')->name('citylist');
    #Route::get('/getallpostion/{type}', 'PositionListController@getAllPostion')->name('get_all_postion');
    Route::post('/getallpostion', 'PositionListController@selectPositionDate')->name('get_all_postion');
});









Route::get('/test', 'TestController@test');
Route::post('/test', 'TestController@test');
Route::get('publish', function () {
    // Route logic...
    Redis::publish('test-channel', json_encode(['foo' => 'bar']));
});