<?php
namespace app\app\controller;

use app\common\model\CartModel;
use app\common\model\CouponModel;
use app\common\model\CustomerCouponModel;

class CustomerCouponController extends BaseController
{

    /**优惠券列表
     * author: zzx
     * Date: 2018/12/20 0020
     * Time: 09:46
     * @return \think\response\Json
     */
    public function index(){
        try{
            $input = input('','','trim');

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);
            if(empty($customer_id)){
                exception('用户不存在');
            }

            $con = [
                'pageNo' => $input['pageNo'],
                'customer_id' => $customer_id,
                'status' => 1,
                'end_time' => date('Y-m-d',time()),
            ];
            $data = CustomerCouponModel::appList($con);
            if($data['code']==0){
                exception($data['msg']);
            }

            if(!empty($input['cart_ids'])){
                $customer_type = $this->getCustomerType(['token'=>$input['token']]);
                $join = [
                    ['product b','b.id = a.product_id','left'],
                ];
                $cart = CartModel::field('a.id,a.count,b.price,b.vip_price,b.category_id')->alias('a')
                    ->join($join)
                    ->where('a.customer_id','=',$customer_id)
                    ->select();
                $cart_data = [];
                $cart_price = 0;
                foreach ($cart as $k =>$v){
                    if($customer_type==2){
                        $price_sum = $v['vip_price']*$v['count'];
                    }else{
                        $price_sum = $v['price']*$v['count'];
                    }
                    $cart_price += $price_sum;
                    if(isset($cart_data[$v['category_id']])){
                        $cart_data[$v['category_id']] += $price_sum;
                    }else{
                        $cart_data[$v['category_id']] = $price_sum;
                    }
                }
                $this->check($data['pageList'],$cart_data,$cart_price);
            }

            return $this->succeed('操作成功',$data);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }


    /**
     * 根据选择的购物车商品,获取最佳的优惠券信息
     * author: zzx
     * Date: 2018/12/22 0022
     * Time: 15:39
     * @return \think\response\Json
     */
    public function getCouponId(){
        try{
            $input = input('','','trim');

            if(empty($input['cart_ids'])){
                exception('错误请求');
            }

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);
            if(empty($customer_id)){
                exception('用户不存在');
            }

            $con = [
                'customer_id' => $customer_id,
                'status' => 1,
                'end_time' => date('Y-m-d',time()),
            ];

            $data = CustomerCouponModel::appList($con);
            if($data['code']==0){
                exception($data['msg']);
            }

            $customer_type = $this->getCustomerType(['token'=>$input['token']]);
            $join = [
                ['product b','b.id = a.product_id','left'],
            ];
            $cart = CartModel::field('a.id,a.count,b.price,b.vip_price,b.category_id')->alias('a')
                ->join($join)
                ->where('a.customer_id','=',$customer_id)
                ->select();
            $cart_data = [];
            $cart_price = 0;
            foreach ($cart as $k =>$v){
                if($customer_type==2){
                    $price_sum = $v['vip_price']*$v['count'];
                }else{
                    $price_sum = $v['price']*$v['count'];
                }
                $cart_price += $price_sum;
                if(isset($cart_data[$v['category_id']])){
                    $cart_data[$v['category_id']] += $price_sum;
                }else{
                    $cart_data[$v['category_id']] = $price_sum;
                }
            }
            $coupon_id = $this->check($data['pageList'],$cart_data,$cart_price);
            $coupon = CouponModel::get($coupon_id);

            return $this->succeed('操作成功',$coupon);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }



    /**
     * 检验优惠券是否可用并获取最佳优惠券id
     * author: zzx
     * Date: 2018/12/22 0022
     * Time: 15:24
     * @param $coupon
     * @param $cart_data
     * @param $cart_price
     */
    function check($coupon,$cart_data,$cart_price){
        $best = 0;
        foreach ($coupon as $k => &$v){
            if(empty($v['product_category_id'])){
                $v['can_use'] = $v['price'] <= $cart_price;
            }else{
                if(isset($cart_data[$v['product_category_id']])){
                    $v['can_use'] = $v['price'] <= $cart_data[$v['product_category_id']];
                }else{
                    $v['can_use'] = 0;
                }
            }
            if($v['can_use'] && $v['coupon'] >$best){
                $best = $v['id'];
            }
        }
        return $best;
    }


    /**
     * 根据id获取优惠券
     * author: zzx
     * Date: 2018/12/22 0022
     * Time: 16:25
     * @return \think\response\Json
     */
    function getCouponById(){
        try{
            $input = input('','','trim');

            if(empty($input['id'])){
                exception('错误请求');
            }

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);
            if(empty($customer_id)){
                exception('用户不存在');
            }

            $coupon = CouponModel::get($input['id']);

            return $this->succeed('操作成功',$coupon);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }

}
