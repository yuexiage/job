<?php

namespace App\Admin\Controllers;

use App\Models\DepartmeModel;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Auth\Permission;
class DepartmeController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        $departme = Admin::user()->departme;
        return Admin::content(function (Content $content) {

            $content->header('部门管理');
            $content->description('公司部门结构架构');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(DepartmeModel::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->departme_name('部门名称')->sortable();
            $grid->alias('别名')->sortable();
            #$grid->created_at();
            #$grid->updated_at();
            $grid->filter(function ($filter) {
                $filter->between('created_at', 'Created Time')->datetime();
                $filter->in('id',' ID')->multipleSelect(['key' => 'value']);
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(DepartmeModel::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('departme_name', '部门名称')->rules('required');
            $form->text('alias', '别名')->rules('required');
            #$form->display('created_at', '创建时间');
            #$form->display('updated_at', '修改时间');
        });
    }
}
