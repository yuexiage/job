<?php

namespace App\Http\Middleware;

use Route;
use Closure;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Middleware\Pjax;
use Illuminate\Support\Facades\Auth;
class AdminCheckCustom
{
    /**
     * Handle an incoming request.
     * 验证不同部门权限
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(!is_null(Auth::guard('admin')->user())){
            if(!Admin::user()->isAdministrator()){
                $departme       = Admin::user()->departme;
                $action         = Route::current()->getActionName();
                list($class, $action) = explode('@', $action);
                $controller     = substr(strrchr($class,'\\'),1);
                $controllers    = ['DepartmeController'];                                           #判断验证的控制器
                if(in_array($controller,$controllers)){
                    if(!Admin::user()->can(strtolower($departme.'.'.$controller))){                 #判断只包含控制器的权限
                        if(!Admin::user()->can(strtolower($departme.'.'.$controller.'.'.$action))){  #判断包含控制器和方法的权限
                            $response = response(Admin::content()->withError(trans('admin.deny')));
                            Pjax::respond($response);
                        }
                    }
                }
            }
        }
        return $next($request);
    }
}
