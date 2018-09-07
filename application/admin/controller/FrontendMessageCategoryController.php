<?phpnamespace app\admin\controller;use app\admin\model\FrontendMessageCategoryModel;class FrontendMessageCategoryController extends  BaseController{    /**     * 列表页     * @return \think\response\Json|\think\response\View     */    public function index(){        $this->view->engine->layout(true);        if(\think\facade\Request::isAjax()){            $search = filter_array(input('','','trim'));            $data = FrontendMessageCategoryModel::getList($search);            return $data;        }        return view();    }    /**     * 创建     * @return \think\response\Json|\think\response\View     */    public function create(){        if(\think\facade\Request::isPost()){            try {                $data = input('post.','','trim');                $this->validate($data, 'FrontendMessageCategory');                $banner = new FrontendMessageCategoryModel($data);                if(!$banner->save()){                    throw new \think\Exception('分类添加失败');                }                $result['msg'] = '分类添加成功';                $result['success'] = true;                return json($result);            } catch (\Exception $e) {                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }        return view('');    }    /**     * 展示     * @return \think\response\Json|\think\response\View     */    public function edit(){        $id = input('id');        try {            if(empty($id)){                throw new \think\Exception('错误请求');            }            $category = FrontendMessageCategoryModel::get($id);            if(empty($category)){                throw new \think\Exception('分类不存在');            }            if(\think\facade\Request::isPost()){                try {                    $data = input('','','trim');                    $this->validate($data, 'FrontendMessageCategory');                    if(!$category->force()->save( $data)){                        throw new \think\Exception('编辑失败');                    }                    $result['msg'] = '编辑成功';                    $result['success'] = true;                    return json($result);                } catch (\Exception $e) {                    return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);                }            }else{                return  view('',['data'=>$category]);            }        } catch (\Exception $e) {            return  view('layout/message',['msg'=>$e->getMessage()]);        }    }}