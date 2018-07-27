<?php

namespace App\Admin\Controllers;

use App\Models\SettingModel;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class SettingController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        $first = SettingModel::first();
        $id = $first->id;
        if($id){
            return redirect('/admin/setting/'.$id.'/edit');
        }else{
            return redirect('/admin/setting/create');
        }
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

            $content->header('编辑');
            $content->description('编辑配置信息');

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
        return Admin::grid(SettingModel::class, function (Grid $grid) {

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
        return Admin::form(SettingModel::class, function (Form $form) {
            $form->tools(function (Form\Tools $tools) {
                // 去掉返回按钮
                $tools->disableBackButton();
                // 去掉跳转列表按钮
                $tools->disableListButton();
            });
            $first = SettingModel::first();
            $fields = unserialize($first->setting);
            $form->text('field[site_name]','网站名称')->placeholder('请输入网站名称')->rules('required')->default($fields['site_name']);
            $form->textarea('field[keywords]','关键字')->rows(3)->help('英文逗号分隔')->default($fields['keywords']);
            $form->textarea('field[description]','解释说明')->rows(3)->default($fields['description']);
            $form->tineditor('field[footer]','底部说明')->default($fields['footer']?$fields['footer']:'可以添加版权信息');
            $form->hidden('setting');
            $form->saving(function (Form $form){
                $form->setting  = serialize($form->field);
            });
            $form->saved(function (Form $form) {

            });
        });
    }
}
