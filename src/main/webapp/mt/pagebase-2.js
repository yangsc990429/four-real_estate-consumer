/* $(function () {
    $.support.placeholder = false;
    if ("placeholder" in document.createElement("input")) $.support.placeholder = true;

    if (!$.support.placeholder) {
        var active = document.activeElement;
        $(":text, textarea").live("focus", function () {
            if ($(this).attr("placeholder") != "" && $(this).val() == $(this).attr("placeholder")) {
                $(this).val("").removeClass("placeholder");
            }
        }).live("blur", function () {
            if ($(this).attr("placeholder") != "" && ($(this).val() == "" || $(this).val() == $(this).attr("placeholder"))) {
                $(this).val($(this).attr("placeholder")).addClass("placeholder");
            }
        });
        $(":text, textarea").blur();
        $(active).focus();
        $("form").submit(function () {
            $(this).find(".placeholder").each(function () { $(this).val(""); });
        });
    }

});*/
String.format = function (str) {
    var args = arguments, re = new RegExp("%([1-" + args.length + "])", "g");
    for (var i = 1; i < args.length; i++) {
        var replaceStr = "/(/{" + (i - 1) + "/})/g";
        for (var c = 0; c < 100; c++) {
            if (str.indexOf("{" + (i - 1) + "}") > -1) {
                str = str.replace("{" + (i - 1) + "}", args[i]);
            }
            else {
                break;
            }
        }
    }
    return str;
    //return String(str).replace(
    //re,
    //function ($1, $2) {
    //    return args[$2];
    //}
    //);
};
String.prototype.format = function (args) {
    var result = this;
    if (arguments.length > 0) {
        if (arguments.length == 1 && typeof (args) == "object") {
            for (var key in args) {
                if (args[key] != undefined) {
                    var reg = new RegExp("({" + key + "})", "g");
                    result = result.replace(reg, args[key]);
                }
            }
        }
        else {
            for (var i = 0; i < arguments.length; i++) {
                if (arguments[i] != undefined) {
                    var reg = new RegExp("({[" + i + "]})", "g");
                    result = result.replace(reg, arguments[i]);
                }
            }
        }
    }
    return result;
}
String.prototype.trim = function () { return Trim(this); };
function LTrim(str) {
    var i;
    for (i = 0; i < str.length; i++) {
        if (str.charAt(i) != " " && str.charAt(i) != " ") break;
    }
    str = str.substring(i, str.length);
    return str;
}
function RTrim(str) {
    var i;
    for (i = str.length - 1; i >= 0; i--) {
        if (str.charAt(i) != " " && str.charAt(i) != " ") break;
    }
    str = str.substring(0, i + 1);
    return str;
}
function Trim(str) {
    return LTrim(RTrim(str));
}

/*
* IE8 无法使用JS的indexOf
*/
if (!Array.prototype.indexOf) {
    Array.prototype.indexOf = function (elt /*, from*/) {
        var len = this.length >>> 0;

        var from = Number(arguments[1]) || 0;
        from = (from < 0)
             ? Math.ceil(from)
             : Math.floor(from);
        if (from < 0)
            from += len;

        for (; from < len; from++) {
            if (from in this &&
                this[from] === elt)
                return from;
        }
        return -1;
    };
}
//URL从webconfig访问
PageUrl = function () {
    var url;
    $.ajax({
        type: "GET",
        url: '/Service/GetPageUrl.ashx?type=PageUrl',
        async: false,
        dataType: "html",
        success: function (result) {
            url = result;
        }
    });
    return url;
}
function GetCommunityServiceURL()
{
}

/**
 * 页面基类
 * User: Zhongke
 * Date: 13-5-30 
 * Desc: 控制整个站点加载效果，以及访问权限问题
 */
