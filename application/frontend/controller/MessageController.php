<?php
/**
 * Created by PhpStorm.
 * User: Just
 * Date: 2018/8/1 0001
 * Time: 10:35
 */
namespace app\frontend\controller;
use app\common\model\Etprs;
use think\Db;

//  信息中心
class MessageController extends  BaseController

{
    // 新闻政策
    function news(){

        $con['a.isDelete']=0;
        $con['a.status']=2; //发布

        $postData=input('request.',null,'trim');

        $pageParam['query']=array();
        //新闻政策名称
        if(!empty($postData['title'])){
            $con['a.title'] = array('like','%'.$postData['title'].'%');
            $pageParam['query']['title'] = $postData['title'];
            $title=$postData['title'];
        }else{
            $title='';
        }
        //banner
        $con1['is_banner']=1;
        $con1['status']=2; // 2发布
        $join=[['sysFile b',' a.img=b.id','left']];
        $banner=getDataList('News',$con1,'a.id,b.savePath','',$join);
        $banner=$banner['data']; //dump($banner);exit;
        foreach ($banner as $k=>$v){
            //图片是否存在\
            if (!is_file(ROOT_PATH . "/public" . $banner[$k]['savePath'])) {
                $banner[$k]['savePath'] = '';
            }
        }

        $list = Db::name('News')->alias('a')
                ->field('a.*,b.savePath')
                ->join('sysFile b',' a.img=b.id','left')
                ->where($con)  //搜索
                ->order('a.addtime desc')
                //->paginate(7);
                ->paginate(7, false, $pageParam); // 搜索分页
        //echo Db::name('News')->getlastsql();//exit;
        //dump($list);exit;
        // 获取分页显示
        $page = $list->render();
        // 把分页对象转化为数组
        $list = $list->toArray();
        $list = $list['data'];
        $count=count(getDataList('News',$con,'a.id')['data']); //数量
        // if ($list){
        foreach ($list as $k=>$v){
            //格式化时间戳
            $list[$k]['addtime']=$v['addtime']?date('Y-m-d H:i',$v['addtime']):'';

            //-----------zx
            $list[$k]['content_sub'] = mb_substr(strip_tags($v['content']),0,150);
            //-----------

            //图片是否存在\
            if (!is_file(ROOT_PATH . "/public" . $list[$k]['savePath'])) {
                $list[$k]['savePath'] = '';
            }
        }
        // }
        //dump($list);exit;

        return view('',array('tag'=>'message','banner'=>$banner,'news'=>$list,'page'=>$page,'count'=>$count,'title'=>$title));
    }

    // 新闻政策 详情
    function newinfo(){
        //引用指定布局
        $this->view->engine->layout('layout/detail');
        try {
            $id=input('id');
            if(!$id){
                throw new \think\Exception('错误请求');
            }
            $con['a.id']=$id;
            $join=[['sysFile b',' a.img=b.id','left']];
            $data=findById('News',$con,'a.*,b.savePath','',$join);
            //dump($data);
            $data['data']['addtime']=$data['data']['addtime']?date('Y-m-d H:i',$data['data']['addtime']):'';
            if ($data['code']==0){
                throw new \think\Exception('获取新闻政策详情失败:'.$data['msg']);
            }
            return view('',array('tag'=>'message','data'=>$data['data']));
        }catch(\Exception $e){
            c_log($e);
            //关闭模板布局
            $this->view->engine->layout(false);
            //错误提示页面
            return view('layout/message',['message'=>$e->getMessage()]);
        }
    }

    //厂房信息 type=1
    function factory(){
        $data=self::getList($type=1);
        //dump($data['banner']);
        return view('',array('tag'=>'message','banner'=>$data['banner'],'list'=>$data['list'],'page'=>$data['page'],'count'=>$data['count'],'search'=>$data['search']));
    }

    //厂房信息 详情 type=1
    function factoryinfo(){
        //引用指定布局
        $this->view->engine->layout('layout/detail');

        try{
            $id=input('id');//dump($id);
            $data=self::getList($type=1,$id); //dump($data);
            if(!$data['list']){
                throw new \think\Exception('错误请求');
            }
            $data=$data['list'][0];

            return view('',array('tag'=>'message','data'=>$data));
         }catch(\Exception $e){
            c_log($e);
                //关闭模板布局
            $this->view->engine->layout(false);
                //错误提示页面
            return view('layout/message',['message'=>$e->getMessage()]);
        }
    }

    //资产转卖 type=2
    function asset(){
        $data=self::getList($type=2);
        return view('',array('tag'=>'message','banner'=>$data['banner'],'list'=>$data['list'],'page'=>$data['page'],'count'=>$data['count'],'search'=>$data['search']));
    }

    //资产转卖详情 type=2
    function assetinfo(){
        //引用指定布局
        $this->view->engine->layout('layout/detail');

        try{
            $id=input('id');//dump($id);
            $data=self::getList($type=2,$id); //dump($data);
            if(!$data['list']){
                throw new \think\Exception('错误请求');
            }
            $data=$data['list'][0];

            return view('',array('tag'=>'message','data'=>$data));
        }catch(\Exception $e){
            c_log($e);
            //关闭模板布局
            $this->view->engine->layout(false);
            //错误提示页面
            return view('layout/message',['message'=>$e->getMessage()]);
        }

    }


    //用工信息 type=3
    function recruit(){
        $data=self::getList($type=3);
        return view('',array('tag'=>'message','banner'=>$data['banner'],'list'=>$data['list'],'page'=>$data['page'],'count'=>$data['count'],'search'=>$data['search']));
    }

