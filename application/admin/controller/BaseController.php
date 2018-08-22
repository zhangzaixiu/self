<?php
namespace app\admin\controller;

use app\common\model\UserMenuModel;
use think\Controller;

class BaseController extends Controller
{

    //验证失败时抛出异常
    protected $failException = true;


    static  $current_menu = [];


    public $userId = '';


    protected function initialize()
    {
        //判断是否登录
        $request = request();

        $controller=$request->controller();

        $module= $request->module();

//        var_dump(phpinfo());die;
//        $userId = session('userId');
//
//        $user = session("user");

//        if($controller !='Login' || $module != 'admin' ){
//            if( empty($userId) || empty($user) ){
//                if(think\Request::instance()->isAjax()){
//                    return json(array('code' => 2, 'data' => [], 'msg' => '请重新登录'));
//                }else{
//                    return $this->redirect('login/login');
//                }
//
//            }
//        }


//        $this->userId = $userId;
        //菜单初始化
        $menu = $this->initmenu();
//var_dump($menu);die;
        //面包屑
        $bread = UserMenuModel::getCurrentMenu('admin');
        $menu_id = '';
        $menu_parent_id = '';
        if(!empty($bread)){
            $menu_id = $bread['id'];
            self::$current_menu[$bread['level']] = ['name'=>$bread['name'],'id'=>$bread['id']];
            $this->currentMenuArr($bread['parent_id']);
            $menu_parent_id = self::$current_menu[1]['id'];
            ksort(self::$current_menu);
        }
        $this->assign('menu',$menu);
//        $this->assign('current_user',$user);
        $this->assign('menu_id',$menu_id);
        $this->assign('menu_parent_id',$menu_parent_id);
        $this->assign('current_menu',self::$current_menu);

        //检验操作权限
//        $menu_arr=explode(',',session("user.menuIds"));
//        if(!empty($bread) && $bread['ismenu']){
//            if(!in_array($menu_id,$menu_arr) && session("user.roleId") != 1 && $controller !='Login' && $controller !='Index'){
//                $this->error('没有操作权限');
//            }
//        }

    }

    /***
     * 根据用户角色初始化菜单
     */
    function initmenu(){
        $roleId=session("user.id");
        $menus=[];
//        if (empty($roleId)) {
//            return $menus;
//        }
        $con = [
            ['level', '<', 3],
            ['model', '=', 'admin'],
        ];
//        $con['level'] = ['<',3];
//        $con['model'] = 'admin';
//        if($roleId !=1){//如果非超级管理员
//            $con['id'] = ['in',session("user.menuIds")];
//        }

//        $rlt=getDataList("userMenu",$con,"name as  title,url,icon,id,flag,level,parentId","level asc,sort desc");
        $rlt =UserMenuModel::where($con)->field(['name as  title','url','icon','id','is_show','level','parent_id'])->order(['level'=>'asc','sort'=>'desc'])->select()->toarray();
        foreach ($rlt as $k =>$v){
            if($v['level'] == 1 ){
                $v['children'] = [];
                $menus[$v['id']] = $v;
            }
            if($v['level'] == 2 ){
//                var_dump($v);die;
                $v['url'] = url($v['url']);
                $menus[$v['parent_id']]['children'][] = $v;
            }
        }
//        var_dump($menus);die;
        return $menus;
    }


    function currentMenuArr($parent_id){
        if($parent_id !=0){
            $menu = UserMenuModel::where(['id'=>$parent_id])->find();
            if(!empty($menu)){
                self::$current_menu[$menu->level] = ['name'=>$menu->name,'id'=>$menu->id];
                $this->currentMenuArr($menu->parent_id);
            }
        }
    }
}
