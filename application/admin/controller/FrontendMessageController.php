<?phpnamespace app\admin\controller;use app\admin\model\FrontendMessageCategoryModel;use app\admin\model\FrontendMessageModel;use think\Db;use think\Request;class FrontendMessageController extends  BaseController{    /**     * 列表页     * @return \think\response\Json|\think\response\View     */    public function index(){        $this->view->engine->layout(true);        if(\think\facade\Request::isAjax()){            $data = array_filter(input('','','trim'));            $data= FrontendMessageModel::getList($data);            return $data;        }        return view('');    }    /**     * 创建     * @return \think\response\Json|\think\response\View     */    public function create(){        $this->view->engine->layout(true);        $category = FrontendMessageCategoryModel::getSelectArray();        if(\think\facade\Request::isPost()){            try {                Db::startTrans();                $data = input('','','trim');                if(isset($data['info'][$data['type']])){                    $data = $data + $data['info'][$data['type']];                }                unset($data['info']);                /* if( request()->module() == 'admin'){//总后台                     $data['source'] = 1;                 }else{                     $data['source'] = 2;                 }*/                //-me 20180804                if( isset($data['etprsId'])  && $data['etprsId'] ){                    $data['source'] = 2;  //来源企业 默认 1 总后台                }                //----                $valiRes = $this->validate($data, 'EtprsMessage');                if ($valiRes !== true) {                    throw new \think\Exception($valiRes);                }                $result = saveData('EtprsMessage', $data);                if ($result['code'] == 0) {                    throw new \think\Exception('保存失败' . $result['msg']);                }                $result['msg'] = '保存成功';                $result['success'] = true;                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }        return view('',['category'=>$category]);    }    /**     * 展示     * @return \think\response\Json|\think\response\View     */    public function show(){        $id = input('id');        try {            if(empty($id)){                throw new \think\Exception('错误请求');            }            $data= \app\common\model\Message::getList(['id'=>$id]);            if($data['code'] == 0 ){                throw new \think\Exception($data['msg']);            }            if(empty($data['rows'])){                throw new \think\Exception('信息不存在');            }            $district_arr = get_district_arr($data['rows'][0]['regionId']);            if($district_arr['code'] == 0 ){                throw new \think\Exception($district_arr['msg']);            }            $alia = \app\common\model\Message::$alia;            return  view('',['data'=>$data['rows'][0],'type'=>$alia['type_alias'],'city'=>$district_arr['city']]);        } catch (\Exception $e) {            c_Log($e);            return  view('layout/message',['msg'=>$e->getMessage()]);        }    }    /**     * 编辑     * @return \think\response\Json|\think\response\View     */    public function edit(){        if(Request::instance()->isPost()){            try {                Db::startTrans();                $id = input('id');                if(empty($id)){                    throw new \think\Exception('错误请求');                }                $data = input('','','trim');                if(isset($data['info'][$data['type']])){                    $data = $data + $data['info'][$data['type']];                }                unset($data['info']);                if( request()->module() == 'admin'){//总后台                    $data['source'] = 1;                }else{                    $data['source'] = 2;                }                $valiRes = $this->validate($data, 'EtprsMessage');                if ($valiRes !== true) {                    throw new \think\Exception($valiRes);                }                $result = saveData('EtprsMessage', $data);                if ($result['code'] == 0) {                    throw new \think\Exception('编辑失败' . $result['msg']);                }                $result['msg'] = '编辑成功';                $result['success'] = true;                Db::commit();                return json($result);            } catch (\Exception $e) {                Db::rollback();                c_Log($e);                return json(['success' => false, 'msg' => $e->getMessage(), 'data' => []]);            }        }    }    /**     * 下线     * @return \think\response\Json     */    public function off()    {        try {            //dump(input(''));exit;            $id = input('id');            if(empty($id)){                throw new \think\Exception('错误请求');            }            //-me 20180814            if (input('del')){                $result = saveData('EtprsMessage', ['id'=>$id,'isDelete'=>1]);            }else{                $result = saveData('EtprsMessage', ['id'=>$id,'status'=>3]);            }            if ($result['code'] == 0) {                throw new \think\Exception('操作失败');            }            return json(['code' => 1, 'msg' => '操作成功']);        } catch (\Exception $e) {            c_Log($e);            return json(['code' => 0, 'msg' => $e->getMessage()]);        }    }}