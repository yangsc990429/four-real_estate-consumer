///*
//地铁房列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.HouseSecondSubwayList', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle,
        currentUrl, Platform;
    //01 添加样式以及搜索条件
    var bindAddClassWithSearchTerm = function () {

        var addClassStr = $('#addClassStr').val();
        addClassStr = addClassStr.replace(/_/g, ",T");
        addClassStr = addClassStr.split(',');
        for (var i = 0; i < addClassStr.length; i++) {
            var v = addClassStr[i] + "";
            $('#' + addClassStr[i] + '').addClass("bg");
        }
        if (addClassStr[3] == "B0" && addClassStr[4] == "D0") {
            $("#B0").addClass("bg");
        }
        else {
            $("#B0").removeClass("bg");
        }
        $(".filter_sel_L li[idx=" + $('#addClassStr').val().split(',')[14] + "]").addClass("active").siblings().removeClass("active");
        //单击 x 按钮 绑定事件
        $(document).delegate('a[name="panesaClose"]', "click", function () {
            $('.map_range .panes').hide();
            $('.map_range ul').removeAttr("style");
        });
    };

    //初始化事件
    _this.Init = function () {
        currentUrl = $('#currentUrl').val();
        //02 搜索事件
        bindSearchEvent(currentUrl);
        //03 加载上次搜索条件
        LoadLastSearchTerm(currentUrl);
        //04 保存搜房条件
        bindSaveHouseTermEvent(currentUrl);

        var Rnum;
        var addClassStr = $('#addClassStr').val().split(',');
        for (var i = 0; i < addClassStr.length; i++) {
            if (addClassStr[i].substring(0, 1) == 'B') {
                Rnum = addClassStr[i];
            }
        }
        if (Rnum != "" && Rnum != undefined) {
            SubwayStationShow(Rnum);
        }
        /* 价格及面积区间输入后出现确定按钮 */
        $('.input_section').find('input').keyup(function () {
            if ($(this).attr('value') != '' || $(this).siblings().filter('input').attr('value') != '') {
                $(this).siblings().filter('button').css('display', 'inline-block');
            } else {
                $(this).siblings().filter('button').css('display', 'none');
            }

        })

        //01 添加样式以及搜索条件
        bindAddClassWithSearchTerm();
    };

    function SubwayStationShow(Rnum) {
        var subwayid = Rnum;
        if (subwayid == "B0") {
            $('.filter_options .panesa').hide();
            $('.filter_options ol').removeAttr("style");
            return;
        }
        $(this).addClass('bg');
        $('#idPlatform').html('');
        var curSubwayUrl = '';//记录商圈中“不限”的Url
        var appendHtml = ''
            + '<div class="panex clearfix" style="display: block;">'
            + '<div class="no_restrictions">'
            + '<a id="' + subwayid + '" href="#" onclick="ga(\'send\', \'event\',\'shaixuanditiefang\', \'ditiexianlu\', \'不限\');" >不限</a>'
            + '</div>'
            + '<div class="close_ch">'
            + '<a name="panesaClose" href="javascript:;">×</a>'
            + '</div>';
        for (var i = 0; i < SubwayJson.length; i++) {
            if (subwayid == SubwayJson[i].SubwayNO) {
                curSubwayUrl = SubwayJson[i].SubwayURL;
                for (var j = 0; j < SubwayJson[i].Station.length; j++) {
                    appendHtml += "<div class='clearfix quyu_shangquan'>";
                    appendHtml += '<a onclick="ga(\'send\', \'event\',\'shaixuanditiefang\', \'ditiexianlu\', \'' + SubwayJson[i].SubwayName + '_' + SubwayJson[i].Station[j].StationName + '\');" id="' + SubwayJson[i].Station[j].StationNO + '" href="' + SubwayJson[i].Station[j].StationURL + '"><i class="mai-ico"></i>' + SubwayJson[i].Station[j].StationName + '</a>';
                    appendHtml += "</div>";
                }
            }
        }
        appendHtml += '</div>';
        $('#idPlatform').append(appendHtml);
        //弹出框 商圈 “不限” 赋值URL
        $('.no_restrictions a[id="' + subwayid + '"]').attr("href", curSubwayUrl);
        if (Platform != '') {
            $('.no_restrictions a[id="' + subwayid + '"]').removeClass();
            $('#' + Platform + '').css({ "color": "#0074e4" });
            $('#' + Platform + ' i').css({ "background-position": "-480px -344px" });
        }

        $('.map_range ul').css({ "padding": "0", });
        $('.map_range .panes').show();
    }
});


