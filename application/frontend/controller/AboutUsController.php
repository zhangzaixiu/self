<?php
/**
 * Created by PhpStorm.
 * User: Just
 * Date: 2018/8/2 0002
 * Time: 09:06
 */
namespace app\frontend\controller;


class AboutUsController extends  BaseController

{
   function index(){
       $this->view->engine->layout('layout/main');
       return view('',array('tag'=>'about_us'));
   }
}