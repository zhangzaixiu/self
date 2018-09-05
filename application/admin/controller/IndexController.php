<?php
namespace app\admin\controller;


class IndexController extends BaseController
{
    public function index()
    {
        $this->view->engine->layout(true);

        return view();
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