GLOBAL.Namespace('PageBase', function () {
    var _this = this;

    /*
     * 通用数据请求处理地址
     */
    this.ServiceURL = '/Service/Main.ashx';

    /*
     * 智能提示请求地址
     */
    this.ershoufangServiceURL = '/Service/SvrLucene.ashx'//'http://172.16.3.64/Service/SvrAutoComplete.ashx';
    this.communityServiceURL = PageUrl();
    //this.communityServiceURL = 'http://172.16.5.39/Service/CommunityBasis.ashx'//'http://172.16.3.64/Service/SvrAutoComplete.ashx';
    /*
     * @子类扩展方法
     */
    _this.Add = function (args) {
        if (!args) return;
        for (var o in args) {
            _this[o] = args[o];
        }
        return _this;
    };


    /*
     * @页面加载响应
     */
    _this.PageLoading = function () {
        var _docHeight = $(document.body).height(),
            _winHeight = $(window).height();
         //页面有滚动条时，蒙版不能够完全蒙住 zyk 20171219
        var _scrollHeight = $(document.body).get(0).scrollHeight;
        var brow = $.browser;
        if (brow.mozilla) {
            _scrollHeight = $(document.documentElement).get(0).scrollHeight;
        }
        var _loading = '<div id="pageLoading" style=" position: absolute; width:100%; height:' + _scrollHeight + 'px; background-color: white; z-index: 999; top:0px; left:0px; opacity:0.8;filter:alpha(opacity=80); "><img style="position:absolute; width:60px; height:60px; top:50%; margin-top:-30px; left:50%; margin-left:-30px; " src="data:image/gif;base64,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" alt="loading..." /></div>';
        $(document.body).append(_loading);
        $(window).scrollTop(_docHeight / 2 - _winHeight / 2);
        return _this;
    };

    /*
     * @移除loading
     */
    _this.RemoveLoading = function () {
        $('#pageLoading').remove();
        return _this;
    };


    //// 公用方法 
    /*
     * 字符串 to 时间
     */
    _this.StrToDate = function (strDate) {
        var date = eval('new Date(' + strDate.replace(/\d+(?=-[^-]+$)/,
         function (a) { return parseInt(a, 10) - 1; }).match(/\d+/g) + ')');
        return date;
    };
    /*
     * 字符串 to 标准字符串yyyy-MM-dd HH:mm:ss
     */
    _this.StrToStandardDateStr = function (strDate) {
        strDate = strDate.replace(/-/g, '/');//  2015-1-1 => 2015/1/1 
        var dt = eval('new Date(' + strDate.replace(/\d+(?=-[^-]+$)/,
         function (a) { return parseInt(a, 10) - 1; }).match(/\d+/g) + ')');
        //转化为标准字符串
        var year = dt.getFullYear();       //年
        var month = dt.getMonth();     //月
        var day = dt.getDate();            //日

        var hh = dt.getHours();            //时
        var mm = dt.getMinutes();          //分
        var ss = dt.getSeconds();          //分

        var str = year + "-";

        if (month < 10)
            str += "0";
        str += month + "-";

        if (day < 10)
            str += "0";
        str += day + " ";

        if (hh < 10)
            str += "0";
        str += hh + ":";

        if (mm < 10)
            str += "0";
        str += mm + ":";

        if (ss < 10)
            str += "0";
        str += ss;

        return str;
    };

    /*
     * 字符串 to 标准字符串yyyy-MM-dd
     */
    _this.StrToShortDateStr = function (strDate) {
        strDate = strDate.replace(/-/g, '/');//  2015-1-1 => 2015/1/1 
        var dt = eval('new Date(' + strDate.replace(/\d+(?=-[^-]+$)/,
         function (a) { return parseInt(a, 10) - 1; }).match(/\d+/g) + ')');
        //转化为标准字符串
        var year = dt.getFullYear();       //年
        var month = dt.getMonth();     //月
        var day = dt.getDate();            //日

        var hh = dt.getHours();            //时
        var mm = dt.getMinutes();          //分
        var ss = dt.getSeconds();          //分

        var str = year + "-";

        if (month < 10)
            str += "0";
        str += month + "-";

        if (day < 10)
            str += "0";
        str += day;

        return str;
    };
    /*
     * 时间 to 标准字符串yyyy-MM-dd HH:mm:ss
     */
    _this.DateToStr = function (date) {
        if (date == undefined || date == null || date == "")
            return "";
        var dt = new Date(date);

        var year = dt.getFullYear();       //年
        var month = dt.getMonth() + 1;     //月
        var day = dt.getDate();            //日

        var hh = dt.getHours();            //时
        var mm = dt.getMinutes();          //分
        var ss = dt.getSeconds();          //分

        var str = year + "-";

        if (month < 10)
            str += "0";
        str += month + "-";

        if (day < 10)
            str += "0";
        str += day + " ";

        if (hh < 10)
            str += "0";
        str += hh + ":";

        if (mm < 10)
            str += "0";
        str += mm + ":";

        if (ss < 10)
            str += "0";
        str += ss;

        return str;
    };

    /*
     * 获取GUID
     */
    _this.GetGUID = function () {
        var guid = '';
        for (var i = 1; i <= 32; i++) {
            var n = Math.floor(Math.random() * 16.0).toString(16).toUpperCase();
            guid += n;
            if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
                guid += "-";
        }

        return guid;
    }
});
//String.format 方法 String.format("name:{0},age:{1}","张三",18);
Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1, //month 
        "d+": this.getDate(), //day 
        "h+": this.getHours(), //hour 
        "m+": this.getMinutes(), //minute 
        "s+": this.getSeconds(), //second 
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter 
        "S": this.getMilliseconds() //millisecond 
    }

    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }

    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
}
//数组remove函数
Array.prototype.remove = function (dx) {
    if (isNaN(dx) || dx > this.length) { return false; }
    for (var i = 0, n = 0; i < this.length; i++) {
        if (this[i] != this[dx]) {
            this[n++] = this[i]
        }
    }
    this.length -= 1
}
//退出
LoginOut = function () {
    delCustomerSession(getCookie("MemberID"));
    delCookie("MemberID");
    delCookie("MemberCookie");
    delCookie("memberNickName");

    if (WB2!=undefined&& WB2.checkLogin()) {
        WB2.logout(function () {
            window.location = GetPageUrl({ url: "/VIEW/Index/Index.html" });
        });
    }
    else if (QC!=undefined&& QC.Login.check()) {
        QC.Login.signOut();
        window.location = GetPageUrl({ url: "/VIEW/Index/Index.html" });
    }
    else {
        window.location = GetPageUrl({ url: "/VIEW/Index/Index.html" });
    }
}
function delCustomerSession(memberId) {
    var dataParame = {};
    dataParame.memberId = memberId;
    _paramejson = JSON.stringify(dataParame);
    $.ajax({
        url: "/Service/CustomerSelfServiceFun.ashx?funid=delCustomerSession",
        type: "POST",
        data: {
            parame: _paramejson
        },
        dataType: "json",
        success: function (data) {
        }
    });
}
//封装页面URL路径
//GetPageUrl({ url: "/VIEW/Broker/BrokerDetail.html", param1: "i=" + this.Broker.BrokerID })
GetPageUrl = function (data) {
    var url;
    $.ajax({
        type: "GET",
        url: '/Service/GetPageUrl.ashx',
        data: data,
        async: false,
        dataType: "html",
        success: function (result) {
            url = result;
        }
    });
    return url;
}
//写cookies
function setCookie(name, value) {
    var Days = 365;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
//读取cookies
function getCookie(sName) {
    var aCookie = document.cookie.split("; ");
    for (var i = 0; i < aCookie.length; i++) {
        var aCrumb = aCookie[i].split("=");
        if (sName == aCrumb[0])
            return unescape(aCrumb[1]);
    }
    return null;
}
//删除cookies
function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() + -1 * 24 * 60 * 60 * 1000);
    var cval = getCookie(name);
    if (cval != null) {
        if (name != "MemberID") {
            document.cookie = name + "=;expires=" + exp.toGMTString() + "; path=/;";
        }
        else {
            $.ajax({
                type: "GET",
                url: '/Service/GetConfigValue.ashx',
                data:"",
                async: false,
                dataType: "html",
                success: function (result) {
                    if (result) {
                        document.cookie = name + "=;expires=" + exp.toGMTString() + ";domain=" + result + "; path=/;";
                    } else {
                        document.cookie = name + "=;expires=" + exp.toGMTString() + "; path=/;";
                    }
                }
            });
        }

    }
}
//清楚所有cookie
function clareCookie() {
    var strCookie = document.cookie;
    var arrCookie = strCookie.split("; "); // 将多cookie切割为多个名/值对
    for (var i = 0; i < arrCookie.length; i++) { // 遍历cookie数组，处理每个cookie对
        var arr = arrCookie[i].split("=");
        if (arr.length > 0)
            delCookie(arr[0]);
    }
}
//写入cookie
WriteCookies = function (name, value, time) {
    setCookie(name, value, time);
    //setCookie("IsAutoLogin", $loginName.val() + "|" + data.password);
}

