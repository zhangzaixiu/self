<?php
namespace app\app\controller;


use app\common\model\CustomerModel;
use think\Controller;

class BaseController extends Controller
{
    //验证失败时抛出异常
    protected $failException = true;

    public function getCustomer($openid){
        $customer = CustomerModel::field(['id','type','name','mobile','status','start_time','end_time'])->where('openid','=',$openid)->find();
        if (is_null($customer)) {
            return ['code'=>1,'data'=>''];
        }
        if(!empty($customer)){
            $customer = $customer->toArray();
        }
        if ($customer['status'] == 2) {
            return ['code'=>0,'msg'=>'用户被冻结'];
        }
        return ['code'=>1,'data'=>$customer];
    }




    /**
     * 成功反馈封装
     *
     * @param $message
     * @param array $data
     * @return \think\response\Json
     */
    public function succeed($message, $data = [])
    {
        return json([
            'code' => 1,
            'msg' => $message,
            'data' => $data
        ]);
    }

    /**
     * 失败反馈
     *
     * @param $message
     * @param int $code
     * @param array $data
     * @return \think\response\Json
     */
    protected function fail($message, $code = 0, $data = [])
    {
        return json([
            'code' => $code,
            'msg' => $message,
            'data' => $data
        ]);
    }
}
