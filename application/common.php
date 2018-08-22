<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
/**
 * 把返回的数据集转换成Tree
 * @access public
 * @param array $list 要转换的数据集
 * @param string $pid parent标记字段
 * @param string $level level标记字段
 * @return array
 */
function list_to_tree($list, $pk='id',$pid = 'parent_id',$child = 'children',$root=0) {
    // 创建Tree
    $tree = [];
    if($list instanceof  \think\Collection){
       $list = $list->toArray();
    }

    if(is_array($list)) {
        // 创建基于主键的数组引用
        $refer = array();
        foreach ($list as $key => $data) {
            $refer[$data[$pk]] = & $list[$key];
        }
        foreach ($list as $key => $data) {
            // 判断是否存在parent
            $parentId = $data[$pid];
            if ($root == $parentId) {
                // 等于
                $tree[] =& $list[$key];
            }else{
                if (isset($refer[$parentId])) {
                    $parent = & $refer[$parentId];
                    $parent[$child][] =& $list[$key];
                }
            }
        }
    }
    return $tree;
}



/**
 * 检查文件是否存在
 * @param $path
 * @return bool
 */
function check_file_exits($path){
    if(empty($path)){
        return false;
    }
    $path=\think\facade\Env::get('root_path') . 'public' . "/" . $path;
    if(file_exists($path)){
        return true;
    }
    return false;
}


/**
 * 过滤数组中的元素
 * @param $entry
 * @return array
 */
function filter_array($entry){
   return array_filter($entry,function ($var){
        return($var !== '' && $var !== false && $var !== null);
    });
}
