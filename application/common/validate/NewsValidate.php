<?phpnamespace app\common\validate;use think\Validate;class NewsValidate extends Validate{    protected $rule =   [        'title|标题'=>"require|max:50",        'is_banner|是否设为banner'=>"require",        'img|封面'=>'require',        'content|详情'=>'require',        'status|状态'=>'require',    ];}