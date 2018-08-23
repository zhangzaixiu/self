<?php

namespace app\common\helper;
/**
 * author: hollow
 * email: hollow@foxmail.com
 */
class Cookie {


    /**
     * 解密
     * @param string $encryptedText
     * @return string
     */
    private static function _decrypt($encryptedText)
    {
        $key = self::getKey();
        return str_replace($key,'',base64_decode($encryptedText)) ;
    }


    /**
     * 加密cookie
     * @param string $plainText
     * @return string
     */
    private static function _encrypt($plainText)
    {
        $key = self::getKey();
        return base64_encode($plainText.$key);
    }


    /**
     * 获取key
     * @return string
     */
    private  static function  getKey(){
        $module = request()->module();
        if($module == 'admin'){
            return "zlhyadmin";
        }
        return 'zlhyfrontend';
    }


    public static function  setCookie($name, $value = '', $option = null){
        $value = self::_encrypt($value);
         \think\Cookie::set($name,$value,$option);
         return $value;
    }


    public static function  getCookie($name = '', $prefix = null){
        $value = \think\Cookie::get($name,$prefix);
        return self::_decrypt($value);
    }

}