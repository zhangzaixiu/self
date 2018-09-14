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
function list_to_tree($list, $pk='id',$pid = 'parent_id',$child = 'children') {
    // 创建Tree
    $tree = [];
    if($list instanceof  \think\Collection){
       $list = $list->toArray();
    }
    $rows = array_column($list,'level');
    $level = min($rows);

    if(is_array($list)) {
        // 创建基于主键的数组引用
        $refer = array();
        foreach ($list as $key => $data) {
            $refer[$data[$pk]] = & $list[$key];
        }
        foreach ($list as $key => $data) {
            // 判断是否存在parent
            $parentId = $data[$pid];
            if ($data['level'] == $level) {
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

/**
 * 根据url判断当前用户有没有权限
 * @param $url
 * @param array $param
 * @return bool
 */
function check_roles($url,$param = []){
    if(empty($url)){
        return false;
    }
    $user =  session("user");
    $roleId = $user['role_id'];

    if(empty($roleId)){
        return false;
    }

    $menu = \app\common\model\UserMenuModel::getMenuByUrl($url,$param);
    if(empty($menu)){
        return false;
    }
    if($roleId == 1){
        return true;
    }
    if(!$menu['is_show']){
        return true;
    }
    $menu_arr = \app\admin\model\UserModel::getUserRoleArr($user);
    if(in_array($menu['id'],$menu_arr)){
        return true;
    }
    return false;
}



//function getExcel($fileName, $headArr, $data, $imgs = array())
//{
//    //对数据进行检验
////    if (empty($data) || !is_array($data)) {
////        return array('code' => '0', 'msg' => '没有要导出的数据', 'data' => '');
////    }
//    //检查文件名
//    if (empty($fileName)) {
//        exit;
//    }
//
//
//    $date = date("YmdHis", time());
//    $fileName .= "_{$date}.xlsx";
//
//    //创建PHPExcel对象，注意，不能少了\
//    $objPHPExcel = new \PHPExcel();
//    $objProps = $objPHPExcel->getProperties();
//
//    //第一列设置报表列头
//    $key = ord("A");
//    $key2 = ord("@");//@--64
//
//    foreach ($headArr as $v) {
//        if ($key > ord("Z")) {
//            $key2 += 1;
//            $key = ord("A");
//            $colum = chr($key2) . chr($key);//超过26个字母时才会启用
//            //-me 设置水平居中
//            $objPHPExcel->setActiveSheetIndex(0)->getStyle(1)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//            //字体加粗
//            $objPHPExcel->getActiveSheet()->getStyle(1)->getFont()->setBold(true);
//            //---
//        } else {
//            if ($key2 >= ord("A")) {
//                $colum = chr($key2) . chr($key);//超过26个字母时才会启用
//                //-me 设置水平居中
//                $objPHPExcel->setActiveSheetIndex(0)->getStyle(1)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//                //字体加粗
//                $objPHPExcel->getActiveSheet()->getStyle(1)->getFont()->setBold(true);
//                //---
//            } else {
//                $colum = chr($key);
//                //-me 设置水平居中
//                $objPHPExcel->setActiveSheetIndex(0)->getStyle(1)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//                //字体加粗
//                $objPHPExcel->getActiveSheet()->getStyle(1)->getFont()->setBold(true);
//                //---
//            }
//        }
//
//        //  $colum = chr($key);
//        $objPHPExcel->setActiveSheetIndex(0)->setCellValue($colum . '1', $v);
//        //设置水平居中
//        $objPHPExcel->setActiveSheetIndex(0)->getStyle($colum)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//        //设置垂直居中
//        $objPHPExcel->getActiveSheet()->getStyle($colum)->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
//        // 设置个表格宽度
//        $objPHPExcel->getActiveSheet()->getColumnDimension($colum)->setWidth(16);
//        $key += 1;
//    }
//
//    // $objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(20); 单独设置某一列的宽度
//    //  $objPHPExcel->getActiveSheet()->getColumnDimension('L')->setWidth(20); 单独设置某一列的宽度
//
//    $column = 2;
//    $objActSheet = $objPHPExcel->getActiveSheet();
//
//    foreach ($data as $key => $rows) { //行写入
//        $span = ord("A");
//        $span2 = ord("@");//@--64
//        foreach ($rows as $keyName => $value) {// 列写入
//            if ($span > ord("Z")) {
//                $span2 += 1;
//                $span = ord("A");
//                $j = chr($key2) . chr($span);//超过26个字母时才会启用
//            } else {
//                if ($span2 >= ord("A")) {
//                    $j = chr($span2) . chr($span);//超过26个字母时才会启用
//                } else {
//                    $j = chr($span);
//                }
//            }
//            // $j = chr($span);
//            $objActSheet->setCellValue($j . $column, $value);
//
//            $span++;
//        }
//        $objActSheet->getRowDimension($key + 2)->setRowHeight(30);
//        $column++;
//    }
//
//    $fileName = iconv("utf-8", "gb2312", $fileName);
//    //重命名表
//    // $objPHPExcel->getActiveSheet()->setTitle('test');
//    //设置活动单指数到第一个表,所以Excel打开这是第一个表
//    ob_end_clean();
//    ob_start();
//    $objPHPExcel->setActiveSheetIndex(0);
//
//    header('Pragma: public');
//    header('Expires: 0');
//    header('Cache-Control:must-revalidate， post-check=0， pre-check=0');
//    header('Content-Type:application/force-download');
//    header('Content-Type: application/vnd.ms-excel');
//    header("Content-Disposition: attachment;filename=\"$fileName\"");
//    header('Cache-Control: max-age=0');
//    header('Content-Transfer-Encoding:binary');
//    $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
//    $objWriter->save('php://output'); //文件通过浏览器下载
//    exit;
//}