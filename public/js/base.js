
function serializeData(formId){
    var serializeObj={},formdata='';
    if(typeof formId == "object"){
        if(formId.length ==0){
           return serializeObj;
        }
        formdata = formId.serializeArray();
    }else{
        formdata = $(formId).serializeArray();
    }

    $(formdata).each(function(){
        serializeObj[this.name]=serializeObj[this.name]?serializeObj[this.name]+","+this.value:this.value;
    });
    return serializeObj;
};


//表单验证
$.extend({

    initForm: function (container) {
       if($.validator){
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

           $("form",container).validate({
               ignore: '.ignore',
           });
       }

    }
});
$.initForm();


//删除按钮
$('body').on('click','button[data-toggle="confirm"]',function(){
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
                            },1000);
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

//保存表单
$(".btn-save").click(function () {
    //验证
    var flag = $("form").valid();
    if(!flag){
        return;
    }

    var form= $(this).closest("form"),url = $(this).data('url'),data=serializeData(form);
    console.log(data);
    $.post(url, data, function (res) {
        if (res["success"]) {
            toastr.success(res["msg"]);
            setTimeout(function(){
                if(res['url']){
                    location.href=res['url'];
                }else{
                    location.reload();
                }

            },1000);
        } else {
            toastr.error(res["msg"]);
        }
    });
});


//分页添加参数
$('#search_form .search_button').on('click',function () {
    $(this).addClass('checked');
});

//分页查询参数
function paginateParams(params){
    var data=serializeData("search_form");
    if($('#search_form .search_button').hasClass('checked')){
        $.extend( params, data );
    }
    return params;
}


//单图上传
function uploadImage(file) {
    var id = file.attr('data-id'),dir = file.attr('data-dir')||'default',ext = file.attr('data-ext')||'jpg,jpeg,png,gif',size = file.attr('data-size')||3,image=file[0].files[0],data = new FormData();
    data.append("file", image);
    data.append("dir", dir);
    data.append("ext", ext);
    data.append("size", size);
    $.ajax({
        data: data,
        type: "POST",
        contentType: false,
        processData: false,
        url: "/admin/upload/ajaxUploads",
        success: function (res) {
            if (res.code == 0) {
                toastr.error(res.msg);
                $("#" + id).val('');
                $('.dropify-clear').click();
                return;
            }else{
                $("#" + id).val(res.id);
            }
        },
        error:function (res) {
            $(disabled).attr('disabled',false);
            toastr.error('上传失败');
            $("#" + id).val('');
            $('.dropify-clear').click();
            return;
        }
    }, 'JSON');
}

// /**
//  * 上传图片
//  * files  file
//  */
// function uploadFile(files, imageClass) {
//     // 赋值的hidden input  id
//     var id = files.attr('data-id');
//     // 最大上传图片数量
//     var limitNum = files.attr('data-limit');
//     // 上传路径
//     var dir = files.attr('data-dir')||'default';
//
//     // 上传文件类型
//     var ext = files.attr('data-ext');
//     if (ext) {
//         var ext = ext.split(",");
//     } else {
//         ext = 'jpg,jpeg,png,gif';
//     }
//     console.log(ext);
//
//     var size = files.attr('data-size');
//     if (size == "" || size == undefined) {
//         size = 3;
//     }
//
//     var show_name = files.attr('data-show_name');
//
//     var show_link = files.attr('data-show_link');
//
//     var disabled = files.attr('data-disabled');
//     $(disabled).attr('disabled',disabled);
//     //最大上传数量
//     if (isMultyple) {
//         if ($("#" + id).val() != '' && $("#" + id).val() != 0) {
//             var idArr = $("#" + id).val().split(",");
//         } else {
//             var idArr = new Array();
//         }
//         if (idArr.length >= limitNum) {
//             toastr.error("最多可以上传" + limitNum + "张图片");
//             return
//         }
//     }
//     if (imageClass) {
//         var imageBox = $("#" + imageClass).find('img');
//     }
//     var url = files.attr('data-url');
//     var files = files.get(0).files[0];
//
//     var obj = files;
//     var data = new FormData();
//     data.append("file", obj);
//     data.append("dir", dir);
//     data.append("ext", ext);
//     data.append("size", size);
//     if(code){
//         data.append("code", code);
//     }
//     $.ajax({
//         data: data,
//         type: "POST",
//         url: url,
//         cache: false,
//         contentType: false,
//         processData: false,
//         success: function (res) {
//             $(disabled).attr('disabled',false);
//             if (res.code == 0) {
//                 toastr.error(res.msg);
//                 $("#" + id).val('');
//                 if(show_name){
//                     $(show_name).val('');
//                 }
//                 if(show_link){
//                     $(show_link).html("");
//                 }
//                 $('.dropify-clear').click();
//                 return;
//             }else{
//                     $("#" + id).val(res.id);
//                     if(show_link){
//                         $(show_link).html("<a href='"+res.path+"'>"+res.fileName+"</a>");
//                     }
//                     if(show_name){
//                         $(show_name).val(files.name);
//                     }
//                     if (imageClass) {
//                         imageBox.attr('src', res.path);
//                         if($("#" + imageClass).hasClass('popup-link')){
//                             $("#" + imageClass).attr('data-mfp-src',res.path);
//                         }
//                     }
//             }
//
//         },
//         error:function (res) {
//             $(disabled).attr('disabled',false);
//             toastr.error('上传失败');
//             $("#" + id).val('');
//             if(show_name){
//                 $(show_name).val('');
//             }
//             if(show_link){
//                 $(show_link).html("");
//             }
//             $('.dropify-clear').click();
//             return;
//         }
//     }, 'JSON');
// }

