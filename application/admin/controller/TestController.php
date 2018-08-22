<?php
namespace app\admin\controller;


class TestController extends BaseController
{
    public function index()
    {
        var_dump(78978);die;
//        $rlt =  UserMenuModel::where('model', 'admin')->order(['level'=>'asc','sort'=>'desc'])->select();
//        var_dump($rlt);die;
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
