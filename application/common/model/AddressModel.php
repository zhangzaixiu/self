<?phpnamespace app\common\model;class AddressModel extends BaseModel{    public static function appList($input){        try{            $default = [                'offset'=>0,                'limit'=>null,            ];            $input = array_merge($default,$input);            $join = [            ];            $cart = self::field('a.*')->alias('a')                ->join($join)                ->where('a.customer_id','=',$input['customer_id'])                ->order(['a.is_default'=>'desc']);            $cart->limit($input['offset'],$input['limit']);            $rows = $cart->select();            $data = [];            foreach ($rows as $k=>&$v){                $array = [$v['province'],$v['city'],$v['district']];                $v['region_name'] = RegionModel::nameArrayByIds($array);                $data[] = $v;            }            return ['code'=>1,'rows'=>$data];        }catch(\Exception $e) {            return array('code' => 0, 'rows' => [], 'msg' => $e->getMessage());        }    }}