/*
* 头顶banner用户信息显示
*/
var bindMemberInfo = function () {
    var MemberID = GLOBAL.Cookie('MemberID');
    var pathname = window.location.pathname;
    var _html = '';
    //$('#islogined').hide();
    if (MemberID && MemberID != '') {
        $.ajax({
            type: "GET",
            url: '/Service/Main.ashx',
            async: true,
            cache: false,
            data: "postType=get"
                + "&handler=" + 'MemberService_perm'
                + "&data=" + '{fucid:"GetMemberInfo",data:"' + MemberID + '"}'
                + "&debug=1",
            success: function (result)
            {
                if (pathname.toLowerCase().indexOf("/index.html") != -1 || pathname.toLowerCase().indexOf("/view/index/index2.html") != -1) {
                    $("#isIndexlogined").hide();
                    result = eval("(" + result + ")");
                    if (result.status == 200) {
                        $('#isIndexlogined').html(decodeURIComponent(result.LOGININDEXHTML));
                    }
                    $("#isIndexlogined").show();
                } else {
                    $("#islogined").hide();
                    result = eval("(" + result + ")");
                    if (result.status == 200) {
                        $('#islogined').html(decodeURIComponent(result.LOGINHTML));
                    }
                    $("#islogined").show();
                }
                
            },
            error: function (err, e, a) {
                //args.error(err, e, a)
            }
        })
    }    

};
bindMemberInfo();
MTLogin = function () {
    debugger;
    // 刷新图形码
    LoadCode();
    $(".revealbga").css("display", "block");
    $("#txtLoginMobile").focus();
}
MTLoginHide = function () {
    $(".revealbga").css("display", "none");
    GLOBAL.PageBase.RemoveLoading();// zyk 20180115 如果点击第三方登录后未登录，点击关闭登录时需要把蒙版也关闭
}
bindAuthLogin = function () {
    var qqCheckLogin;
    var wbCheckLogin;
    $("#btnQQLogin").click(function () {
        GLOBAL.PageBase.PageLoading(); //添加蒙版，防止在登录过程中点击其他链接，登录信息不能展示出来 zyk 20171219
        var oOpts = {
            appId: "101321688",
            redirectURI: "http://bj.maitian.cn/VIEW/Member/AuthLoginQQ.html"
        };
        //调用QC.Login方法，指定btnId参数将按钮绑定在容器节点中
        QC.Login({}, function (reqData, opts) {//登录成功            
            //根据返回数据，更换按钮显示状态方法
            QC.Login.getMe(function (openId, accessToken) {
                var _parame;
                var _data = [];
                _data.push(openId);//新浪id  uid    
                _data.push(accessToken);//新浪id  uid    
                _data.push(reqData.nickname);//用户名  oResult.screen_name
                _data.push(reqData.figureurl_qq_2);//头像    oResult.profile_image_url 
                _data.push("QQ");//头像    oResult.profile_image_url 
                _parame = '{fucid:"AuthLoginWeiBo",data:"' + _data.join(',') + '"}';
                //开始提交
                _PostData(_parame);
            });
        }, function (opts) {//注销成功
            LoginOut();
        });
        if (!QC.Login.check()) {
            QC.Login.showPopup(oOpts);
            if (qqCheckLogin == null) {
                qqCheckLogin = window.setInterval(function () {
                    var isAL = getCookie("MemberID");
                    if (isAL != null) {
                        clearInterval(qqCheckLogin);
                        LoginSuccess();
                    }
                }, 1000);
            }
        }
    });


    ////新浪微博
    //WB2._config.debug = true;
    $("#btnSinaLogin").click(function () {
        GLOBAL.PageBase.PageLoading(); //添加蒙版，防止在登录过程中点击其他链接，登录信息不能展示出来 zyk 20171219
        //authLoad();
        var loginState = WB2.checkLogin();
        if (!loginState) {
            window.open("https://api.weibo.com/2/oauth2/authorize?client_id=226422212&response_type=token&display=js&transport=html5&referer=http://bj.maitian.cn/userlogin", "_blank");
            if (wbCheckLogin == null) {
                wbCheckLogin = window.setInterval(function () {
                    _WBAuthLogin();
                }, 1000);
            }
        }
        else {
            _WBAuthLogin();
        }
        //WB2.login(function () {
        //    //callback function
        //    _WBAuthLogin();
        //});
    });
    //弹出授权弹层：
    function authLoad() {
        App.AuthDialog.show({
            client_id: '226422212',    //必选，appkey
            redirect_uri: 'http://bj.maitian.cn/Service/AuthLoginWeiBo.ashx',     //必选，授权后的回调地址，例如：http://apps.weibo.com/giftabc
            height: 10
        });
    }
    _WBAuthLogin = function () {
        //登录
        var loginState = WB2.checkLogin();
        if (loginState) {
            WB2.anyWhere(function (W) {
                //获取用户ID
                W.parseCMD('/account/get_uid.json', function (oResult, bStatus) {
                    if (bStatus) {
                        var uid = oResult.uid;
                        //获取用户信息
                        W.parseCMD('/users/show.json', function (oResult, bStatus) {
                            if (bStatus) {
                                var _parame;
                                var _data = [];
                                _data.push(uid);//新浪id  uid    
                                _data.push("");//新浪id  uid    
                                _data.push(oResult.screen_name);//用户名  oResult.screen_name
                                _data.push(oResult.profile_image_url);//头像    oResult.profile_image_url 
                                _data.push("WeiBo");//头像    oResult.profile_image_url 
                                _parame = '{fucid:"AuthLoginWeiBo",data:"' + _data.join(',') + '"}';
                                //开始提交
                                _PostData(_parame);


                            } else {
                                alert('网络错误');
                            }
                        }, {
                            uid: uid
                        }, {
                            method: 'get',
                            cache_time: 30
                        });
                    } else {
                        alert('网络错误');
                    }
                }, {
                    source: '275191449'
                }, {
                    method: 'get',
                    cache_time: 30
                });
            });
        }
    }
    _PostData = function (_parame) {
        $.ajax({
            type: "GET",
            url: '/Service/Main.ashx',
            async: true,
            cache: false,
            data: "postType=get"
                + "&handler=" + 'MemberService_perm'
                + "&data=" + _parame
                + "&debug=1",
            success: function (result) {
                var data = eval("(" + result + ")");
                if (data.status == '200') {
                    LoginSuccess();
                } else {
                    alert('温馨提示：授权登录失败！');
                }
            },
            error: function (err, e, a) {
                //args.error(err, e, a)
            }
        })
    }
}
//绑定控件单击事件
bindControlClick = function () {
    var hotKey = function (event) {
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if (e.keyCode == "13") {
            if ($("#ulMobileVerify").css("display") == "block") {
              return  CheckMoblieVerifyLogin();
            }
            if ($("#ulMobilePass").css("display") == "block") {
                return CheckPostLogin();
            }
        }
    }
    $("#txtPassword").keypress(hotKey);
    $("#txtLoginName").keypress(hotKey);
    $("#txtLoginMobile").keypress(hotKey);
    $("#txtSMS").keypress(hotKey);
    $("#txtVerify").keypress(hotKey);

    //短信验证码发送
    $(".send_msg").click(function () {
        var sendTime = 0;
        var $phone = $("#txtLoginMobile");
        if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
            alert("温馨提示：请输入正确手机号！");
            $phone.focus();
            return false;
        }
        $('#li1').css('display', 'block');
        $('#li2').css('display', 'none');
        var code = $("#txtVerify");
        code.val('');
        code.focus();
        LoadCode();
    });
    $("#txtVerify").keyup(function () {
        var $phone = $("#txtLoginMobile");
        var code = $("#txtVerify");
        
        if (code.val().length == $(this).attr('maxlength')) {

            var cookieCodePic = getCookie('CheckCode');

            if (cookieCodePic == null) {
                alert("温馨提示：图形验证码失效，请重新输入！");
                code.val('');
                code.focus();
                LoadCode();
                cookieCodePic = getCookie('CheckCode');
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
                //$phone.focus();
                code.val('');
                LoadCode();
                return false;
            }
            var data = [];
            data.push($phone.val());
            data.push(7);
            $('#li1').css('display', 'none');
            
            var _parame = '{fucid:"SendAuthCode",data:"' + data.join(',') + '"}';
            var btnTime = $("#btnSendCode");
            //开始提交
            GLOBAL.DataStore.DataHandle.postData({
                url: '/Service/Main.ashx',
                handler: 'MemberService_perm',
                parame: _parame,
                success: function (data) {
                    if (data.code == '1') {
                        sendTime = 60;
                        time(btnTime, sendTime);
                        $('#li2').css('display', 'block');
                        var sms_code = $("#txtSMS");
                        sms_code.focus();
                    } else {
                        $('#li1').css('display', 'block');
                        alert('温馨提示：验证码发送失败！');
                        
                        $('#li2').css('display', 'none');
                        var code = $("#txtVerify");
                        code.val('');
                        code.focus();
                        LoadCode();
                    }
                }
            });
        }
    });

    $("#txtVerify").blur(function () {
        var $phone = $("#txtLoginMobile");
        if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
            //alert("温馨提示：请输入正确手机号！");
            $phone.focus();
            return false;
        }
        var code = $("#txtVerify");
       
        if (code.val() == "") {
            return false;
        }

    });
    //时间倒数
    function time(o, sendTime) {
        if (sendTime == 0) {
            o.attr("disabled", false);
            o.css("background-color", "#0080ff");
            o.html("重新获取");
            sendTime = 60;
        } else {
            o.attr("disabled", "disabled");
            o.css("background-color", "#b4b2b3");
            o.html("(" + sendTime + "秒后重发)");
            sendTime--;
            setTimeout(function () {
                time(o, sendTime);
            },
                1000);
        }
    }

    //登录
    $("#btnLogin").click(function () {

        if ($("#ulMobileVerify").css("display") == "block") {
            CheckMoblieVerifyLogin();
        }
        if ($("#ulMobilePass").css("display") == "block") {
            CheckPostLogin();
        }
    });

    //短信验证码登录
    var CheckMoblieVerifyLogin = function () {
        var $phone = $("#txtLoginMobile");
        if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
            alert("温馨提示：请输入正确手机号！");
            $phone.focus();
            return false;
        }

        var code = $("#txtVerify");

        if (code.val() == "") {
            alert("温馨提示：请输入图形验证码！");
            code.focus();
            return false;
        }
        if (code.val().length<4) {
            alert("温馨提示：请输入完整图形验证码！");
            code.focus();
            return false;
        }
        var code = $("#txtSMS");
        if (code.val() == "") {
            alert("温馨提示：请输入验证码！");
            code.focus();
            return false;
        }
        if (code.val().length < 4) {
            alert("温馨提示：请输入正确的验证码！");
            code.val('');
            code.focus();
            return;
        }

        var parame;
        var data = [];
        data.push($phone.val());
        data.push(code.val());
        parame = '{fucid:"FastLogin",data:"' + data.join(',') + '"}';
        var model;
        //开始提交
        GLOBAL.DataStore.DataHandle.postData({
            url: '/Service/Main.ashx',
            handler: 'MemberService_perm',
            parame: parame,
            debug: true,
            success: function (result) {
                if (result.status == '200') {
                    LoginSuccess();
                }
                else if (result.status == '503') {
                    alert(result.StatusDes);
                }
                else if (result.status == '500') {
                    alert(result.StatusDes);
                    code.val('');
                    code.focus();
                    
                }
                model = result.status;
            }
        });
        if (model !== "200") {
            return false;
        }


    };
    // 手机号密码登录
    var CheckPostLogin = function() {
        var $loginName = $("#txtLoginName");
        var $password = $("#txtPassword");
        var $isAutoLogin = $("#isAutoLogin");
        var pwd = $.trim($password.val());
        var lname = $.trim($loginName.val());
        if (lname == "") {
            alert("温馨提示：请输入手机号！");
            $loginName.focus();
            return false;
        }
        //if (!/^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/i.test($loginName.val())) {
        if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test(lname)) {
            alert("温馨提示：请输入正确手机号！");
            $loginName.focus();
            return false;
        }
        if (pwd == "") {
            alert("温馨提示：请输入密码！");
            $password.focus();
            return false;
        }
        var _parame;
        var _data = [];
        var isAutoLogin = "false";
        if ($isAutoLogin.attr("checked") != null) {
            isAutoLogin = "true";
        }
        _data.push(lname);
        _data.push(pwd);
        _data.push(isAutoLogin);
        _parame = '{fucid:"Login",data:"' + _data.join(',') + '"}';
        var model;
        //开始提交
        $.ajax({
            type: "GET",
            url: '/Service/Main.ashx',
            async: true,
            cache: false,
            data: "postType=get"
                + "&handler=" + 'MemberService_perm'
                + "&data=" + _parame
                + "&debug=1",
            success: function(result) {
                var data = eval("(" + result + ")");
                model = data.StatusCode;
                if (data.StatusCode == '200') {

                    if (isAutoLogin == "true") {
                        setCookie("IsAutoLogin", lname + "|" + data.password);
                    } else {
                        delCookie("IsAutoLogin");
                    }
                    if (pwd.length < 6) {
                        var isUpgrade = confirm("温馨提示：主人，为了保护您账户的安全，请务必将密码升级为至少6位“数字+字母”的形式哦~");
                        if (isUpgrade) {
                            location.href = "/userchgpwd";
                        } else {
                            delCustomerSession(getCookie("MemberID"));
                            delCookie("MemberID");
                            location.href = GetPageUrl({ url: "/VIEW/Index/Index.html" });
                        }
                        return;
                    }
                    LoginSuccess();
                } else if (data.StatusDes != '' && data.StatusDes) {
                    alert('温馨提示：' + data.StatusDes + '！')
                } else {
                    alert('温馨提示：密码或用户名错误！');
                }
            },
            error: function(err, e, a) {
                //args.error(err, e, a)
            }
        });
        if (model !== "200") {
            return false;
        }
    }
}
LoginSuccess = function () {
    if (location.href.indexOf("login") >= 0 || location.href.indexOf("regist") >= 0) {
        var url = document.referrer;
        if (url && url.indexOf("user") < 0) {
            location.href = url;
            return;
        }
        window.location = GetPageUrl({ url: "/VIEW/Index/Index.html" });
    }
    else {
        location.reload();
        //location = "/";
        
    }
    
}
$(function () {
    bindAuthLogin();
    bindControlClick();
    bindMemberInfo();
});
function LoadCode() {
    var time = new Date().getTime();
    $("#imgCode").attr("src", $("#imgCode").attr("src") + '?' + time);
};