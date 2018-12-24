<?php
namespace app\app\controller;

use app\common\model\AddressModel;
use app\common\model\RegionModel;
use think\Db;

class AddressController extends BaseController
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

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);

            $address = AddressModel::appList(['customer_id'=>$customer_id]);

            if($address['code']==0){
                exception($address['msg']);
            }
            return $this->succeed('操作成功',$address);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }




    /**
     * 用户地址新增&编辑
     * author: zzx
     * Date: 2018/12/24 0024
     * Time: 13:12
     * @return \think\response\Json
     */
    public function save(){
        try{
            Db::startTrans();
            $data = input('','','trim');
            $post_data = $data['post_data'];
            $post_data['customer_id'] = $this->getCustomerId(['token'=>$data['token']]);
            $scene = 'Address.edit';
            if(!isset($post_data['id']) || empty($post_data['id'])){
                $scene = 'Address.create';
                $address = new AddressModel();
            }else{
                $address = AddressModel::find($post_data['id']);
                if (empty($address)) {
                    exception('错误请求');
                }
            }
            $this->validate($post_data, $scene);
            if($post_data['is_default']){
                AddressModel::where(['customer_id'=>$post_data['customer_id']])->update(['is_default'=>0]);
            }
            if(!$address->force()->save($post_data)){
                exception('操作失败');
            }
            Db::commit();
            return $this->succeed('操作成功');
        }catch(\Exception $e){
            Db::rollback();
            return $this->fail($e->getMessage());
        }
    }


    public function edit(){
        try{
            $input = input('','','trim');

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);

            if(empty($input['id'])){
                exception('错误请求');
            }

            $address = AddressModel::where(['id'=>$input['id'],'customer_id'=>$customer_id])->find();

            if(empty($address)){
                exception('信息不存在');
            }
            $array = [$address['province'],$address['city'],$address['district']];

            $address['region_name'] = RegionModel::nameArrayByIds($array);

            return $this->succeed('操作成功',$address);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }


    /**
     * 获取默认地址
     * author: zzx
     * Date: 2018/12/24 0024
     * Time: 15:49
     * @return \think\response\Json
     */
    public function defaultAddress(){
        try{
            $input = input('','','trim');

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);


            $address = AddressModel::where(['is_default'=>1,'customer_id'=>$customer_id])->find();

            if(empty($address)){
                $address = AddressModel::where(['customer_id'=>$customer_id])->order(['id'=>'desc'])->find();
            }

            return $this->succeed('操作成功',$address);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }
    }
}
