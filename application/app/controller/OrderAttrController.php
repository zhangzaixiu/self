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

class OrderAttrController extends BaseController
{

    /**
     * 订单商品列表
     * author: zzx
     * Date: 2019/4/23 0023
     * Time: 10:50
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
            $data = OrderAttrModel::getList($input);
            if($data['code'] == 0 ){
                exception($data['msg'] );
            }

            return $this->succeed('操作成功',$data);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }
}
