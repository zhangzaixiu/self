<?php
namespace app\admin\controller;


use app\common\model\OrderAttrModel;
use app\common\model\OrderModel;

class IndexController extends BaseController
{
    public function index()
    {
        $this->view->engine->layout(true);

        $today = $this->statistic(date('Y-m-d 00:00:00'),date('Y-m-d H:i:s'));
        $yestaday = $this->statistic(date('Y-m-d 00:00:00'),date('Y-m-d H:i:s'));
//        $order_price = OrderModel::where(['pay_time'=>['>',date('Y-m-d 00:00:00')]])->sum('total_price');
//        $order_count = OrderModel::where(['pay_time'=>['>',date('Y-m-d 00:00:00')]])->count('id');
//        $customer_count = OrderModel::where(['pay_time'=>['>',date('Y-m-d 00:00:00')]])->distinct('customer_id')->count('customer_id');
//        $order_ids = OrderModel::where(['pay_time'=>['>',date('Y-m-d 00:00:00')]])->field('id')->select()->toArray();
//
//        $product_count = OrderAttrModel::whereIn('order_id',$order_ids)->sum('count');
        return view('',compact('today','yestaday'));
    }

    private function statistic($start_time,$end_time)
    {
        $con = [
            'pay_time'=>['between',$start_time,$end_time]
        ];
        $order_price = OrderModel::where($con)->sum('total_price');
        $order_count = OrderModel::where($con)->count('id');
        $customer_count = OrderModel::where($con)->distinct('customer_id')->count('customer_id');
        $order_ids = OrderModel::where($con)->field('id')->select()->toArray();
        $product_count = OrderAttrModel::whereIn('order_id',$order_ids)->sum('count');
        return ['order_price'=>$order_price,'order_count'=>$order_count,'customer_count'=>$customer_count,'product_count'=>$product_count];
    }
}
