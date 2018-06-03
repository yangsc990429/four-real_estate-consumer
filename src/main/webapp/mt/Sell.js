///*
//我要买房
//CodeBy:LuQH
//Date:2015.11.24
//*/ 
GLOBAL.Namespace('View.MemberSell', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle;

    //初始化事件
    _this.Init = function () {
        var sendTime = 0;
        $('#btnSendCode_sell').click(function () {
            var $phone = $("#Phone");
            if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
                alert("温馨提示：请输入正确手机号！");
                $phone.focus();
                return;
            }
            if (sendTime > 0) {
                alert("温馨提示：已发送验证码，请 " + sendTime + " 秒后再试！");
                return;
            }
            var _parame = "{fucid:'GetCode',data:'" + $phone.val() + ",3'}";

            //开始提交
            GLOBAL.DataStore.DataHandle.postData({
                url: _pagebase.ServiceURL,
                handler: 'MemberBuy_perm',
                parame: _parame,
                debug: true,
                success: function (data) {
                    if (data.status == '200') {
                        alert('温馨提示：验证码发送成功！');
                        sendTime = 60;
                        var inter = setInterval(function () {
                            if (sendTime <= 0) {
                                clearInterval(inter);
                            }
                            sendTime -= 1;
                        }, 1000);

                    } else if (data.status == "400") {

                    }
                    else {
                        alert('温馨提示：验证码发送失败！');
                    }
                }
            });
        });

        $("#btnSubmit").click(function () {
           
            var garden = $("#garden").val();
            if (garden == "如远洋山水，荣丰2008" || garden.trim() == "") {
                alert("请输入小区名称");
                return;
            }
            var $house = $("#house");
            if ($house.val().length > 3 || $house.val().trim() == "") {
                alert("温馨提示：请输入正确的居室！");
                $house.focus();
                return;
            }
             //面积
            var area = $("#area").val();
            //价格
            var price = $("#price").val();
            var regexp = new RegExp("^[0-9]{1,6}([.][0-9]{1,4})?$");    //整数控制在8位，小数控制在4位
            if (area.trim() == "" || area.trim() == "您的房子的面积(㎡)") {
                alert('温馨提示：请输入面积！');
                $("#area").focus();
                return;
            }
            if (!regexp.test(area)) {
                alert('温馨提示：面积超出范围，请重新录入');
                $("#area").focus();
                return;
            }
            if (price.trim() == "" || price.trim() == "请输入您的期望售价(万元)") {
                alert('温馨提示：请输入售价！');
                $("#price").focus();
                return;
            }
            if (!regexp.test(price)) {
                alert('温馨提示：售价超出范围，请重新录入');
                $("#price").focus();
                return;
            }
            
            var $phone = $("#Phone");
            if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val()) && $phone.val().trim() != "") {
                alert("温馨提示：请输入正确手机号！");
                $phone.focus();
                return;
            }

            var cookidMemberID = GLOBAL.Cookie('MemberID');
            if (cookidMemberID == null || cookidMemberID == "") {
                var phone = $('#Phone').val();
                var re = "0";
                GLOBAL.DataStore.DataHandle.getData({
                    url: _pagebase.ServiceURL,
                    handler: 'MemberService_perm',
                    parame: '{fucid:"GetMemberByMobile",data:"' + phone + '"}',
                    success: function (data) {
                        if (data) {
                            re = data.status;
                            if (re == "200") {
                                RegistDataSave();
                            } else {
                                if ($('#liYZM').css('display') == "none") {
                                    alert("您目前不是注册用户，请输入手机短信验证码，完成委托！");
                                    $('#liYZM').show();
                                }
                                else {
                                    NoRegistSubMit();
                                }
                            }
                        }
                    }
                });
            }
            else {
                RegistDataSave();
            }
        });

        $('#Phone').keyup(function () {
            var cookidMemberID = GLOBAL.Cookie('MemberID');
            if (cookidMemberID==null) {
                var len = $('#Phone').val().length;
                if (len == 11) {
                    var $phone = $("#Phone");
                    if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
                        alert("温馨提示：请输入正确手机号！");
                        $phone.focus();
                        return;
                    }
                    var phone = $('#Phone').val();
                    var re = "0";
                    GLOBAL.DataStore.DataHandle.getData({
                        url: _pagebase.ServiceURL,
                        handler: 'MemberService_perm',
                        parame: '{fucid:"GetMemberByMobile",data:"' + phone + '"}',
                        debug: true,
                        success: function (data) {
                            if (data) {
                                re = data.status;                                
                                if (re == "200") {
                                    $('#liYZM').hide();
                                } else {
                                    if ($('#liYZM').css('display') == "none") {
                                        alert("您目前不是注册用户，请输入手机短信验证码，完成委托！");
                                        $('#liYZM').show();
                                    }
                                }
                            }
                        }
                    });

                }
            }            
        });

    };//结束

    //注册业主添加委托
    function RegistDataSave() {
        var cookidMemberID = GLOBAL.Cookie('MemberID');
        var memberId = cookidMemberID == null ? "" : cookidMemberID;
        var garden = $('#garden').val();
        var house = $('#house').val();
        var price = $('#price').val();
        var area = $('#area').val();
        var phone = $('#Phone').val();        
        var dataParame = [
               memberId, phone, garden, house, area, price
        ];
        var _parame = '{fucid:"SaveRegistMemberSell",data:"' + dataParame + '"}';
        //开始提交
        GLOBAL.DataStore.DataHandle.postData({
            url: _pagebase.ServiceURL,
            handler: 'MemberBuy_perm',
            parame: _parame,
            debug: true,
            success: function (data) {
                if (data.status == '200') {
                    alert('温馨提示：卖房委托已成功提交！');
                    $('#garden,#house,#price,#area,#Phone,#yzm').val("");
                    window.location.href = $("#GardenID").val();
                } else {
                    alert('温馨提示：数据保存失败，请联系管理员！');
                }
            }
        });
    }

    function NoRegistSubMit() {
        var yzm = $('#yzm').val();
        if (yzm == "" || yzm == "请输入短信验证码") {
            alert("请输入短信验证码");
            return;
        }
        var $phone = $("#Phone");
        if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
            alert("温馨提示：请输入正确手机号！");
            $phone.focus();
            return;
        }
        //var cookidMemberID = GLOBAL.Cookie('MemberID');
        //var memberId = cookidMemberID == null ? "" : cookidMemberID;
        var garden = $('#garden').val();
        var house = $('#house').val();
        var price = $('#price').val();
        var area = $('#area').val();
        var phone = $('#Phone').val();

        var dataParame = [
               yzm, phone, garden, house, area, price
        ];
        var _parame = '{fucid:"SaveNoRegisSell",data:"' + dataParame + '"}';
        //开始提交
        GLOBAL.DataStore.DataHandle.postData({
            url: _pagebase.ServiceURL,
            handler: 'MemberBuy_perm',
            parame: _parame,
            debug: true,
            success: function (data) {
                if (data.status == '200') {
                    alert('温馨提示：卖房委托已成功提交！');
                    //history.back();
                    $('#garden,#house,#price,#area,#Phone,#yzm').val("");
                    $('#liYZM').hide();
                    window.location.href = $("#GardenID").val();
                }
                else if (data.status == '400') {
                    alert('短信验证码输入错误，请重新输入或获取新验证码！');
                }
                else {
                    alert('温馨提示：数据保存失败，请联系管理员！');
                }
            }
        });
    }
});//结束




