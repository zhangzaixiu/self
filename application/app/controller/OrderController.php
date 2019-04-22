<?php
namespace app\app\controller;

use app\common\model\OrderAttrModel;
use app\common\model\OrderModel;
use app\common\model\ProductAttrModel;
use app\common\model\ProductModel;
use think\Db;

class OrderController extends BaseController
{
    /**
     * 产品列表页添加购物车
     * author: zzx
     * Date: 2018/12/19 0019
     * Time: 16:07
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