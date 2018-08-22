
function serializeData(formId){
    var serializeObj={};
    var formdata=$(formId).serializeArray();
    $(formdata).each(function(){
        serializeObj[this.name]=serializeObj[this.name]?serializeObj[this.name]+","+this.value:this.value;
    });
    return serializeObj;
};


//删除按钮
$('body').on('click','button[data-toggle="delete"]',function(){
    var message = $(this).data('message')||'确认此操作吗?',url = $(this).data('url'),callback = $(this).data('callback')||'';
    alertify.theme('bootstrap')
        .confirm(message, function () {
            $.ajax({
                url: url,
                type: 'POST',
                dataType: 'JSON',
                success: function (data) {
                    if(callback !=''){
                        eval(callback+'()');
                    }else{
                        if (data.success) {
                            toastr.success(data.message||"操作成功");
                            setTimeout(function(){
                                location.reload();
                            },1000)
                        } else {
                            toastr.error(data.msg);
                        }
                    }
                },
                error: function () {
                    toastr.error('服务器异常，请稍后再试！');
                }
            });
        });
});

