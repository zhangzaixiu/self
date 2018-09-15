<?phpnamespace app\common\model;class ProductCategoryModel extends BaseModel{    public static $tree_data = [];    /**     * 定义别名字段     * @var array     */    public static $alia = [        'is_show'=>[            1=>'是',            2=>'否'        ],        'is_top'=>[            1=>'是',            2=>'否'        ],    ];    public function getIsShowAttr($value,$data)    {        return self::$alia['is_show'][$value];    }    public function getIsTopAttr($value)    {        return self::$alia['is_top'][$value];    }    /**     *获取列表信息     * @param $input     * @param string $field     * @return array     */    public static function getList($input,$field=''){        try{            $field = !empty($field)?$field:'*';            $category = self::field($field);            if(isset($input['is_top'])){                $category->where(['is_top'=>$input['is_top']]);            }            if(isset($input['gt_level'])){                $category->where('level','>',$input['gt_level']);            }            if(isset($input['is_show'])){                $category->where(['is_show'=>$input['is_show']]);            }            if(isset($input['name'])){                $category->where('name','like','%'.$input['name'].'%');            }            $category->order(['level'=>'asc','sort'=>'desc']);            $rows = $category->select();            return ['code'=>1,'rows'=>$rows];        }catch(\Exception $e) {            return array('code' => 0, 'rows' => [], 'msg' => $e->getMessage());        }    }    /**     * 获取树形结构的格式     * @param $input     * @return array     */   public static function tree($input){        $data = self::getList($input);        if($data['code'] == 0){            return $data;        }        $new = list_to_tree($data['rows'], 'id','parent_id','children');        return ['code'=>1,'data'=>$new];    }    public static function getChildren($parent_id,$level = 0, &$arr = []){        $data = self::getList(['gt_level'=>$level]);        if($data['code'] == 0){            return $data;        }        foreach($data['rows'] as $k => $v){            if($v['parent_id'] == $parent_id){                $arr[] = $v['id'];                self::getChildren($v['id'],$v['level'],$arr);            }        }        return ['code'=>1,'data'=>$arr];    }    /**     * 将树形结构转化二维数组     * @param $data     * @return array     */   public static function treeView($tree){       foreach($tree as $k => $v){           if(isset($v['children']) && !empty($v['children'])){               unset($v['children']);               $v['has_children'] = 1;               self::$tree_data[$v['id']] = $v;               self::treeView($tree[$k]['children']);           }else{               $v['has_children'] = 0;               self::$tree_data[$v['id']] = $v;           }       }       return   self::$tree_data;   }}