<?php
namespace app\app\controller;

use app\common\model\CustomerModel;

class IndexController extends BaseController
{

    /*
     * 绑定用户
     */
    public function index()
    {
        try{
            $request = input('','','trim');
            $this->validate($request, 'Customer.bind');

            $customer = CustomerModel::where(['name' => $request['name']])->find();
            if (is_null($customer)) {
                exception('用户名错误');
            }

            if($customer['status']==2){
                 exception('用户被冻结');
            }

            if (md5($request['password']) == $customer->password) {
                //清除该openid之前绑定的用户
                CustomerModel::update(['openid' => ''],['openid'=>$request['openId']]);
                $customer->openid = $request['openId'];
                $customer->save();
                $customer = $customer->toArray();
                unset($customer['password']);
                return $this->succeed('绑定成功',$customer);
            } else {
                exception('密码错误');
            }
        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }

    }



}
