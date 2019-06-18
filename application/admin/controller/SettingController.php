<?php

namespace app\admin\controller;


use app\common\model\SettingModel;

class SettingController extends BaseController
{

    /**
     * 编辑系统设置
     * author: zzx
     * Date: 2019/3/26 0026
     * Time: 15:23
     * @return array|\think\response\Json
     */
    public function edit(){
        try{
            $this->view->engine->layout(true);
            $setting = SettingModel::select();
           return view('',['data'=>$setting]);
        }catch (\Exception $e){
            return view('layout/message',['msg'=>$e->getMessage()]);
        }
    }


    /**
     * 保存设置
     * author: zzx
     * Date: 2019/4/24 0024
     * Time: 16:33
     * @return array|\think\response\Json
     */
    public function save(){
        try{
            $input = input('','','trim');
            $setting = new SettingModel();

            foreach($input as $k => $v){
                // save方法第二个参数为更新条件
                if($setting->force(true)->save(['value'  => $v,'user_id'=>$this->userId],['key' => $k]) === false) {
                    exception('操作失败');
                }
            }
            return ['success'=>1,'msg'=>'操作成功'];
        }catch (\Exception $e){
            return json(['success' =>0, 'msg' => $e->getMessage(), 'data' => []]);
        }
    }
}