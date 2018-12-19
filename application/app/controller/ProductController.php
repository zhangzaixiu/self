<?php
namespace app\app\controller;

use app\common\model\ProductCategoryModel;
use app\common\model\ProductModel;

class ProductController extends BaseController
{

    /**
     * 商品列表
     * author: zzx
     * Date: 2018/11/20 0020
     * Time: 13:34
     * @return \think\response\Json
     */
    public function index()
    {
        try{
            $input = input('','','trim');
            $category_id = $input['category_id'];
            if(empty($category_id)){
                exception('错误请求');
            }

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);
            if(empty($customer_id)){
                exception('用户不存在');
            }

            $first_category = ProductCategoryModel::get(['id'=>$category_id]);
            if(empty($first_category)){
                exception('分类不存在');
            }
            $first_save_path = $first_category->save_path;

            $category_con = [
                ['parent_id','=',$category_id],
                ['level','=',2],
                ['is_show','=',1],
            ];

            $second_category = ProductCategoryModel::where($category_con)->order(['sort'=>'desc'])->column('id');
            if(empty($second_category)){
                return $this->succeed('操作成功',['pages'=>0]);
            }

            $customer_id = $this->getCustomerId(['token'=>$input['token']]);

            $con = [
                'category_id' => $second_category,
                'pageNo' => $input['pageNo'],
                'customer_id' => $customer_id,
            ];

            $data = ProductModel::appList($con);

            $data['first_save_path'] = $first_save_path;

            return $this->succeed('操作成功',$data);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }

    }


    /**
     * 商品详情
     * author: zzx
     * Date: 2018/11/20 0020
     * Time: 13:35
     * @return \think\response\Json
     */
    public function detail()
    {
        try{
            $id = input('id','','trim');
            if(empty($id)){
                exception('错误请求');
            }
            $product = ProductModel::getDetail($id);
            $product->detail = strip_tags($product->detail);

            return $this->succeed('操作成功',$product);

        }catch(\Exception $e){
            return $this->fail($e->getMessage());
        }

    }


}
