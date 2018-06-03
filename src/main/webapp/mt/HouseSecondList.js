///*
//二手房列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.HouseSecondList', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle,
        currentUrl, CycleStyle = '';
    //01 添加样式以及搜索条件
    var bindAddClassWithSearchTerm = function () {
        var addClassStr = $('#addClassStr').val();
        addClassStr = addClassStr.replace(/_/g, ",T");
        addClassStr = addClassStr.split(',');
        for (var i = 0; i < addClassStr.length; i++) {
            var v = addClassStr[i] + "";
            $('#' + addClassStr[i] + '').addClass("bg");
        }
        //单击行政区域添加样式
        //$('a[name="region"]').click(function () {
        //    $('a[name="region"]').removeClass('bg');
        //    $(this).addClass('bg');
        //    var regionid = $(this).attr('id');
        //    if (regionid == "R0") {
        //        $('.filter_options .panesa').hide();
        //        $('.filter_options ol').removeAttr("style");
        //        return;
        //    }
        //    $('#idCycle').html('');
        //    var lastPRegionAbbr = '';
        //    var curPRegionAbbr = '';
        //    var curRegionUrl = '';//记录商圈中“不限”的Url
        //    var appendHtml = ''
        //        + '<div class="panex clearfix" style="display:block;">'
        //        + '<div class="no_restrictions" id="regionDefault">'
        //        + '<a id="' + regionid + '" href="#" onclick="ga(\'send\', \'event\', \'quanbuershoufangshaixuan\', \'quyu\', \'' + $("#disregion .bg").html() + '_不限\');" >不限</a>'
        //        + '</div>'
        //        + '<div class="close_ch">'
        //        + '<a name="panesaClose" href="javascript:;">×</a>'
        //        + '</div>';
        //    for (var i = 0; i < RegionJson.length; i++) {
        //        if (regionid == RegionJson[i].RegionNO) {
        //            lastPRegionAbbr = "";
        //            curRegionUrl = RegionJson[i].RegionURL;
        //            for (var j = 0; j < RegionJson[i].Cycle.length; j++) {
        //                curPRegionAbbr = RegionJson[i].Cycle[j].PCycleAbbr.substring(0, 1);
        //                if (lastPRegionAbbr != curPRegionAbbr) {
        //                    if (j != 0) {
        //                        appendHtml += '</dd>';
        //                        appendHtml += '</dl>';
        //                    }
        //                    appendHtml += '<dl class="clearfix quyu_shangquan">';
        //                    appendHtml += '<span>' + curPRegionAbbr + '</span>';
        //                }
        //                appendHtml += '<a onclick="ga(\'send\', \'event\', \'quanbuershoufangshaixuan\', \'quyu\', \'' + $("#disregion .bg").html() + '_' + RegionJson[i].Cycle[j].CycleName + '\');"  id="' + RegionJson[i].Cycle[j].CycleNO + '" href="' + RegionJson[i].Cycle[j].RegionURL + '">' + RegionJson[i].Cycle[j].CycleName + '</a>';

        //                if (j == RegionJson[i].Cycle.length - 1) {
        //                    appendHtml += '</dl>';
        //                }
        //                lastPRegionAbbr = curPRegionAbbr;
        //            }
        //        }
        //    }
        //    appendHtml += '</div>';
        //    $('#idCycle').append(appendHtml);
        //    if (CycleStyle != '') {
        //        $('#' + CycleStyle + '').addClass("bg");
        //    }
        //    //弹出框 商圈 “不限” 赋值URL
        //    $('.no_restrictions a[id="' + regionid + '"]').attr("href", curRegionUrl);
        //    $('.filter_options ol').css({ "position": "relative", "padding": "1", "width": "1126px" });
        //    $('.filter_options .panesa').show();
        //});
        //单击 x 按钮 绑定事件
        $(document).delegate('a[name="panesaClose"]', "click", function () {
            $('.filter_options .panesa').hide();
            $('.filter_options ol').removeAttr("style");
        });
    };

    //初始化事件
    _this.Init = function () {
        var reg = /[\u4e00-\u9fa5]/ig,
            search = $('#currentUrl').val().split("?")[1].split("&"),
            strs = "";
        for (var i = 0, j; i < search.length; i++) {
            j = search[i].split("=");
            strs += j[0] + "=" + encodeURIComponent(j[1]) + "&";
        }
        currentUrl = $('#currentUrl').val().split("?")[0] + "?" + strs.substr(0, strs.length - 1);  //$('#currentUrl').val();
        //alert(currentUrl);
        //楼层下拉样式        
        $(".filter_sel_L li[idx=" + $('#addClassStr').val().split(',')[14] + "]").addClass("active").siblings().removeClass("active");
        //02 搜索事件
        bindSearchEvent(currentUrl);//bindSearchEvent(currentUrl);
        //03 加载上次搜索条件       
        LoadLastSearchTerm(currentUrl);
        //04 保存搜房条件
        bindSaveHouseTermEvent(currentUrl);

        /* 模拟下拉框 */
        $('.selectBox').mouseenter(function () {
            $(this).children().filter('.selectCont').fadeIn(100);
        });
        $('.selectBox').mouseleave(function () {
            $(this).children().filter('.selectCont').fadeOut(80);
        });
        /*点击下拉选择地区*/
        $('.selectCont ul li').live('click', function () {

            var _index = $(this).index(), // 获取索引
				_text = $(this).text();
            $(this).addClass('active').siblings('li').removeClass('active');
            $(this).parentsUntil('.selectCont').fadeOut(80); // 隐藏下拉框
            $(this).parentsUntil('.selectCont').children().filter('.show').text(_text);
        });
        /* 价格及面积区间输入后出现确定按钮 */
        $('.input_section').find('input').keyup(function () {
            if ($(this).attr('value') != '' || $(this).siblings().filter('input').attr('value') != '') {
                $(this).siblings().filter('button').css('display', 'inline-block');
            } else {
                $(this).siblings().filter('button').css('display', 'none');
            }

        })

        //根据选中区域加载对应商圈
        var Rnum;
        var addClassStr = $('#addClassStr').val().split(',');
        for (var i = 0; i < addClassStr.length; i++) {
            if (addClassStr[i].substring(0, 1) == 'R') {
                Rnum = addClassStr[i];
            }
        }
        if (Rnum != "" && Rnum != undefined) {
            RegionCycleShow();
        }

        function RegionCycleShow() {
            var regionid = Rnum;
            if (regionid == "R0") {
                $('.filter_options .panesa').hide();
                $('.filter_options ol').removeAttr("style");
                return;
            }
            $('#idCycle').html('');
            var lastPRegionAbbr = '';
            var curPRegionAbbr = '';
            var curRegionUrl = '';//记录商圈中“不限”的Url
            var appendHtml = ''
                + '<div class="panex clearfix" style="display:block;">'
                + '<div class="no_restrictions" id="regionDefault">'
                + '<a id="' + regionid + '" href="#" onclick="ga(\'send\', \'event\', \'quanbuershoufangshaixuan\', \'quyu\', \'' + $("#disregion .bg").html() + '_不限\');" >不限</a>'
                + '</div>'
                + '<div class="close_ch">'
                + '<a name="panesaClose" href="javascript:;">×</a></div>'
                + '<div class="clearfix quyu_shangquan">';
            for (var i = 0; i < RegionJson.length; i++) {
                if (regionid == RegionJson[i].RegionNO) {
                    lastPRegionAbbr = "";
                    curRegionUrl = RegionJson[i].RegionURL;
                    for (var j = 0; j < RegionJson[i].Cycle.length; j++) {
                        curPRegionAbbr = RegionJson[i].Cycle[j].PCycleAbbr.substring(0, 1);
                        if (lastPRegionAbbr != curPRegionAbbr) {
                            appendHtml += '<span>' + curPRegionAbbr + '</span>';
                        }
                        appendHtml += '<a onclick="ga(\'send\', \'event\', \'quanbuershoufangshaixuan\', \'quyu\', \'' + $("#disregion .bg").html() + '_' + RegionJson[i].Cycle[j].CycleName + '\');"  id="' + RegionJson[i].Cycle[j].CycleNO + '" href="' + RegionJson[i].Cycle[j].RegionURL + '">' + RegionJson[i].Cycle[j].CycleName + '</a>';
                        lastPRegionAbbr = curPRegionAbbr;
                    }
                }
            }
            appendHtml += '</div>';
            appendHtml += '</div>';
            $('#idCycle').append(appendHtml);
            if (CycleStyle != '') {
                $('#' + CycleStyle + '').addClass("bg");
            }
            //弹出框 商圈 “不限” 赋值URL
            $('.no_restrictions a[id="' + regionid + '"]').attr("href", curRegionUrl);
            //$('.filter_options ol').css({ "position": "relative", "z-index": "99", "padding": "0 0 0 0", "border": "solid #f86000", "border-width": "1px 0 1px 1px", "border-right": "1px solid #fff", "width": "600px" });
            $('.filter_options .panesa clearfix').show();
            $('.filter_options .panesa').show();
        }
        //01 添加样式以及搜索条件
        bindAddClassWithSearchTerm();

    };
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

function keypress(e) {
    var keyCode = e.keyCode;
    if ((keyCode >= 48 && keyCode <= 57)) {
        e.returnValue = true;
    } else {
        e.returnValue = false;
    }
}


$('#Sbtn').live('click', function () {
    var sb = "0";
    if ($('#SB').val() != "") {
        sb = $('#SB').val();
    } 
    var se = 99999;
    if ($('#SE').val() != "") {
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
    //if (event.keyCode == 8) {
    //    this.value = this.value.substr(0, this.value.length - 1);
    //}
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
    var ab = "0";
    if ($('#AB').val() != "") {
        ab = $('#AB').val();
    }
    var ae = 99999;
    if ($('#AE').val() != "") {
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
