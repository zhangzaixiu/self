<?php

namespace app\frontend\controller;

use think;

class BaseController extends think\Controller{

    public $userId = '';

    public $userType = '';

    public static $menu_list = [
        'index'=>[
            'url'=>'frontend/index/index',
            'name'=>'首页'
        ],
        'iqbt'=>[
            'url'=>'frontend/iqbt/index',
            'name'=>'孵化空间'
        ],
        'service'=>[
            'url'=>'frontend/service/index',
            'name'=>'基础服务'
        ],
        'etprs_service'=>[
            'url'=>'frontend/etprs_service/index',
            'name'=>'第三方服务'
        ],
        'vip'=>[
            'url'=>'frontend/vip/index',
            'name'=>'会员中心'
        ],
        'activity'=>[
            'url'=>'frontend/activity/index',
            'name'=>'活动中心'
        ],
        'message'=>[
            'url'=>'frontend/message/news',
            'name'=>'信息中心'
        ],
        'about_us'=>[
            'url'=>'frontend/about_us/index',
            'name'=>'关于我们'
        ],
    ];

    public function initialize()
    {
        //判断是否登录

        $userId = session('userId');

        $user = session("user");

        if(!empty($userId)){
            $this->userId = $userId;
        }

        $this->assign('userId',$userId);
        $this->assign('current_user',$user);
        $this->assign('menu_list',self::$menu_list);
    }

}