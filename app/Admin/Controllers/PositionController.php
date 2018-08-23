<?php

namespace App\Admin\Controllers;

use App\Models\CityModel;
use App\Models\PositionModel;
use App\Models\DepartmeModel;
use App\Models\EducationModel;
use App\Models\PositionTypeModel;
use App\Models\ExperienceModel;
use Illuminate\Http\Request;
use App\Admin\Extensions\Tools\Publish;

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
            $isAdmin = Admin::user()->isAdministrator();
            if(!$isAdmin){
                $departme = Admin::User()->departme;
                $grid->model()->where('departme',$departme);
            }
            $grid->id('ID')->sortable();
            $grid->title('标题')->editable()->sortable();
            $grid->city('城市')->display(function($id) {
                return CityModel::find($id)->name;
            })->sortable();
            $grid->education('学历')->display(function($id) {
                return EducationModel::find($id)->name;
            })->sortable();
            $grid->experience('工作经验')->display(function($id) {
                return ExperienceModel::find($id)->name;
            })->sortable();
            $grid->departme('招聘部门')->display(function($id) {
                return DepartmeModel::find($id)->departme_name;
            })->sortable();
            $grid->position_type('职位类型')->display(function($id) {
                return PositionTypeModel::find($id)->name;
            })->sortable();
            $grid->num('招聘人数')->label();
            $grid->delivery('投递数量')->label();
            $grid->type('工作类型')->display(function($id) {
                $type = ['1'=>'兼职','2'=>'全职'];
                return $type[$id];
            })->sortable();
            $grid->publish('发布')->switch();
            $grid->filter(function($filter){
                // 去掉默认的id过滤器
                $filter->disableIdFilter();
                // 在这里添加字段过滤器
                $filter->like('title', '标题');
                $filter->equal('city','城市')->select(CityModel::all()->pluck('name', 'id'));
                $filter->equal('education','学历')->select(EducationModel::all()->pluck('name', 'id'));
                $filter->equal('experience','工作经验')->select(ExperienceModel::all()->pluck('name', 'id'));
                $filter->equal('departme','招聘部门')->select(DepartmeModel::all()->pluck('departme_name', 'id'));
                $filter->equal('position_type','职位类型')->select(PositionTypeModel::all()->pluck('name', 'id'));
                $filter->equal('type','工作类型')->select(['1'=>'兼职','2'=>'全职']);
            });
            $grid->tools(function ($tools) {
                $tools->batch(function ($batch) {
                    $batch->add('发布', new Publish(1));
                    $batch->add('下线', new Publish(0));
                });
            });
            $grid->created_at( '添加时间');
            $grid->updated_at('更改时间');
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
            $form->select('experience', '工作经验')->options(ExperienceModel::all()->pluck('name', 'id'))->rules('required');
            $form->select('education', '学历')->options(EducationModel::all()->pluck('name', 'id'))->rules('required');
            $form->select('city', '招聘地区')->options(CityModel::all()->pluck('name', 'id'))->rules('required');
            $form->select('type', '工作类型')->options(['1'=>'兼职','2'=>'全职'])->rules('required');

            $isAdmin = Admin::user()->isAdministrator();
            if(!$isAdmin){
                $id      = Admin::User()->departme;
                $options =DepartmeModel::all()->where('id',$id)->pluck('departme_name', 'id');
            }else{
                $options =DepartmeModel::all()->pluck('departme_name', 'id');
            }
            $form->select('departme', '招聘部门')->options($options)->rules('required');
            $form->select('position_type', '职位')->options(PositionTypeModel::all()->pluck('name', 'id'))->rules('required');
            $form->number('num', '招聘人数')->rules('required|min:1')->min(1);
            $form->switch('publish', '发布？')->default(1)->rules('required');
            $form->tineditor('description','职位描述')->rules('required');
            $form->tineditor('claim','岗位要求')->rules('required');
            $form->display('created_at', '添加时间');
            $form->display('updated_at', '更改时间');
        });
    }

    public function publish(Request $request){
        foreach (PositionModel::find($request->get('ids')) as $position) {
            $position->publish = $request->get('action');
            $position->save();
        }
    }
}
