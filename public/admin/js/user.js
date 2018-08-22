/**
 * Admui-basic v1.1.0 (http://www.admui.com/)
 * Copyright 2015-2017 Admui Team
 * Licensed under the Admui License 1.0 (http://www.admui.com/about/#license)
 */
(function (document, window, $) {
    'use strict';

    var $userAccont = $("#userAccountInfo");
     App.extend({
        handleAction: function () {
            var self = this,
                actionBtn = $('.site-action').actionBtn().data('actionBtn'),
                $selectable = $('.dataTable');

            $selectable.asSelectable($.po('selectable', $(this).data()));

            $(document).on('click', '.add_user', function (e) { // 新增用户
                var $userInfo = $('#userInfoForm');
                self.thisRow = null;
                    e.stopPropagation();
                    self.getAuth();
                    $userInfo.find("input[name='id']").val("");
            });


            /*隐藏用户信息编辑弹出层*/
            $(document).on('hide.bs.modal', '#userInfoForm', function () {
                var $userAccount = $('#userAccountInfo');
                $userAccount.formValidation('resetForm', true);
            });


            $(document).on('asSelectable::change', '.dataTable', function (e, api, checked) {
                if (checked) {
                    actionBtn.show();
                } else {
                    actionBtn.hide();
                }
            });

            $userAccont.find("input:checkbox").change(function () { // 禁止所选用户
                var $item = $(this);

                if ($item.is(":checked")) {
                    $item.val('FORBIDDEN');
                } else {
                    $item.val('NORMAL');
                }
            });
        },

        handleListItem: function () {//角色操作
            var self = this;

            $(document).on('click', '[data-tag="list-delete"]', function (e) {
                var $item = $(this).parents("div.list-group-item"),
                    dataUser = $item.attr("data-user"),
                    dataId = $item.attr("data-id");

                alertify.theme('bootstrap')
                    .confirm("您确定要删除该角色吗？", function () {
                        $.ajax({
                            url: '../role/delete?roleId=' + dataId,
                            type: 'POST',
                            dataType: 'JSON',
                            success: function (data) {
                                if (data.success) {
                                    $item.remove();
                                    self.allUsers -= dataUser;
                                    $("[data-allUsers]").attr("data-allUsers", self.allUsers).text(self.allUsers);
                                    self.currentRole($item.next('.list-group-item'));
                                    toastr.success("角色删除成功！");
                                } else {
                                    toastr.error(data.msg);
                                }
                            },
                            error: function () {
                                toastr.error('服务器异常，请稍后再试！');
                            }
                        });
                    });

                e.stopPropagation();
            });

            $(document).on('click', '.page-aside-inner .page-aside-section:not(.hidden-xs) .list-group-item', function () {
                self.currentRole($(this));
            });
        },

        handleTable: function () { // 表格渲染
            var self = this;

            self.table = $('.dataTable').DataTable($.po('dataTable', {
                dom: '<"row"<"col-xs-6"<"hidden-xs"B>><"col-xs-6"f>><"row"<"col-xs-12"tr>><"row"<"col-sm-5"i><"col-sm-7"p>>',
                processing: true,
                autoWidth: false, //禁用自动调整列宽
                ajax: 'getRoleUser',
                rowId: 'name',
                buttons: {
                    buttons: []
                },
                columns: [
                    { "data": "name" },
                    { "data": "mobile" },
                    { "data": "role_name" },
                    { "data": "status_alias" },
                    { "data": "create_time" },
                    {
                        "render": function (data,type,row) {
                            var edit = '';
                            if(edit_role){
                                edit += '<button type="button" class="btn btn-sm btn-icon btn-pure btn-default" data-toggle="edit"><i class="icon wb-edit" aria-hidden="true"></i>&nbsp;编辑</button>';
                            }
                            if(reset_role){
                                edit += '<button type="button" class="btn btn-sm btn-icon btn-pure btn-default" data-toggle="reply"><i class="icon wb-reply" aria-hidden="true"></i>&nbsp;重置密码</button>';
                            }
                            if(frezy_role && row.status==1){
                                edit += '<button type="button" class="btn btn-sm btn-icon btn-pure btn-default" data-toggle="freeze"><i class="icon fa-unlock" aria-hidden="true"></i>&nbsp;冻结</button>';
                            }
                            if(unfrezy_role && row.status==2){
                                edit += '<button type="button" class="btn btn-sm btn-icon btn-pure btn-default" data-toggle="unfreeze"><i class="icon fa-unlock-alt" aria-hidden="true"></i>&nbsp;解冻</button>';
                            }
                            return edit;
                        }
                    }
                ],
            }));
        },

        handleEdit: function () {
            var self = this, timer;

            $(document).on('click', '.page-users button[data-toggle=edit]', function () { //编辑该用户
                var $userInfo = $('#userInfoForm'),$tr;

                self.$item = $(this).closest('tr');
                $tr = self.$item.prev();

                if(self.$item.hasClass('child') && $tr.hasClass('parent')){
                    self.$item = $tr;
                }

                self.thisRow = self.table.row(self.$item).data();
                self.getAuth();
            });

            $(document).on('click', '.page-users button[data-toggle=reply]', function () {
                var  $tr;
                self.$item = $(this).closest('tr');
                $tr = self.$item.prev();

                if (self.$item.hasClass('child') && $tr.hasClass('parent')) {
                    self.$item = $tr;
                }
                self.thisRow = self.table.row(self.$item).data();
                var ID = self.thisRow.id;
                alertify.theme('bootstrap')
                    .confirm("确定重置密码吗？", function () {
                        $.ajax({
                            url: '../user/resetdftpwd?userId=' + ID,
                            type: 'POST',
                            dataType: 'JSON',
                            success: function (data) {
                                if (data.success) {
                                    toastr.success("操作成功");
                                    setTimeout(function(){
                                        location.reload();
                                    },1000)
                                } else {
                                    toastr.error(data.msg);
                                }
                            },
                            error: function () {
                                toastr.error('服务器异常，请稍后再试！');
                            }
                        });
                    });
            });


            $(document).on('click', '.page-users button[data-toggle=freeze]', function () { //冻结
                var $tr;

                self.$item = $(this).closest('tr');
                $tr = self.$item.prev();

                if (self.$item.hasClass('child') && $tr.hasClass('parent')) {
                    self.$item = $tr;
                }

                self.thisRow = self.table.row(self.$item).data();
                var ID = self.thisRow.id;
                alertify.theme('bootstrap')
                    .confirm("确定冻结该用户吗？", function () {
                        $.ajax({
                            url: '../user/frzy?userId=' + ID,
                            type: 'POST',
                            dataType: 'JSON',
                            success: function (data) {
                                if (data.success) {
                                    toastr.success("操作成功");
                                    setTimeout(function(){
                                        location.reload();
                                    },1000)
                                } else {
                                    toastr.error(data.msg);
                                }
                            },
                            error: function () {
                                toastr.error('服务器异常，请稍后再试！');
                            }
                        });
                    });
            });


            $(document).on('click', '.page-users button[data-toggle=unfreeze]', function () { //解冻
                var $tr;

                self.$item = $(this).closest('tr');
                $tr = self.$item.prev();

                if (self.$item.hasClass('child') && $tr.hasClass('parent')) {
                    self.$item = $tr;
                }

                self.thisRow = self.table.row(self.$item).data();
                var ID = self.thisRow.id;
                alertify.theme('bootstrap')
                    .confirm("确定解冻该用户吗？", function () {
                        $.ajax({
                            url: '../user/unfrzy?userId=' + ID,
                            type: 'POST',
                            dataType: 'JSON',
                            success: function (data) {
                                if (data.success) {
                                    toastr.success("操作成功");
                                    setTimeout(function(){
                                        location.reload();
                                    },1000)
                                } else {
                                    toastr.error(data.msg);
                                }
                            },
                            error: function () {
                                toastr.error('服务器异常，请稍后再试！');
                            }
                        });
                    });
            });


            $(document).on('click', '.btn-edit, #addRoleToggle', function (e) { // 编辑角色信息
                var $item = $(this),
                    $roleInfo = $('#roleInfo'),
                    ID = $item.parents('div.list-group-item').attr('data-id');

                $('#roleForm').modal('show');

                if (ID !== undefined) {
                    $roleInfo.find('input[name="role_name"]').val($item.parent().prev('span.list-text').text());
                }

                $roleInfo.find('input[name="roleId"]').val(ID);
                $('[data-plugin="treeview"]').data('jstree', false).empty().jstree({
                    "checkbox": {
                        "keep_selected_style": false
                    },
                    "plugins": ["checkbox", "search"],
                    "core": {
                        'data': {
                            "url": "../role/menuList?roleId=" + (ID === undefined ? -1 : ID),
                            "dataType": "JSON"
                        }
                    }
                });
                e.stopPropagation();

            });

            $(document).on('keyup', 'input[name="jstree_search"]', function () { // 搜索树节点
                var $item = $(this);
                if (timer) {
                    clearTimeout(timer);
                }

                timer = setTimeout(function () {
                    var v = $item.val();
                    $('[data-plugin="treeview"]').jstree(true).search(v);
                }, 250);
            });

            $(document).on('click', '.btn-unfold', function () { // 展开所有树节点
                $('[data-plugin="treeview"]').jstree().open_all();
            });

            $(document).on('click', '.btn-fold', function () { // 折叠所有树节点
                $('[data-plugin="treeview"]').jstree().close_all();
            });

            $(document).on('click', ".btn-treeview", function () { // 保存菜单树ID
                var $treeview = $('[data-plugin="treeview"]'),
                    data = [],
                    checkedData = $treeview.jstree("get_checked");

                var treeData = function ($el) {
                    var $items = $el.children('ul').children('li'), i = 0;

                    for (; i < $items.length; i++) {
                        if ($items.eq(i).attr("aria-selected") === "true" || $items.eq(i).children('a').find('i.jstree-undetermined').size() > 0) {
                            data.push($items.eq(i).prop('id'));
                        }
                        if ($items.eq(i).children("ul").size() > 0) {
                            treeData($items.eq(i));
                        }
                    }
                };

                var treeArry = function (checkedData) {
                    var item = checkedData.shift(),
                        temp = [];

                    for (var n in data) {
                        if (item !== data[n]) {
                            temp.push(item);
                        }
                    }
                    if (temp.length === data.length) {
                        data.push(item);
                    }
                    if (checkedData.length > 0) {
                        treeArry(checkedData);
                    }
                };

                treeData($treeview);
                treeArry(checkedData);
                $('#roleInfo').find('input[name="menu_ids"]').val(data);
            });

            $('#roleForm').on('hide.bs.modal', function () { // 添加角色模态窗
                $('#roleInfo').formValidation('resetForm', true);
            });
        },

        getAuth: function () {
            var html, self = this;
            $.ajax({
                url: self.thisRow === null?'initData':'initData?userId=' + self.thisRow.id,
                dataType: 'JSON',
                success: function (data) {
                    if (data.success) {
                        html = template('userAuth', data);
                        $userAccont.find('.modal-body').html(html);
                        $('#userInfoForm').modal('show');
                    } else {
                        toastr.error('出错了，请重试！');
                    }
                },
                error: function () {
                    toastr.error('服务器异常，请稍后再试！');
                }
            });
        },

        currentRole: function ($item) {
            var $parents = $('.page-aside-inner'),
                ID = $item.attr('data-id'),
                url = ID === undefined ? 'getRoleUser' : 'getRoleUser?roleId=' + ID;
            if (!$item.is('.active')) {
                $parents.find('.list-group-item').removeClass('active');
                $item.addClass('active');
                this.table.ajax.url(url).load();
            }
        },

        roleInfoCallback: function (validator, data) {
            var storeData = {
                role: {}
            }, html;
            storeData.role.name = validator.getFieldElements('role_name').val();
            storeData.role.id = data.data;
            html = template('roleTpl', storeData);
            $('#roleForm').one('hidden.bs.modal', function () {
                var $roleContent = $('.role-contents');
                if (data.type == 'edit') {//编辑
                    $roleContent.children('div[data-id='+storeData.role.id+']').find('.list-text').html(storeData.role.name);
                } else {//创建
                    $roleContent.append(html);
                }
            }).modal('hide');
        },

        run: function (next) {
            var self = this;
            this.currentUser = $('#admui-signOut').data('user');
            this.allUsers = $("[data-allUsers]").attr("data-allUsers");

            this.handleTable();
            this.handleAction();
            this.handleListItem();
            this.handleEdit();

            $userAccont.formValidation($.po('formValidation', {
                fields: {
                    name: {
                        validators: {
                            notEmpty: {
                                message: '用户名不能为空'
                            }
                        }
                    },
                    mobile: {
                        validators: {
                            notEmpty: {
                                message: '联系方式不能为空'
                            }
                        }
                    },
                    roleId: {
                        validators: {
                            notEmpty: {
                                message: '角色不能为空'
                            }
                        }
                    },
                    status: {
                        validators: {
                            notEmpty: {
                                message: '状态不能为空'
                            }
                        }
                    },
                }
            }))
                .on('success.form.fv', function (e) {
                    e.preventDefault();

                    var $item = $(this),
                        validator = $(e.target).data('formValidation'),
                        id = $('#user_id').val();
                    $.ajax({
                        url: id?'edit':'create',
                        type: 'POST',
                        data: $item.serialize(),
                        dataType: 'JSON',
                        success: function (data) {
                            console.log(data);
                            if (data.code) {
                                $('#userInfoForm').modal('hide');
                                toastr.success('操作成功');
                                setTimeout(function () {
                                    location.href = "index";
                                },2000)
                            } else {
                                toastr.error(data.msg);
                                setTimeout(function () {
                                    $userAccont.find('button').removeClass('disabled').attr('disabled',false);
                                },2000)
                            }
                        },
                        error: function () {
                            toastr.error('服务器异常，请稍后再试！');
                        }
                    });
                });

            $("#roleInfo").formValidation($.po('formValidation', {
                fields: {
                    role_name: {
                        validators: {
                            notEmpty: {
                                message: '请填写角色名称'
                            }
                        }
                    }
                }
            }))
                .on('success.form.fv', function (e) {
                    e.preventDefault();
                    var validator = $(e.target).data('formValidation'),
                        id = $("#roleInfo input[name='roleId']").val();
                    $.ajax({
                        url: id?'../role/edit':'../role/create',
                        type: 'POST',
                        data: $("#roleInfo").serialize(),
                        dataType: 'JSON',
                        success: function (data) {
                            if (data.success) {
                                self.roleInfoCallback(validator, data);
                                toastr.success(data.msg);
                            } else {
                                toastr.error(data.msg);
                                setTimeout(function () {
                                    $('#roleInfo').find('button').removeClass('disabled').attr('disabled',false);
                                },2000)
                            }
                        },
                        error: function () {
                            toastr.error('服务器异常，请稍后再试！');
                        }
                    });
                });

            next();
        }
    });
     App.run();

})(document, window, jQuery);

