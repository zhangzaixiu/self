<?phpnamespace app\admin\controller;use app\common\model\CompanyModel;use app\common\model\EnterCategoryModel;use app\common\model\ProductAttrModel;use app\common\model\ProductCategoryModel;use app\common\model\ProductModel;use think\Db;class ProductController extends  BaseController{    /**     * 列表页     * @return \think\response\Json|\think\response\View     */    public function index(){        $this->view->engine->layout(true);        if(\think\facade\Request::isAjax()){            $data = array_filter(input('','','trim'));            $data=ProductModel::getList($data);            return $data;        }        return view();    }    /**     * 添加     * @return \think\response\Json|\think\response\View     */    public function create(){        $this->view->engine->layout(true);        $category = ProductCategoryModel::getSelectAttr();        $company = CompanyModel::getSelectAttr();        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $data = input('','','trim');                $this->validate($data, 'Product.create');                $product = new ProductModel($data);                if(!$product->save()){                    throw new \think\Exception('添加失败');                }                if(isset($data['attr'])){                    $attr = $data['attr'];                    foreach ($attr as $k=>$v){                        $attr = new ProductAttrModel();                        $attr->product_id = $product->id;                        $attr->category_attr_id = $k;                        $attr->value = $v;                        if(!$attr->save()){                            throw new \think\Exception('商品属性添加失败');                        }                    }                }                $result['msg'] = '操作成功';                $result['success'] = true;                $result['url'] = url('product/index');                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }        return view('',['category'=>$category,'company'=>$company]);    }    /**     * 添加     * @return \think\response\Json|\think\response\View     */    public function edit(){        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $data = input('','','trim');                $product = ProductModel::get($data['id']);                if(empty($product)){                    throw new \think\Exception('商品不存在');                }                $this->validate($data, 'Product.create');                if(!$product->force()->save( $data)){                    throw new \think\Exception('操作失败');                }                $delete_result = ProductAttrModel::where(['product_id'=>$data['id']])->delete();                if($delete_result === false){                    throw new \think\Exception('原属性删除失败');                }                if(isset($data['attr'])){                    $attr = $data['attr'];                    foreach ($attr as $k=>$v){                        $attr = new ProductAttrModel();                        $attr->product_id = $product->id;                        $attr->category_attr_id = $k;                        $attr->value = $v;                        if(!$attr->save()){                            throw new \think\Exception('商品属性添加失败');                        }                    }                }                $result['msg'] = '操作成功';                $result['success'] = true;                $result['url'] = url('product/index');                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }    }    public function status(){        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $data = input('','');                if(empty($data['id'])){                    throw new \think\Exception('错误请求');                }                if(empty($data['status'])){                    throw new \think\Exception('错误请求');                }                $product = ProductModel::get($data['id']);                if(empty($product)){                    throw new \think\Exception('商品不存在');                }                if(!$product->force()->save( $data)){                    throw new \think\Exception('操作失败');                }                $result['msg'] = '操作成功';                $result['success'] = true;                $result['url'] = url('product/index');                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }    }    /**     * 展示     * @return \think\response\Json|\think\response\View     */    public function detail(){        $this->view->engine->layout(true);        $id = input('id');        try {            if(empty($id)){                throw new \think\Exception('错误请求');            }            $category = ProductCategoryModel::getSelectAttr();            $company = CompanyModel::getSelectAttr();            $data = ProductModel::getDetail($id);//            var_dump($data);die;            return  view('',['data'=>$data,'category'=>$category,'company'=>$company]);        } catch (\Exception $e) {            $this->view->engine->layout(false);            return  view('layout/message',['msg'=>$e->getMessage()]);        }    }}