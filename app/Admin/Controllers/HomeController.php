<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Widgets\InfoBox;
class HomeController extends Controller
{
    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header('仪表板');
            $content->description('首页仪表盘');
            $content->row(Dashboard::title());
            $content->row(function (Row $row) {
                $infoBox = new InfoBox('New Users', 'users', 'green', '/admin/users', '1024');
                $row->column(4, function (Column $column) use($infoBox) {
                    $column->append($infoBox);
                });
                $infoBox = new InfoBox('New Users', 'users', 'red', '/admin/users', '1024');
                $row->column(4, function (Column $column) use($infoBox) {
                    $column->append($infoBox);
                });
                $infoBox = new InfoBox('New Users', 'users', 'yellow', '/admin/users', '1024');
                $row->column(4, function (Column $column) use($infoBox) {
                    $column->append($infoBox);
                });
            });
            $content->row(function (Row $row) {
                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::environment());
                });
                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::extensions());
                });
                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::dependencies());
                });
            });
        });
    }
}
