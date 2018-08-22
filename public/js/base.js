
function serializeData(formId){
    var serializeObj={};
    var formdata=$(formId).serializeArray();
    $(formdata).each(function(){
        serializeObj[this.name]=serializeObj[this.name]?serializeObj[this.name]+","+this.value:this.value;
    });
    return serializeObj;
};


//表单验证
$.extend({
    initForm: function (container) {
        if (typeof(container) === 'undefined') {
            container = $(document.body);
        }
        var cnmsg = {
            required: "该项是必填项",
            remote: "请修正该字段",
            email: "请输入正确格式的电子邮箱",
            url: "请输入正确的网址",
            date: "请输入正确的日期",
            dateISO: "请输入合法的日期 (ISO).",
            number: "请输入数字格式",
            digits: "请输入整数格式",
            creditcard: "请输入合法的信用卡号",
            equalTo: "请再次输入相同的值",
            accept: "请输入拥有合法后缀名的字符串",
            maxlength: $.validator.format("请输入一个长度最多是 {0} 的字符串"),
            minlength: $.validator.format("请输入一个长度最少是 {0} 的字符串"),
            rangelength: $.validator.format("请输入一个长度介于 {0} 和 {1} 之间的字符串"),
            range: $.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
            max: $.validator.format("请输入一个最大为 {0} 的值"),
            min: $.validator.format("请输入一个最小为 {0} 的值")
        };

        $.extend($.validator.messages, cnmsg);
        $.validator.addMethod("chinese", function (value, element) {
            var chinese = /^[\u4e00-\u9fa5]+$/;
            return (chinese.test(value))
        }, "请输入中文"),
        $.validator.addMethod("mobile", function (value, element) {
            var mobile = /^1[3|4|5|7|8][0-9]\d{8}$/;
            console.log(this.optional(element) );
            return this.optional(element) || (mobile.test(value))
        }, "请输入11位手机号码"),
        $.validator.addMethod("email", function (value, element) {
            var email = /^(?:\w+\.?)*\w+@(?:\w+\.)+\w+$/;
            return  (email.test(value))
        }, "请输入正确格式的电子邮箱"),
        $.validator.methods.url = function (value, element) {
            return /^((http|https|ftp):\/\/)?(\w(\:\w)?@)?([0-9a-z_-]+\.)*?([a-z]{2,6}(\.[a-z]{2})?(\:[0-9]{2,6})?)((\/[^?#<>\/\\*":]*)+(\?[^#]*)?(#.*)?)?$/i.test(value)
        };

        $.validator.setDefaults({
            // submitHandler: function() {
            //     alert("提交事件!");
            // }
        });

        $("form",container).validate({
            ignore: '.ignore',
        });
    }
});
$.initForm();


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