    //用工信息 type=3
    function recruitinfo(){
        //引用指定布局
        $this->view->engine->layout('layout/detail');
        try{
            $id=input('id');//dump($id);
            $data=self::getList($type=3,$id); //dump($data);
            if(!$data['list']){
                throw new \think\Exception('错误请求');
            }
            $data=$data['list'][0];
            return view('',array('tag'=>'message','data'=>$data));
        }catch(\Exception $e){
            c_log($e);
            //关闭模板布局
            $this->view->engine->layout(false);
            //错误提示页面
            return view('layout/message',['message'=>$e->getMessage()]);
        }
    }

    //技术信息 type=4
    function skill(){
        $data=self::getList($type=4);
        return view('',array('tag'=>'message','banner'=>$data['banner'],'list'=>$data['list'],'page'=>$data['page'],'count'=>$data['count'],'search'=>$data['search']));
    }

    //技术信息 type=4
    function skillinfo(){
        //引用指定布局
        $this->view->engine->layout('layout/detail');
        try{
            $id=input('id');//dump($id);
            $data=self::getList($type=4,$id); //dump($data);
            if(!$data['list']){
                throw new \think\Exception('错误请求');
            }
            $data=$data['list'][0];
            return view('',array('tag'=>'message','data'=>$data));
        }catch(\Exception $e){
            c_log($e);
            //关闭模板布局
            $this->view->engine->layout(false);
            //错误提示页面
            return view('layout/message',['message'=>$e->getMessage()]);
        }
    }

    //寻求合作 type=5
    function cooperation(){
        $data=self::getList($type=5);
        return view('',array('tag'=>'message','banner'=>$data['banner'],'list'=>$data['list'],'page'=>$data['page'],'count'=>$data['count'],'search'=>$data['search']));
    }

    //寻求合作 type=5
    function cooperation_info(){
        //引用指定布局
        $this->view->engine->layout('layout/detail');
        try{
            $id=input('id');//dump($id);
            $data=self::getList($type=5,$id); //dump($data);
            if(!$data['list']){
                throw new \think\Exception('错误请求');
            }
            $data=$data['list'][0];
            return view('',array('tag'=>'message','data'=>$data));
        }catch(\Exception $e){
            c_log($e);
            //关闭模板布局
            $this->view->engine->layout(false);
            //错误提示页面
            return view('layout/message',['message'=>$e->getMessage()]);
        }
    }

    /*
     * 信息中心
     * type  1厂房信息 2资产转卖 3用工信息 4技术信息 5寻求合作  commmon/model/Message.php
     * id
     * */
    function getList($type='',$id=''){
        $con['a.isDelete']=0;
        $con['a.status']=2; //发布
        if($type){
            $con['a.type']=$type;
        }
        if($id){
            $con['a.id']=$id;
        }

        $postData=input('request.',null,'trim');
        //dump($postData);//exit;

        $pageParam['query']=array();
        $search=array();
        //地点
        if(!empty($postData['districtId'])){
            $con['a.regionId']=array('like',$postData['districtId'].'%');

            $pageParam['query']['districtId'] = $postData['districtId'];
            $pageParam['query']['cityName'] = $postData['cityName'];

            $search['districtId']=$postData['districtId'];
            $search['cityName']=$postData['cityName'];
        }else{
            $search['districtId']='';
            $search['cityName']='';
        }

        //厂房名称
        if(!empty($postData['title'])){
            $con['a.title']=array('like','%'.$postData['title'].'%');
            $pageParam['query']['title'] = $postData['title'];
            $search['title']=$postData['title'];
        }else{
            $search['title']='';
        }

        //banner
        $con1['is_banner']=1;
        $con1['status']=2; // 2发布
        $join=[['sysFile b',' a.img=b.id','left']];
        $banner=getDataList('News',$con1,'a.id,b.savePath','',$join);
        $banner=$banner['data']; //dump($banner);exit;
        foreach ($banner as $k=>$v){
            //图片是否存在\
            if (!is_file(ROOT_PATH . "/public" . $banner[$k]['savePath'])) {
                $banner[$k]['savePath'] = '';
            }
        }

        //dump($con);
        $list = Db::name('EtprsMessage')->alias('a')
                ->field('a.*,b.savePath,c.name as etprs_name')
                ->join('sysFile b',' a.img=b.id','left')
                ->join('etprs c', 'a.etprsId = c.id', 'left')
                ->where($con)  //搜索
                ->order('a.addtime desc')
                //->paginate(10);
                ->paginate(12, false, $pageParam); // 搜索分页
        //echo Db::name('EtprsMessage')->getlastsql();//exit;
        //dump($list);exit;
        // 获取分页显示
        $page = $list->render();
        // 把分页对象转化为数组
        $list = $list->toArray();
        $list = $list['data'];
        $count=count(getDataList('EtprsMessage',$con,'a.id')['data']); //数量
        // if ($list){
        foreach ($list as $k=>$v){
            //格式化时间戳
            $list[$k]['addtime']=$v['addtime']?date('Y-m-d H:i',$v['addtime']):'';
            //地址
            $list[$k]['cityData']=(get_district( $list[$k]['regionId'])['city']);
            //图片是否存在\
            if (!is_file(ROOT_PATH . "/public" . $list[$k]['savePath'])) {
                $list[$k]['savePath'] = '';
            }
            //手机号
            if(!session('userId')){
                $list[$k]['mobile']= substr_replace($list[$k]['mobile'],'****',3,4);
                $list[$k]['mob']=0;  //登录</a>后可查看完整信息
            }else{
                $list[$k]['mob']=1;
            }

            $list[$k]['detail_sub']=mb_substr(strip_tags($v['detail']),0,300);

        }
        // }

        return array('banner'=>$banner,'list'=>$list,'page'=>$page,'count'=>$count,'search'=>$search);
        //return view('',array('list'=>$list,'page'=>$page,'count'=>$count));
    }

}