<?php
namespace app\admin\controller;


use app\common\model\OrderAttrModel;
use app\common\model\OrderModel;
use Fixtures\Prophecy\EmptyClass;

class IndexController extends BaseController
{
    public function index()
    {
        $this->view->engine->layout(true);
        $today = $this->statistic(date('Y-m-d 00:00:00'),date('Y-m-d H:i:s'));
        $yestaday = $this->statistic(date("Y-m-d 00:00:00",strtotime("-1 day")),date("Y-m-d 23:59:59",strtotime("-1 day")));
        $total = $this->statistic();
        return view('',compact('today','yestaday','total'));
    }



    /**
     * 30天折线统计图
     * author: zzx
     * Date: 2019/4/24 0024
     * Time: 15:56
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function orderLine(){
        $date_array = [];
        for ($i = 29; $i >= 0 ; $i--) {
            $date = date("Y-m-d",strtotime("-".$i." day"));
            $date_array[$date] =  0;
        }

        $date = array_keys($date_array);
        $order = OrderModel::where('pay_time','>=',$date[0])->field('DATE_FORMAT(pay_time,"%Y-%m-%d") create_date,count(id) count')->group('create_date')->select()->toArray();
        foreach ($order as $k => $v){
            if(in_array($v['create_date'],$date)){
                $date_array[$v['create_date']] = $v['count'];
            }
        }
        return json(['count'=>array_values($date_array),'date'=>$date]);
    }




    private function statistic($start_time ='',$end_time='')
    {
        if(!empty($start_time) && !empty($end_time)){
            $con = [
                ['pay_time','between',[$start_time,$end_time]]
            ];
        }elseif (!empty($start_time)){
            $con = [
                'pay_time'=>['>=',$start_time]
            ];
        }elseif (!empty($end_time)){
            $con = [
                'pay_time'=>['<=',$end_time]
            ];
        }else{
            $con = [];
        }
        $order_price = OrderModel::where($con)->sum('total_price');
        $order_count = OrderModel::where($con)->count('id');
        $customer_count = OrderModel::where($con)->distinct('customer_id')->count('customer_id');
        $order_ids = OrderModel::where($con)->column('id');
//        var_dump($order_ids);die ;
        $product_count = OrderAttrModel::whereIn('order_id',$order_ids)->sum('count');
        return ['order_price'=>$order_price,'order_count'=>$order_count,'customer_count'=>$customer_count,'product_count'=>$product_count];
    }
}
