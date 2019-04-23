<?phpnamespace app\common\model;class OrderAttrModel extends BaseModel{    public static function getList($input){        try{            $default = [                'sort'=>'a.id',                'order'=>'desc',                'offset'=>0,                'limit'=>null,            ];            $input = array_merge($default,$input);            $attr = self::field('*')->alias('a')->field('a.*,b.create_time order_create_time')->leftJoin('order b','a.order_id = b.id');            if(isset($input['order_id'])){                $attr->where('a.order_id',"=",$input['order_id']);            }            if(isset($input['customer_id'])){                $attr->where('b.customer_id',"=",$input['customer_id']);            }            $attr->order($input['sort'],$input['order']);            $attr->limit($input['offset'],$input['limit']);            $rows = $attr->select();            $count = $attr->count();            return ['code'=>1,'total' => $count,'rows'=>$rows];        }catch(\Exception $e) {            return array('code' => 0, 'rows' => [], 'msg' => $e->getMessage());        }    }//    public function imgFile()//    {//        return $this->hasOne(SysFileModel::class,'id','img')->bind([//            'img_path'=>'save_path',//        ]);//    }    /**     * 热销产品     * author: zzx     * Date: 2018/11/16 0016     * Time: 10:32     * @param array $con     * @return array|\PDOStatement|string|\think\Collection     * @throws \think\db\exception\DataNotFoundException     * @throws \think\db\exception\ModelNotFoundException     * @throws \think\exception\DbException     */    static function hotSale($con = []){        $join = [            ['product b','b.id = a.product_id'],        ];        $hot =  self::where($con)->alias('a')            ->field("sum('a.count') sale_number,a.product_id,b.*")            ->join($join)            ->group('a.product_id')            ->order('sale_number','desc')            ->limit(20)->select();        foreach ($hot as $k=> &$v){            $v['image_array'] = $v['img']?explode(',',$v['img']):[];        }        return $hot;    }}