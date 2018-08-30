<?phpnamespace app\common\model;class CustomerModel extends BaseModel{    /**     * 定义别名字段     * @var array     */    public static $alia = [        'status'=>[            1=>'正常',            2=>'冻结'        ],        'type'=>[            1=>'普通用户',            2=>'VIP'        ],        'source'=>[            1=>'网站注册',            2=>'后台添加',            3=>'app注册'        ]    ];    public function getStatusAttr($value)    {        return self::$alia['status'][$value];    }    public function getTypeAttr($value)    {        return self::$alia['type'][$value];    }    public function getSourceAttr($value)    {        return self::$alia['source'][$value];    }    public static function getList($input,$field=''){        try{            $default = [                'sort'=>'id',                'order'=>'desc',                'offset'=>0,                'limit'=>null,            ];            $input = array_merge($default,$input);            $field = !empty($field)?$field:'*';            $customer = self::field($field);            $customer->order($input['sort'],$input['order']);            $customer->limit($input['offset'],$input['limit']);            $rows = $customer->select();//            foreach ($rows as $k => &$v){//                $v['status_alias'] = $v->status_alias;//                $v['type_alias'] = $v->type_alias;//                $v['source_alias'] = $v->source_alias;//            }            $count = $customer->count();            return ['code'=>1,'total' => $count,'rows'=>$rows];        }catch(\Exception $e) {            return array('code' => 0, 'rows' => [], 'msg' => $e->getMessage());        }    }}