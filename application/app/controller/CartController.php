<?php
namespace app\app\controller;

use app\common\model\CartModel;

class CartController extends BaseController
{

    public function create(){
        try{
            $data = input('','','trim');
            $post_data = $data['post_data'];

            $post_data['customer_id'] = $this->getCustomerId(['token'=>$data['token']]);
            $this->validate($post_data, 'Cart.create');
            $cart = new CartModel();
            if(!$cart->save($post_data)){
               exception('保存失败');
            }
            $cart_total_count = CartModel::countByCustomer($post_data['customer_id']);
            return $this->succeed('操作成功',['count'=>$cart['count'],'cart_id'=>$cart['id'],'cart_total_count'=>$cart_total_count]);
        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }


    public function edit(){
        try{
            $data = input('','','trim');
            $post_data = $data['post_data'];
            $post_data['customer_id'] = $this->getCustomerId(['token'=>$data['token']]);

            if($post_data['count']<=0){
                $result = CartModel::where(['id'=>$post_data['id']])->delete();
                if(!$result){
                    throw new \think\Exception('操作失败');
                }
                $cart_total_count = CartModel::countByCustomer($post_data['customer_id']);
                return $this->succeed('操作成功',['count'=>0,'cart_id'=>'','cart_total_count'=>$cart_total_count]);
            }else{
                $this->validate($post_data, 'Cart.edit');
                $cart = CartModel::find($post_data['id']);
                if(empty($cart)){
                    exception('错误请求');
                }
                if(!$cart->force()->save($post_data)){
                    exception('操作失败');
                }
                $cart_total_count = CartModel::countByCustomer($post_data['customer_id']);
                return $this->succeed('操作成功',['count'=>$cart['count'],'cart_id'=>$cart['id'],'cart_total_count'=>$cart_total_count]);
            }

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }

}
