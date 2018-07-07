<?php

namespace App\Admin\Controllers;

use App\Models\PositionModel;
use App\Models\DepartmeModel;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class PositionController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('招聘职位');
            $content->description('职位列表');

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

            $content->header('招聘职位');
            $content->description('创建/编辑招聘职位');

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

            $content->header('招聘职位');
            $content->description('创建/编辑招聘职位');

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
        return Admin::grid(PositionModel::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(PositionModel::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title', '标题')->rules('required|max:20');
            $directors = [
                '1'  =>'John',
                '2' => 'Smith',
                '3'  => 'Kate',
            ];
            $form->select('experience', '工作经验')->options($directors)->rules('required');
            $form->select('education', '学历')->options($directors)->rules('required');
            $form->select('city', '招聘地区')->options($directors)->rules('required');
            $form->select('type', '工作类型')->options(['1'=>'兼职','2'=>'全职'])->rules('required');
            $form->select('departme', '招聘部门')->options(DepartmeModel::all()->pluck('departme_name', 'id'))->rules('required');
            $form->select('position_type', '职位')->options($directors)->rules('required');
            $form->number('num', '招聘人数')->rules('required|min:1')->min(1);
            $form->switch('publish', '发布？')->default(1)->rules('required');
            $form->tineditor('description','职位描述')->rules('required');
            $form->tineditor('claim','岗位要求')->rules('required');
            $form->display('created_at', '添加时间');
            $form->display('updated_at', '更改时间');
            
            
        });
    }
}
