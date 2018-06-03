///*
//租房列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.MemberForget', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle;
    var sendTime = 0;

    //初始化事件
    _this.Init = function () {
        currentUrl = document.location.pathname + document.location.search;
        _bindControlClick();
    };
    //绑定控件单击事件
    var _bindControlClick = function () {
        $("#btnNext1").click(function () {
            var $loginName = $("#txtLoginName");
            var $code = $("#txtCode");
            if ($loginName.val() == "" || $loginName.val() == "请输入您的注册手机号") {
                alert("温馨提示：请输入账户名！");
                //$loginName.focus();
                return;
            }
            if ($code.val() == "" || $code.val() == "请输入验证码") {
                alert("温馨提示：请输入验证码！");
                //$code.focus();
                return;
            }
            var code = getCookie("CheckCode");
            if ($code.val().toUpperCase() != code.toUpperCase()) {
                alert("温馨提示：验证码错误！");
                LoadCode();
                $code.focus();
                $code.select();
                return;
            }
            GLOBAL.DataStore.DataHandle.getData({
                url: _pagebase.ServiceURL,
                handler: 'MemberService_perm',
                parame: '{fucid:"GetMemberByMobile",data:"' + $loginName.val() + '"}',
                success: function (data) {
                    if (data.status == "500") {
                        alert("该手机号未在麦田在线注册！");
                        LoadCode();
                        return;
                    }
                    var _model = data.MemberInfo;
                    $("#lblMobile").html(_model.Mobile);
                    $("[name='divPanel']").css("display", "none");
                    $("#panel2").css("display", "block");
                }
            });
        });
        $(".codeSureBtn").click(function () {
            var code = $(".inputCode");
            if (code.val() == "" || code.val() == "输入上图所示验证码") {
                alert("温馨提示：请输入验证码！");
                return;
            }
            //if (sendTime > 0) {
            //    alert("温馨提示：已发送验证码，请 " + sendTime + " 秒后再试！");
            //    return;
            //}

            var cookieCodePic = getCookie('CheckCode');
            if (!cookieCodePic) {
                alert("温馨提示：图形验证码失效，请重新输入！");
                code.val('');
                code.focus();
                LoadCode();
                return false;
            }

            if (code.val().toLowerCase() != cookieCodePic.toLowerCase()) {
                alert("温馨提示：图形验证码输入有误，请重新输入！");
                code.val('');
                code.focus();
                LoadCode();
                return false;
            }
             
            var $phone = $("#lblMobile");
            var _parame = '{fucid:"SendAuthCode",data:"' + $phone.html() + ',2,' + $(".inputCode").val() + '"}';
            //开始提交
            GLOBAL.DataStore.DataHandle.postData({
                url: _pagebase.ServiceURL,
                handler: 'MemberService_perm',
                parame: _parame,
                debug: true,
                success: function (data) {
                    if (data) {
                        alert(data.msg);
                        $(".inputCode").val("");
                        $('#codeInput').css('display', 'none');
                        $('#codeBox').css('display', 'none'); 
                    } 
                }
            });

        });
        $("#btnNext2").click(function () {
            var $mobileCode = $("#txtMobileCode");
            if ($mobileCode.val() == "" || $mobileCode.val() == "请输入验证码") {
                alert("温馨提示：请输入验证码！");
                $mobileCode.focus();
                return;
            }
            var $phone = $("#lblMobile");
            var _parame = '{fucid:"CheckAuthCode",data:"' + $phone.html() + ',2,' + $mobileCode.val() + '"}';
            //开始提交
            GLOBAL.DataStore.DataHandle.postData({
                url: _pagebase.ServiceURL,
                handler: 'MemberService_perm',
                parame: _parame,
                debug: true,
                success: function (data) {
                    if (data && data.status == '200') {
                        $("[name='divPanel']").css("display", "none");
                        $("#panel3").css("display", "block");
                    }
                    else {
                        alert('温馨提示：验证码错误！');
                    }
                }
            });
        });
        $("#btnNext3").click(function () {
            var $phone = $("#lblMobile");
            var $newPassword = $("#txtNewPassword");
            var $againPassword = $("#txtAgainPassword");
            if ($newPassword.val() == "") {
                alert('温馨提示：请输入新密码！');
                $newPassword.focus();
                return;
            }
            if ($newPassword.val() != $againPassword.val()) {
                alert('温馨提示：确认密码输入错误！');
                $againPassword.val("");
                $againPassword.focus();
                return;
            }
            if (!/^[A-Za-z0-9]{6,16}$/.test($newPassword.val()) || /^([A-Za-z]{6,16}|[0-9]{6,16})$/.test($newPassword.val())) {
                alert("温馨提示：您输入的密码不符合6-16位数字、字母组合的要求，请重新设置密码！");
                $againPassword.val("");
                $againPassword.focus();
                return;
            }
            var _parame = '{fucid:"MemberChangePwdByMobile",data:"' + $phone.html() + ',' + $newPassword.val() + '"}';
            //开始提交
            GLOBAL.DataStore.DataHandle.postData({
                url: _pagebase.ServiceURL,
                handler: 'MemberService_perm',
                parame: _parame,
                debug: true,
                success: function (data) {
                    if (data.status == '200') {
                        $("[name='divPanel']").css("display", "none");
                        $("#panel4").css("display", "block");
                    }
                    else {
                        alert('温馨提示：操作失败！');
                    }
                }
            });
        });
        $("#btnNext4").click(function () {
            window.location = GetPageUrl({ url: "/VIEW/Member/MemberLogin.html" });
        });
    }
});
function LoadCode() {
    var time = new Date().getTime();
    $(".imgCode").attr("src", $("#imgCode").attr("src") + '?' + time);
}
//读取cookies
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");

    if (arr = document.cookie.match(reg))

        return (arr[2]);
    else
        return null;
}