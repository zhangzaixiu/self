<?php

namespace app\common\model;


class SettingModel extends BaseModel
{

    /**
     * 根据key获取值
     * author: zzx
     * Date: 2019/3/19 0019
     * Time: 10:03
     * @param $key
     * @return bool
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public static function getValueByKey($key)
    {
        $setting = self::where(['key'=>$key])->find();
        if(empty($setting)){
            return false;
        }
        return $setting['value'];
    }


}