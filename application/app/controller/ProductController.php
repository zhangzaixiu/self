<?php
namespace app\app\controller;

use app\common\model\CustomerModel;
use app\common\model\ProductCategoryModel;
use app\common\model\ProductModel;

class ProductController extends BaseController
{

    /*
     * 绑定用户
     */
    public function index()
    {
        try{
//            $category = ProductCategoryModel::where(['level'=>1])->order([''])
            $data = array_filter(input('','','trim'));
            $data = ProductModel::getList($data);
            return $this->succeed('操作成功',$data);
        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }

    }



}
