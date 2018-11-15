<?phpnamespace app\admin\controller;use app\common\model\ProductCategoryAttrModel;use app\common\model\ProductCategoryModel;use app\common\model\ProductModel;use think\Db;class ProductCategoryController extends  BaseController{    /**     * 列表页     * @return \think\response\Json|\think\response\View     */    public function index()    {        $this->view->engine->layout(true);        $data = input('','','trim');        $search = [];        if(!empty($data)){            $search = filter_array($data);        }        $tree = ProductCategoryModel::tree($search);        if ($tree['code'] == 1) {            $tree_view = ProductCategoryModel::treeView($tree['data']);            $select = ProductCategoryModel::where('level','=',1)->field('id,name')->select();            $alias = ProductCategoryModel::$alia;            return view('', ['data' => $tree_view,'select'=>$select,'alias'=>$alias,'tree'=>$tree['data']]);        } else {            return view('layout/message', ['data' => $tree['msg']]);        }    }    /**     * 创建     * @return \think\response\Json|\think\response\View     */    public function create(){        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $data = input('post.','','trim');                if(!empty($data['parent_id'])){                    $parent = ProductCategoryModel::get($data['parent_id']);                    if(empty($parent)){                        throw new \think\Exception('父级类别不存在');                    }                    $data['level'] = $parent->level +1;                }                $this->validate($data, 'ProductCategory');                $category = new ProductCategoryModel($data);                if(!$category->save()){                    throw new \think\Exception('分类添加失败');                }                $category_attr  = explode(',',$data['category_attr']);                foreach ($category_attr as $k => $v){                    $attr_data = [                        'category_id'=>$category->id,                        'name'=>$v,                        'sort'=>$k+1,                    ];                    $attr = new ProductCategoryAttrModel($attr_data);                    if(!$attr->save()){                        throw new \think\Exception('分类属性保存失败');                    }                }                $result['msg'] = '分类添加成功';                $result['success'] = true;                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }        return view('');    }    /**     * 展示     * @return \think\response\Json|\think\response\View     */    public function edit(){        $id = input('id');        try {            if(empty($id)){                throw new \think\Exception('错误请求');            }            $category = ProductCategoryModel::get($id);            if(empty($category)){                throw new \think\Exception('分类不存在');            }            $category = $category->getData();            $tree = ProductCategoryModel::tree([]);            if($tree['code'] == 0){                throw new \think\Exception('分类列表失败');            }            $category_str = '';            $category_attr = ProductCategoryAttrModel::getCategoryAttr($id);            if(!empty($category_attr)){                $category_str = implode(',',$category_attr);            }            $tree_view = ProductCategoryModel::treeView($tree['data']);            $select = ProductCategoryModel::where('level','=',1)->field('id,name')->select();            if(\think\facade\Request::isPost()){                try {                    $data = input('','','trim');                    $this->validate($data, 'ProductCategory');                    //更改父级分类                    $level = 1;                    if(!empty($data['parent_id'])){                        $parent = ProductCategoryModel::get($data['parent_id']);                        if(empty($parent)){                            throw new \think\Exception('父级类别不存在');                        }                        if($data['parent_id'] == $category['id']){                            throw new \think\Exception('无效的所属分类');                        }                        $level = $parent->level+1;                    }                    $children = ProductCategoryModel::getChildren($category->id,$category->level);                    if($children['code'] == 0){                        throw new \think\Exception('子集获取失败');                    }                    if(in_array($data['parent_id'],$children['data'])){                        throw new \think\Exception('不能选择子类作为所属分类');                    }                    $level_diff = $level - $category->level;                    if($level_diff != 0){                        $data['level'] = $level;                        if(!empty($children['data'])){                            $children_result =  ProductCategoryModel::whereIn('id',$children['data'])->update(                                ['level'=>Db::raw("level+$level_diff")]);                        }                    }                    if(!$category->force()->save( $data)){                        throw new \think\Exception('编辑失败');                    }                    $category_attr  = explode(',',$data['category_attr']);                    foreach ($category_attr as $k => $v){                        $attr_data = [                            'category_id'=>$category->id,                            'name'=>$v,                            'sort'=>$k+1,                        ];                        $attr = ProductCategoryAttrModel::where(['category_id'=>$category->id,'name'=>$v])->find();                        if(!empty($attr)){                            $attr->sort = $attr_data['sort'];                        } else{                            $attr = new ProductCategoryAttrModel($attr_data);                        }                        if(!$attr->force()->save()){                            throw new \think\Exception('分类属性保存失败');                        }                    }                    $delete = ProductCategoryAttrModel::whereNotIn('name',$category_attr)->delete();                    $result['msg'] = '编辑成功';                    $result['success'] = true;                    return json($result);                } catch (\Exception $e) {                    return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);                }            }else{                return  view('',['data'=>$category,'select'=>$select,'tree'=>$tree_view,'category_str'=>$category_str]);            }        } catch (\Exception $e) {            return  view('layout/message',['msg'=>$e->getMessage()]);        }    }    /**     *删除     * @return \think\response\Json     */    public function delete()    {        try {            $id = input('id');            if(empty($id)){                throw new \think\Exception('错误请求');            }            $category = ProductCategoryModel::get($id);            if(empty($category)){                throw new \think\Exception('分类不存在');            }            $product = ProductModel::where('category_id','=',$id)->select();            if(!empty($product)){                throw new \think\Exception('存在所属分类的商品信息,不能删除');            }            $result = $category->delete();            if(!$result){                throw new \think\Exception('删除分类失败');            }            return json(['success' => 1, 'msg' => '删除成功']);        } catch (\Exception $e) {            return json(['success' => 0, 'msg' => $e->getMessage()]);        }    }    /*     * 获取分类属性     */    public function attr(){        try {            $id = input('category_id','');            $product_id = input('product_id','');            if(empty($id)){                throw new \think\Exception('错误请求');            }            $con = [                'category_id'=>$id,                'product_id'=>$product_id,            ];            $list = ProductCategoryAttrModel::getList($con);            if($list['code'] == 0){                throw new \think\Exception('查询失败:'.$list['msg']);            }            return json(['success' => 1, 'data' => $list['rows']]);        } catch (\Exception $e) {            return json(['success' => 0, 'msg' => $e->getMessage()]);        }    }}