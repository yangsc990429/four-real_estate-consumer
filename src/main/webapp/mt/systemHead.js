/*
 * 系统框架头部信息
 * CodeBy:Zhongke
 * Date:2014/06/09
 */
(function () {
    /*
     * 绑定退出系统事件
     */
    var bindExitEvent = function () {
        var _$SystemExit = $('#SystemExit');
        _$SystemExit.click(function () {
            dialog.confirm({
                msg: "您确定要退出系统吗？",
                width: 300,
                height: 100,
                fn: function () {
                    GLOBAL.DataStore.DataHandle.postData({
                        url: '/service/main.ashx',
                        handler: 'login_perm',
                        parame: '{fucid:"Logout",data:""}',
                        debug: true,
                        success: function (data) {
                            if (data.status == '200') {
                                var _domain = location.host.indexOf('wanda.cn') > -1 ? 'wanda.cn' : 'wanda-dev.cn';
                                GLOBAL.Cookie('AuthUser_AuthMAC', '', { path: '/', domain: _domain, expires: -1 });
                                GLOBAL.Cookie('AuthUser_AuthNum', '', { path: '/', domain: _domain, expires: -1 });
                                GLOBAL.Cookie('AuthUser_AuthToken', '', { path: '/', domain: _domain, expires: -1 });
                                GLOBAL.Cookie('AuthUser_LoginId', '', { path: '/', domain: _domain, expires: -1 });
                                location.href = '/VIEW/Login/Login.html';
                            } else {
                                dialog.alert('温馨提示：退出超时，请联系管理员！');
                            }
                        }
                    });
                }
            });
        });
    };
    bindExitEvent();
    /*
     * 绑定退出系统事件
     */
    var bindSelectAccountListEvent = function () {
        $('#selectAccountList').live('change', function () {
            GLOBAL.Cookie('PublicID', $(this).val(), { expires: 7, path: '/' });
            GLOBAL.PageBase.PublicID = $(this).val();
            GLOBAL.PageBase.ReLoadPage();
        });
    };
    bindSelectAccountListEvent();
})();