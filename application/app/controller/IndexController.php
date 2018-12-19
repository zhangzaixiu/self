<?php
namespace app\app\controller;

use app\common\model\CartModel;
use app\common\model\OrderAttrModel;
use app\common\model\ProductCategoryModel;

class IndexController extends BaseController
{

    /*
     *商家推荐,热销,上新,
     *加入会员,分享有礼,
     */
    public function index()
    {
        try{
            $input = input('','','trim');
            $data['category'] = ProductCategoryModel::where(['level'=>1,'is_show'=>1])->order(['sort'=>'desc'])->field(['id','name'])->select();

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);
            $cart = CartModel::where(['customer_id'=>$customer_id])->field('id,product_id,count')->select();
            $cart = indexBy($cart,'product_id');
            $cart_keys = array_keys($cart);
            $data['hot'] = OrderAttrModel::hotSale();
            $hot = [];
            foreach ($data['hot'] as $k=>&$v){
                if(in_array($v['product_id'],$cart_keys)){
                    $v['cart_number'] = $cart[$v['product_id']]['count'];
                    $v['cart_id'] = $cart[$v['product_id']]['id'];
                }else{
                    $v['cart_number'] = 0;
                    $v['cart_id'] = '';
                }
                $hot[$v['product_id']] = $v;
            }
            $data['hot'] = $hot;
            $data['cart'] = CartModel::countByCustomer($customer_id);
            return $this->succeed('操作成功',$data);
        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }

    }
}
