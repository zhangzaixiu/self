<?phpnamespace app\admin\controller;use app\common\model\EnterCategoryModel;use think\Db;class EnterCategoryController extends  BaseController{    /**     * 列表页     * @return \think\response\Json|\think\response\View     */    public function index(){        $this->view->engine->layout(true);        if(\think\facade\Request::isAjax()){            $data = array_filter(input('','','trim'));            $data=EnterCategoryModel::getList($data);            return $data;        }        return view();    }    /**     * 添加     * @return \think\response\Json|\think\response\View     */    public function create(){        $this->view->engine->layout(true);        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $data = input('','','trim');                $this->validate($data, 'EnterCategory');                $banner = new EnterCategoryModel($data);                if(!$banner->save()){                    throw new \think\Exception('添加失败');                }                $result['msg'] = '操作成功';                $result['success'] = true;                $result['url'] = url('enter_category/index');                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }        return view();    }    /**     * 编辑     * @return \think\response\Json|\think\response\View     */    public function edit(){        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $id = input('id');                if(empty($id)){                    throw new \think\Exception('错误请求');                }                $data = input('','','trim');                $this->validate($data, 'EnterCategory');                $category = EnterCategoryModel::get($id);                if(empty($category)){                    throw new \think\Exception('入驻类型不存在');                }                if(!$category->force()->save( $data)){                    throw new \think\Exception('操作失败');                }                $result['msg'] = '编辑成功';                $result['success'] = true;                $result['url'] = url('enter_category/index');                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }    }    /**     * 展示     * @return \think\response\Json|\think\response\View     */    public function show(){        $this->view->engine->layout(true);        $id = input('id');        try {            if(empty($id)){                throw new \think\Exception('错误请求');            }            $data=EnterCategoryModel::getList(['id'=>$id]);            if($data['code'] == 0 ){                throw new \think\Exception($data['msg']);            }            if(empty($data['rows'])){                throw new \think\Exception('信息不存在');            }            $data = $data['rows'][0];            return  view('',['data'=>$data]);        } catch (\Exception $e) {            return  view('layout/message',['msg'=>$e->getMessage()]);        }    }    /**     * 删除     * @return \think\response\Json     */    public function delete()    {        try {            $id = input('id');            if(empty($id)){                throw new \think\Exception('错误请求');            }            $result = EnterCategoryModel::where(['id'=>$id])->delete();            if(!$result){                throw new \think\Exception('删除分类失败');            }            return json(['success' => 1, 'msg' => '删除成功']);        } catch (\Exception $e) {            return json(['success' => 0, 'msg' => $e->getMessage()]);        }    }}