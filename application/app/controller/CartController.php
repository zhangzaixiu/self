<?php
namespace app\app\controller;

use app\common\model\CartModel;

class CartController extends BaseController
{

    /**购物车列表
     * author: zzx
     * Date: 2018/12/20 0020
     * Time: 09:46
     * @return \think\response\Json
     */
    public function index(){
        try{
            $input = input('','','trim');
            $customer = $this->getCustomer(['token'=>$input['token']]);
            if($customer['code']==0){
                exception($customer['msg']);
            }
            $customer_id = $customer['data']['id'];
            if(empty($customer_id)){
                exception('用户不存在');
            }

            $cart = CartModel::appList(['customer_id'=>$customer_id]);
            if($cart['code']==0){
                exception($cart['msg']);
            }
            $cart['customer_type'] = $customer['data']->getData('type');
            return $this->succeed('操作成功',$cart);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }


    /**
     * 产品列表页添加购物车
     * author: zzx
     * Date: 2018/12/19 0019
     * Time: 16:07
     * @return \think\response\Json
     */
    public function save(){
        try{
            $data = input('','','trim');
            $post_data = $data['post_data'];
            $post_data['customer_id'] = $this->getCustomerId(['token'=>$data['token']]);
            $scene = 'Cart.edit';
            if(!isset($post_data['id']) || empty($post_data['id'])){
                $scene = 'Cart.create';
                $cart = new CartModel();
            }else{
                if($post_data['count']<=0){
                    $result = CartModel::where(['id'=>$post_data['id']])->delete();
                    if(!$result){
                        throw new \think\Exception('操作失败');
                    }
                    $cart_total_count = CartModel::countByCustomer($post_data['customer_id']);
                    return $this->succeed('操作成功',['count'=>0,'cart_id'=>'','cart_total_count'=>$cart_total_count]);
                }else {
                    $cart = CartModel::find($post_data['id']);
                    if (empty($cart)) {
                        exception('错误请求');
                    }
                }
            }
            $this->validate($post_data, $scene);
            if(!$cart->force()->save($post_data)){
                exception('操作失败');
            }
            $cart_total_count = CartModel::countByCustomer($post_data['customer_id']);
            return $this->succeed('操作成功',['count'=>$cart['count'],'cart_id'=>$cart['id'],'cart_total_count'=>$cart_total_count]);
        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }


    /**
     * 商品详情添加购物车
     * author: zzx
     * Date: 2018/12/20 0020
     * Time: 11:17
     * @return \think\response\Json
     */
    public function add(){
        try{
            $data = input('','','trim');
            $customer_id = $this->getCustomerId(['token'=>$data['token']]);
            if(empty($data['product_id'])){
               exception('错误请求');
            }
            $cart = CartModel::where(['product_id'=>$data['product_id'],'customer_id'=>$customer_id])->find();
            if(empty($cart)){
                $cart = new CartModel();
                $cart->product_id = $data['product_id'];
                $cart->customer_id = $customer_id;
                $cart->count = 1;
            }
            $cart->count +=1;

            if(!$cart->force()->save()){
                exception('操作失败');
            }
            $cart_total_count = CartModel::countByCustomer($customer_id);
            return $this->succeed('操作成功',['count'=>$cart['count'],'cart_id'=>$cart['id'],'cart_total_count'=>$cart_total_count]);
        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }



    /**
     * 产品列表页添加购物车
     * author: zzx
     * Date: 2018/12/19 0019
     * Time: 16:07
     * @return \think\response\Json
     */
    public function cartSave(){
        try{
            $post = input('','','trim');
            $post['customer_id'] = $this->getCustomerId(['token'=>$post['token']]);
            if($post['count']<=0){
                $result = CartModel::where(['id'=>$post['id']])->delete();
                if(!$result){
                    throw new \think\Exception('操作失败');
                }
            }else {
                $cart = CartModel::where(['id'=>$post['id']])->find();
                if (empty($cart)) {
                    exception('错误请求');
                }
                if(!$cart->force()->save(['count'=>$post['count']])){
                    exception('操作失败');
                }
            }

            $cart_total_count = CartModel::countByCustomer($post['customer_id']);

            return $this->succeed('操作成功',['total'=>$cart_total_count]);
        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }

}
