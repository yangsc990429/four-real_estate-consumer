///*
//租房列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.MemberRegist', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle;
    var sendTime = 0, wait = 60;
    var brokerId = "";
    var brokerName = "";
    var brokerNo = "";
    var IsCheckBrokerNO = true;

    //初始化事件
    _this.Init = function () {
        currentUrl = document.location.pathname + document.location.search;
        _bindControlClick();
    };
     
    //发送验证码定时器
    function time(o) {
        if (wait == 0) {
            o.removeAttr("disabled");
            o.html("发送验证码");
            wait = 60;
        } else { 
            o.attr("disabled", true);
            o.html(wait + "秒后重试");
            wait--;
            setTimeout(function () {
                time(o)
            },
            1000)
        }
    }

    //绑定控件单击事件
    var _bindControlClick = function () {
        //发送验证码
        $(".codeSureBtn").click(function () {
            var $phone = $("#txtPhone");
            var code = $(".inputCode");
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
             
            if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
                alert("温馨提示：请输入正确手机号！");
                $phone.focus();
                return;
            }
            var _parame = '{fucid:"SendAuthCode",data:"' + $phone.val() + ',1,' + $(".inputCode").val() + '"}';
            
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
                        $(".inputCodeBox").removeClass("error");
                    } 
                }
            });
        });

        //注册
        $("#btnAdd").click(function () {
            var $phone = $("#txtPhone");
            var $code = $("#txtCode");
            var $password = $("#txtPassword");
            var $againPassword = $("#txtAgainPassword");
            var $isOk = $("#isOk");
            if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
                alert("温馨提示：请输入正确手机号！");
                $phone.focus();
                return;
            }
            if ($code.val() == "") {
                alert("温馨提示：请输入验证码！");
                $code.focus();
                return;
            }
            if ($code.val().length < 4) {
                alert("温馨提示：请输入正确的验证码！");
                $code.focus();
                return;
            }
            if ($password.val() == "") {
                alert("温馨提示：请输入密码！");
                $password.focus();
                return;
            }
            if ($password.val() != $againPassword.val()) {
                alert("温馨提示：确认密码输入错误！");
                $againPassword.val("");
                $againPassword.focus();
                return;
            }
            if (!/^[A-Za-z0-9]{6,16}$/.test($password.val()) || /^([A-Za-z]{6,16}|[0-9]{6,16})$/.test($password.val())) {
                alert("温馨提示：您输入的密码不符合6-16位数字、字母组合的要求，请重新设置密码！");
                $againPassword.val("");
                $againPassword.focus();
                return;
            }
            if (!IsCheckBrokerNO) {
                alert("温馨提示：请检查推荐人系统号是否正确！");
                return;
            }
            if ($isOk.attr("checked") == null) {
                alert("温馨提示：请同意《麦田用户使用协议》！");
                return;
            }
            var _parame;
            var _data = [];
            _data.push($phone.val());
            _data.push($password.val());
            _data.push($code.val());
            _data.push(brokerId);
            _data.push(brokerNo);
            _data.push(brokerName);
            _parame = '{fucid:"Regist",data:"' + _data.join(',') + '"}';
            //开始提交
            GLOBAL.DataStore.DataHandle.postData({
                url: _pagebase.ServiceURL,
                handler: 'MemberService_perm',
                parame: _parame,
                debug: true,
                success: function (data) {
                    if (data.StatusCode == '200') {
                        window.location = GetPageUrl({ url: "/VIEW/Index/Index.html" });
                    }
                    else {
                        alert(data.StatusDes);
                    }
                }
            });
        });
        //确认房产顾问是否存在
        $("#txtBrokerNO").change(function () {
            if ($("#txtBrokerNO").val() != "") {
                IsCheckBrokerNO = false;
            }
        });
        $("#txtBrokerNO").blur(function () {
            if ($("#txtBrokerNO").val() != "" && IsCheckBrokerNO == false) {
                $("#btnCheckBrokerNO").click();
            }
            else {
                IsCheckBrokerNO = true;
            }
        });
        $("#btnCheckBrokerNO").click(function () {
            var $brokerNO = $("#txtBrokerNO");
            if ($brokerNO.val() == "") {
                alert("提示：请输入推荐人系统号！");
                $brokerNO.focus();
                return;
            }
            GLOBAL.DataStore.DataHandle.getData({
                url: _pagebase.ServiceURL,
                handler: 'data',
                parame: '{fucid:"SelBrokerByNO_select",data:"' + $brokerNO.val() + '"}',
                success: function (data) {
                    if (data.length > 0) {
                        brokerId = data[0].BROKERID;
                        brokerNo = $brokerNO.val();
                        brokerName = data[0].BROKERNAME;
                        IsCheckBrokerNO = true;
                        alert("提示：当前推荐人系统号正确！");
                    } else {
                        alert("提示：当前推荐人系统号错误！");
                        $brokerNO.focus();
                    }
                }
            });
        });
    }
});
function LoadCode() {
    var time = new Date().getTime();
    $("#imgCode").attr("src", $("#imgCode").attr("src") + '?' + time);
}