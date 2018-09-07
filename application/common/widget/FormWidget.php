<?phpnamespace app\common\Widget;use think\Model;class FormWidget extends Model{    /*     * 地区     */    public  function district($name,$value ='',$role = ''){        $str = '<div  style="border: 1px solid #e4eaec;border-radius: 3px">                    <div class="form-group" style="overflow: hidden;padding-left: 10px">                        <input  class="form-control" type="text" data-toggle="city-picker" value="" data-id="'.$name.'_district">                    </div>               </div>               <input  class="form-control" name="'.$name.'" '.$role.' type="hidden" value="'.$value.'" id="'.$name.'_district">';        return $str;    }    /**     * 图片选择器     * @param $name     * @param string $value     * @param string $role     * @param array $attr     * @return string     */    public  function image($name,$value ='',$role = '',$attr=[]){        $default = [            'class'=>'form-control',            'data-ext'=>'jpg,jpeg,png,gif',            'data-size'=>3,        ];        $attr = array_merge($default,$attr);        unset($attr['data-id']);        $option = '';        foreach ($attr as $k => $v){            $option .=' '.$k.'='.$v.' ';        }        $str =   '<input type="file" '.$option.' data-id="'.$name.'_image" onchange="uploadImage($(this))"  data-plugin="dropify" data-default-file="'.$value.'" >            <div>支持'.$attr['data-ext'].'格式,大小不超过'.$attr['data-size'].'M</div>            <input type="hidden"   name="'.$name.'" id="'.$name.'_image"  value="" '.$role.'>';        return $str;    }    public  function richText($name,$value ='',$role = ''){        $str = '<div id="'.$name.'_editor" data-plugin="editor" data-id="'.$name.'_richtext">'.$value.'</div>             <input name="'.$name.'" hidden '.$role.' id="'.$name.'_richtext" value="'.$value.'">';        return $str;    }}