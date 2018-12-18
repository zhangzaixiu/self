<?php
/**
 * 用户验证Token服务类
 *
 * Created by PhpStorm.
 * Date: 2018/09/13
 * Time: 16:00
 *
 * @Author LiQiang
 * @Copyright 青岛中联慧云信息科技有限公司
 */

namespace app\app\service;


use app\common\model\CustomerModel;
use think\Exception;

class AuthTokenService
{
    /**
     * 保存token
     * @param $client
     * @param array $options
     * @param $expire 默认1年
     */
    public function saveToken(CustomerModel $user, $expire = 31536000,$length=13)
    {
        // 使用uuid生成唯一秘钥写入redis中，并设置30分钟后过期
        $token = $this->generateToken($length);
        $options['expire'] = $expire;
        cache($token, $user->id, $options);
        $user->token = $token;
        if (!$user->force()->save()) {
            throw new Exception('保存Token失败');
        }
        return $token;
    }


    /**
     * 生成token
     * @param  integer $lenght 生成的uuid长度
     * @return bool|string
     */
    private function generateToken($length = 13)
    {
        if (function_exists("random_bytes")) {
            $bytes = random_bytes(ceil($length / 2));
        } elseif (function_exists("openssl_random_pseudo_bytes")) {
            $bytes = openssl_random_pseudo_bytes(ceil($length / 2));
        } else {
            throw new Exception("no cryptographically secure random function available");
        }
        $uniqidReal = substr(bin2hex($bytes), 0, $length);
        return password_hash( $uniqidReal, PASSWORD_DEFAULT);
    }


    /**
     * 校验token
     * author: zzx
     * Date: 2018/12/14 0014
     * Time: 16:46
     * @return bool|null|static
     * @throws \think\exception\DbException
     */
    public function check(){
        $token = request()->header('X-Authorization', '');
        $user_id = cache($token);
        if(is_null($user_id)) return false;
        $user = CustomerModel::get($user_id);
        if(empty($user)) return false;
        return $user;
    }


    /**
     * 更新token
     * author: zzx
     * Date: 2018/12/14 0014
     * Time: 16:48
     * @param $token
     * @return bool|string
     * @throws Exception
     * @throws \think\exception\DbException
     */
    public function updateToken($token){
        $user_id = cache($token);
        if(is_null($user_id)){
            $user = CustomerModel::get($user_id);
            if(is_null($user)){
                \exception('token错误');
            }
        }
        $user = CustomerModel::get($user_id);
        if(is_null($user)){
            \exception('用户不存在');
        }
        return $this->saveToken($user);
    }
}