// ----------------------------------------------------------------------
// <summary>
// 限制只能输入数字
// </summary>
// ----------------------------------------------------------------------
$.fn.onlyNum = function () {
    $(this).keypress(function (event) {
        var eventObj = event || e;
        var keyCode = eventObj.keyCode || eventObj.which;
        if ((keyCode >= 48 && keyCode <= 57))
            return true;
        else
            return false;
    }).focus(function () {
        //禁用输入法
        this.style.imeMode = 'disabled';
    }).bind("paste", function () {
        //获取剪切板的内容
        var clipboard = window.clipboardData.getData("Text");
        if (/^\d+$/.test(clipboard))
            return true;
        else
            return false;
    });
};

//只能输入数字
$(".checkNum").onlyNum();


function keypress(e) {
    var keyCode = e.keyCode;
    if ((keyCode >= 48 && keyCode <= 57)) {
        e.returnValue = true;
    } else {
        e.returnValue = false;
    }
}


$('#Sbtn').live('click', function () {
    var sb = "";
    if ($('#SB').val() != "" && $('#SB').val() != "0") {
        sb = $('#SB').val();
    } else {
        sb = 1;
    }
    var se = 999999;
    if ($('#SE').val() != "" && $('#SE').val() != "0") {
        se = $('#SE').val();
    }

    var url = location.pathname;
    var ser = location.search;
    var sa = 0;
    if (sb >= 0 && se >= 0) {
        if (parseInt(se) < parseInt(sb)) {
            sa = sb;
            sb = se;
            se = sa;
        }
    }

    var sb_r, se_r, cl_r, currentUrl;

    sb_r = new RegExp("(SB=([0-9]+))|(SB=)", "ig");
    se_r = new RegExp("(SE=([0-9]+))|(SE=)", "ig");
    b_r = new RegExp("(S=([0-9]+))|(S=)", "ig");
    var pg_r = new RegExp("(PG=([0-9]+))|(PG=)", "ig");

    currentUrl = $('#currentUrl').val();
    currentUrl = currentUrl.replace(sb_r, "SB=" + sb).replace(se_r, "SE=" + se).replace(b_r, "S=").replace(pg_r, "PG=1");

    window.location.href = GetPageUrl({ url: currentUrl });
});

// 只能输入数字
$(".checkNum").keyup(function (event) {
    if (event.keyCode == 8) {
        this.value = this.value.substr(0, this.value.length - 1);
    }
    if (this.value.length > 5) {
        this.value = this.value.substr(0, 5);
        this.value = this.value.replace(/[^\d]/g, '');
    }
    if (this.value.length > 1 && this.value.substr(0, 1) == 0) {
        this.value = this.value.substr(1, this.value.length);
        this.value = this.value.replace(/[^\d]/g, '');
    }
    var reg = /[^\x00-\xff]/g;
    var reg1 = /^[A-Za-z]+$/;
    if (reg.test(this.value) == true || reg1.test(this.value)) {
        this.value = "";
    }
});
// 禁止复制
$(".checkNum").live("afterpaste", function () {
    this.value = this.value.replace(/[^\d]/g, '');
});


$('#Abtn').live('click', function () {
    var ab = "";
    if ($('#AB').val() != "" && $('#AB').val() != "0") {
        ab = $('#AB').val();
    } else {
        ab = "0";
    }
    var ae = 999999;
    if ($('#AE').val() != "" && $('#AE').val() != "0") {
        ae = $('#AE').val();
    }
    var url = location.pathname;
    var aer = location.search;
    var as = 0;

    if (ab >= 0 && ae >= 0) {
        if (parseInt(ae) < parseInt(ab)) {
            as = ab;
            ab = ae;
            ae = as;
        }
    }

    var ab_r, ae_r, al_r, currentUrl;;

    ab_r = new RegExp("(AB=([0-9]+))|(AB=)", "ig");
    ae_r = new RegExp("(AE=([0-9]+))|(AE=)", "ig");
    var a_r = new RegExp("(A=([0-9]+))|(A=)", "ig");
    var pg_r = new RegExp("(PG=([0-9]+))|(PG=)", "ig");

    currentUrl = $('#currentUrl').val();
    currentUrl = currentUrl.replace(ab_r, "AB=" + ab).replace(ae_r, "AE=" + ae).replace(a_r, "A=").replace(pg_r, "PG=1");;

    window.location.href = GetPageUrl({ url: currentUrl });
});
