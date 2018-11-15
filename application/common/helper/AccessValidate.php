<?php

namespace app\common\helper;
use think\facade\Cache;
use think\Model;
use think\Request;

/**
 * author: hollow
 * email: hollow@foxmail.com
 */
class AccessValidate extends Model {

    private static $salt = 'asdrrtq32q4e343sdf5azSda';


    /*
     * api验证接口的有效性
     */
    public function validate(Request $request){
        $token = $request->param('token', '');
        $time = $request->param('time', '');
        $sign = $request->param('sign', '');
        if($token == '' || $time == '' || $sign == ''){
            return '错误请求';
        }
        $validate_time = self::validateTime($time);
        if($validate_time !==true){
            return $validate_time;
        }

        $validate_token = self::validateToken($token);
        if($validate_token !==true){
            return $validate_token;
        }


        $validate_sign = self::validateSign($sign);
        if($validate_sign !==true){
            return $validate_sign;
        }

        return true;
    }



    /*
     * 时间戳超时机制是防御DOS攻击
     */
    public function validateTime($time){
        if($time+60*10<time()){
            return '请求失效';
        }
        return true;
    }


    /*
    * 用户登录时将token=>uid的形式存入缓存
    * 根据传入的token 验证用户是否登录
    */
    public function validateToken($token){
        $cache_token = Cache::get($token);
        if(empty($cache_token)){
            return '请重新登录';
        }
        return true;
    }


    /*
     * 验证传入的sign是否为真
     */
    public static function validateSign($sign,$url=''){
       if($url == ''){
           $url = \think\facade\Request::url(true);
           $url = str_replace($url,"",'&'.$sign);
       }
       $api_sign = self::getApiSign($url);
       return $api_sign === $sign ;
    }


    /*
    *根据用户token 生成api token
    */
    private static function getApiSign($url){
        return md5(md5($url.self::$salt));
    }

}