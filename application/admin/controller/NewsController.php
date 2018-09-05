<?phpnamespace app\admin\controller;use app\admin\model\NewsModel;use think\Db;class NewsController extends  BaseController{    /**     * 列表页     * @return \think\response\Json|\think\response\View     */    public function index(){        $this->view->engine->layout(true);        if(\think\facade\Request::isAjax()){            $data = array_filter(input('','','trim'));            $data=NewsModel::getList($data);            return $data;        }        return view();    }    /**     * 添加     * @return \think\response\Json|\think\response\View     */    public function create(){        $this->view->engine->layout(true);        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $data = input('','','trim');                $this->validate($data, 'News');                $banner = new NewsModel($data);                if(!$banner->save()){                    throw new \think\Exception('添加失败');                }                $result['msg'] = '操作成功';                $result['success'] = true;                $result['url'] = url('news/index');                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }        return view();    }    /**     * 编辑     * @return \think\response\Json|\think\response\View     */    public function edit(){        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $id = input('id');                if(empty($id)){                    throw new \think\Exception('错误请求');                }                $data = input('','','trim');                $this->validate($data, 'News');                $news = NewsModel::get($id);                if(empty($news)){                    throw new \think\Exception('新闻不存在');                }                if(!$news->force()->save( $data)){                    throw new \think\Exception('操作失败');                }                $result['msg'] = '编辑成功';                $result['success'] = true;                $result['url'] = url('news/index');                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }    }    /**     * 展示     * @return \think\response\Json|\think\response\View     */    public function show(){        $this->view->engine->layout(true);        $id = input('id');        try {            if(empty($id)){                throw new \think\Exception('错误请求');            }            $data=NewsModel::getList(['id'=>$id]);            if($data['code'] == 0 ){                throw new \think\Exception($data['msg']);            }            if(empty($data['rows'])){                throw new \think\Exception('信息不存在');            }            $data = $data['rows'][0];            return  view('',['data'=>$data]);        } catch (\Exception $e) {            return  view('layout/message',['msg'=>$e->getMessage()]);        }    }    /**     * 设置banner     * @return \think\response\Json     */    public function banner()    {        try {            $id = input('id');            if(empty($id)){                throw new \think\Exception('错误请求');            }            $news = NewsModel::get($id);            if(empty($news)){                throw new \think\Exception('新闻不存在');            }            if(!$news->force()->save( ['is_banner'=>1])){                throw new \think\Exception('设置失败');            }            return json(['success' => 1, 'msg' => '设置成功']);        } catch (\Exception $e) {            return json(['success' => 0, 'msg' => $e->getMessage()]);        }    }    /**     * 删除     * @return \think\response\Json     */    public function delete()    {        try {            $id = input('id');            if(empty($id)){                throw new \think\Exception('错误请求');            }            $result = NewsModel::where(['id'=>$id])->delete();            if(!$result){                throw new \think\Exception('角色失败');            }            return json(['success' => 1, 'msg' => '删除成功']);        } catch (\Exception $e) {            return json(['success' => 0, 'msg' => $e->getMessage()]);        }    }}