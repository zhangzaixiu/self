<?php
namespace app\app\controller;

use app\common\model\AddressModel;
use app\common\model\CouponModel;
use app\common\model\OrderAttrModel;
use app\common\model\OrderModel;
use app\common\model\ProductAttrModel;
use app\common\model\ProductModel;
use app\common\model\RegionModel;
use think\Db;

class OrderController extends BaseController
{

    /**
     * 订单列表
     * author: zzx
     * Date: 2019/4/22 0022
     * Time: 17:02
     * @return \think\response\Json
     */
    public function index()
    {
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
            $data = OrderModel::appList(['customer_id'=>$customer_id,'limit'=>10]);
            if($data['code'] == 0 ){
                exception($data['msg'] );
            }

            return $this->succeed('操作成功',$data);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }


    /**
     * 订单详情
     * author: zzx
     * Date: 2019/4/23 0023
     * Time: 10:08
     * @return \think\response\Json
     */
    public function detail(){
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
            if(empty($input['id'])){
                exception('错误请求');
            }

            $data = OrderModel::appList(['customer_id'=>$customer_id,'order_id'=>$input['id']]);

            if($data['code'] == 0 ){
                exception($data['msg'] );
            }
            $order = $data['pageList'][0];
            $address = AddressModel::get($order['address_id']);
            $address['region_name'] = RegionModel::address([$address['province'],$address['city'],$address['district']]);
            if($order['coupon_id']){
                $coupon = CouponModel::get($order['coupon_id']);
                if(!empty($coupon)){
                    $order['coupon_free'] = round($coupon['coupon'],2);
                }
            }else{
                $order['coupon_free'] = '0.00';
            }
            return $this->succeed('操作成功',['order'=>$order,'address'=>$address]);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }

    /**
     * 保存订单
     * author: zzx
     * Date: 2019/4/22 0022
     * Time: 17:02
     * @return \think\response\Json
     */
    public function save()
    {
        $data = input('', '', 'trim');
        try {
            $data['customer_id'] = $this->getCustomerId(['token' => $data['token']]);
            Db::startTrans();

            //order
            $order = new OrderModel();
            $data['order_sn'] = date('YmdHis').rand(1000,9999);
            $data['status'] = 2;
            if (false === $order->allowField(true)->save($data)) {
                exception('订单保存失败');
            }

            //order_attr
            foreach ($data['list'] as $k => &$v) {
                //product库存
                $product = ProductModel::get($v['product_id']);
                if(empty($product)){
                    exception('商品不存在');
                }
                $product->stock -= $v['count'];
                if(false === $product->save()){
                    exception('商品库存保存失败');
                }

                $v['order_id'] = $order->id;
                $product = ProductModel::get($v['product_id']);
                if (empty($product)) {
                    exception('商品不存在');
                }
                $v['category_id'] = $product->category_id;
                $v['product_name'] = $product->name;
                $v['abstract'] = $product->abstract;
                $v['img'] = $product->img;
                $product_attr = ProductAttrModel::where(['product_id' => $v['product_id']])->with(['product_category'])->select();
                if (!empty($product_attr)) {
                    $attr_array = [];
                    foreach ($product_attr as $key => $attr) {
                        $attr_array[$attr->category_attr_name] = $attr->value;
                    }
                    $v['product_attr'] = serialize($attr_array);
                }
            }
            $order_attr = new OrderAttrModel();
            if (false === $order_attr->saveAll($data['list'])) {
                exception('订单商品保存失败');
            }
            Db::commit();
            return $this->succeed('操作成功', ['order_id' => $order['id']]);
        } catch (\Exception $e) {
            Db::rollback();
            return $this->fail($e->getMessage());
        }
    }
}
