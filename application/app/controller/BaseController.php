<?php
namespace app\app\controller;


use app\common\model\CustomerModel;
use think\Controller;

class BaseController extends Controller
{
    //验证失败时抛出异常
    protected $failException = true;


//    public function initialize(){
//
//        $request = request();
//
//        $controller = $request->controller();
//
//        if($controller != 'Login'){
//            $token = input('token','','trim');
////            if(empty($token)){
////                return ['code']
////            }
//        }
//    }

    public function getCustomer($con){
        $customer = CustomerModel::field(['id','type','name','token','mobile','status','start_time','end_time'])->where($con)->find();
        if (is_null($customer)) {
            return ['code'=>0,'data'=>'','msg'=>'用户不存在'];
        }
        if ($customer['status'] == 2) {
            return ['code'=>0,'msg'=>'用户被冻结'];
        }
        return ['code'=>1,'data'=>$customer];
    }


    public function getCustomerId($con){
        $customer = $this->getCustomer($con);
        if($customer['code']==0){
            exception($customer['msg']);
        }
        return $customer['data']['id'];
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
