<?phpnamespace app\frontend\controller;use think\Cache;use think\Cookie;use think\Db;use think\Request;use think\Session;class SiteController extends  BaseController{    /**     * @return array|\think\response\View     * 登录     */    public function login(){        $this->view->engine->layout('layout/site');        if(Request::instance()->isAjax()){            $data=input("request.");            try {                $mobile = $data["mobile"];                $password = $data["password"];                $rember_me = isset($data["rember_me"]);                //校验用户登录信息                $vld = $this->validate($data, 'EtprsLogin.login');                if ($vld === true) {                    //开启事务                    Db::startTrans();                    $msg=findById("etprs",["a.mobile"=>$mobile,'a.is_account'=>1],"a.status,a.id,a.password,a.iqbtId,a.name,a.contact,a.mobile,a.is_freeze,a.etprs_type,a.type,a.is_vip,a.vip_status,a.memberStartTime,a.memberEndTime,a.attend_type");                    if($msg['code'] == 0 || empty($msg['data'])){                        throw new \think\Exception("用户查询失败");                    }                    if($msg["data"]["is_freeze"] == 1){                        throw new \think\Exception("当前用户已被冻结");                    }                    if(in_array($msg['data']['type'],[9930002,9930003]) && $msg['data']['memberEndTime']<time()){                        $result = saveData('etprs', ['id'=>$msg["data"]['id'],'type'=>9930001,'is_vip'=>0,'vip_status'=>0]);                        if($result['code'] == 0){                            throw new \think\Exception("操作失败");                        }                    }                    if($rember_me){                        \cookie('mobile',$msg["data"]["mobile"],2592000);                        \app\common\helper\Cookie::setCookie('password',$password,2592000);                    }else{                        cookie('mobile', null);                        cookie('password', null);                    }                    //不把密码存储到session里                    unset($msg["data"]["password"]);                    //将用户信息记录到session                    session('user',$msg["data"]);                    session('userId',$msg["data"]["id"]);                    session('iqbtId',$msg["data"]["iqbtId"]);                    //添加登录日志                    $logmsg=saveLog("6012001","用户登录",session("userId"),"etprs");                    if($logmsg["code"]==='0'){                        throw new \think\Exception("写入日志错误");                    }                    //事务提交                    Db::commit();                    //获取跳转到的页面。跳转到第一个菜单页面                    $jump = url('/frontend/index/index');                    return array("code" => 1, "msg" =>'登录成功','data'=>$msg["data"],'url'=>$jump);                } else {                    throw new \think\Exception("校验失败：" . $vld);                }            } catch (\Exception $e) {                // 回滚事务                Db::rollback();                return array("code" => 0, "msg" =>$e->getMessage(),'data'=>[]);            }        }        return view('login',['mobile'=>Cookie::get('mobile'),'password'=>\app\common\helper\Cookie::getCookie('password')]);    }    /**     * 注册     * @return array|\think\response\Json     */    function register(){        $this->view->engine->layout('layout/site');        if(Request::instance()->isPost()){            try {                //开启事务                Db::startTrans();                $postData = input('',null,'trim');                $vld = $this->validate($postData, 'EtprsLogin.register');                if ($vld !== true) {                    throw new \think\Exception ($vld);                }                $validate_code = SendCode::checkMobileCode($postData['mobile'],$postData['code']);                if($validate_code['code'] == 0){                    throw new \think\Exception ($validate_code['msg']);                }                $postData['password'] = md5($postData['password']);                unset($postData['confirm_password']);                unset($postData['code']);                $msg=saveData("Etprs",$postData);                if($msg["code"] == 0){                    throw new \think\Exception('注册失败:'.$msg['msg']);                }                Cache::rm('sms_code_'.$postData['mobile']);                Db::commit();                return json(array('code'=>1,'msg'=>'注册成功'));                //事务提交            }catch (\Exception $e){                c_Log($e);                Db::rollback();                return array('code'=>0,'msg'=>$e->getMessage());            }        }        return view('');    }    /**     * 找回密码     * @return array     */    function forget(){        if(Request::instance()->isPost()){            try{                Db::startTrans();                $data = input('',null,'trim');                $vld = $this->validate($data, 'EtprsLogin.forget');                if ($vld !== true) {                    throw new \think\Exception ($vld);                }                $user = findById("Etprs",['mobile'=>$data['mobile'],'isDelete'=>0]);                if($user['code'] == 0){                    throw new \think\Exception("信息不存在");                }                $validate_code = SendCode::checkMobileCode($data['mobile'],$data['code']);                if($validate_code['code'] == 0){                    throw new \think\Exception ($validate_code['msg']);                }                $result = saveData("Etprs",['id'=>$user['data']['id'],'password'=>md5($data['password'])]);                if ($result['code'] == 0) {                    throw new \think\Exception('操作失败' . $result['msg']);                }                Cache::rm('sms_code_'.$data['mobile']);                Session::clear();                $result['msg'] = '操作成功';                $result['success'] = true;                //事务提交                Db::commit();                return $result;            } catch (\Exception $e) {                //记录事务                c_Log($e);                // 回滚事务                Db::rollback();                return array("code" => 0, "msg" =>$e->getMessage(),'data'=>[]);            }        }    }    /**     * 退出     */    function logout()    {        \think\Session::clear();        $this->redirect(url('site/login'));    }}