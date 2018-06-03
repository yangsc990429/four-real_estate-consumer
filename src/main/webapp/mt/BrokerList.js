///*
//房产顾问列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.BrokerList', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle,
        currentUrl, liketips, CycleStyle = '';



    //01 添加样式以及搜索条件
    var bindAddClassWithSearchTerm = function () {
        var addClassStr = $('#addClassStr').val().split(',');
        for (var i = 0; i < addClassStr.length; i++) {
            $('#' + addClassStr[i] + '').addClass("bg");
        }
        //单击行政区域添加样式
        /*
        $('a[name="region"]').click(function () {
            $('a[name="region"]').removeClass('bg');
            $(this).addClass('bg');
            var regionid = $(this).attr('id');
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
                + '<a onclick="ga(\'send\', \'event\', \'ershoufangjingjiren\', \'quyu\', \'2级区域_不限\');" id="' + regionid + '" href="#" >不限</a>'
                + '</div>'
                + '<div class="close_ch">'
                + '<a name="panesaClose" href="javascript:;">×</a>'
                + '</div>';
            for (var i = 0; i < RegionJson.length; i++) {
                if (regionid == RegionJson[i].RegionNO) {
                    lastPRegionAbbr = "";
                    curRegionUrl = RegionJson[i].RegionURL;
                    for (var j = 0; j < RegionJson[i].Cycle.length; j++) {
                        curPRegionAbbr = RegionJson[i].Cycle[j].PCycleAbbr.substring(0, 1);
                        if (lastPRegionAbbr != curPRegionAbbr) {
                            if (j != 0) {
                                appendHtml += '</dd>';
                                appendHtml += '</dl>';
                            }
                            appendHtml += '<dl class="clearfix quyu_shangquan">';
                            appendHtml += '<span>' + curPRegionAbbr + '</span>';
                        }
                        appendHtml += '<a onclick="ga(\'send\', \'event\', \'ershoufangjingjiren\', \'quyu\', \'' + RegionJson[i].RegionName + '_' + RegionJson[i].Cycle[j].CycleName + '\');" id="' + RegionJson[i].Cycle[j].CycleNO + '" href="' + RegionJson[i].Cycle[j].RegionURL + '">' + RegionJson[i].Cycle[j].CycleName + '</a>';

                        if (j == RegionJson[i].Cycle.length - 1) {
                            appendHtml += '</dl>';
                        }
                        lastPRegionAbbr = curPRegionAbbr;
                    }
                }
            }
            appendHtml += '</div>';
            $('#idCycle').append(appendHtml);
            if (CycleStyle != '') {
                $('#' + CycleStyle + '').addClass("bg");
            }
            //弹出框 商圈 “不限” 赋值URL
            $('.no_restrictions a[id="' + regionid + '"]').attr("href", curRegionUrl);
            $('.filter_options ol').css({ "position": "relative",  "padding": "1", "width": "1126px" });
            $('.filter_options .panesa').show();
        });
        */
        //单击 x 按钮 绑定事件
        $(document).delegate('a[name="panesaClose"]', "click", function () {
            $('.filter_options .panesa').hide();
            $('.filter_options ol').removeAttr("style");
        });
    };
    //02 搜索事件
    var bindSearchEvent = function () {
        //搜索框内容改变事件
        $('#ico-search').bind('input propertychange', function (event) {
            var $this = $(this);
            var SearchResult = "";
            var searchContent = $('#ico-search').val().trim();
            if (searchContent.length > 0) {
                $('#SearchTips').remove();
                setTimeout(function () {
                    $.ajax({
                        type: "GET",
                        url: GLOBAL.PageBase.ershoufangServiceURL,
                        data: { OperType: "SearchBroker", curUrl: currentUrl, RS: searchContent },
                        dataType: "html",
                        success: function (data) {
                            SearchResult = decodeURIComponent(data);
                            if (SearchResult != '{"result":"0"}') {
                                $('#SearchTips').remove();
                                liketips = '<ul id="SearchTips"></ul>';
                                $liketips = $(liketips);
                                $liketips.html(SearchResult);
                                $liketips.css({ top: '37px', left: '0.5px', width: '622px', position: 'absolute', border: '1px solid #d9d9d9', background: 'white', display: 'none' });
                                $liketips.appendTo($this.parent());
                                bindSearchTipsStyle();
                                $liketips.show();
                            }
                        }
                    });
                }, 300);
            } else {
                setTimeout(function () {
                    $('#SearchTips').hide();
                }, 100);
            }
        });
        //搜索框失去焦点事件
        $('#ico-search').blur(function () {

            //因为鼠标点击时blur动作结算在click之前，setTimeout是为了解决这个问题 
            $oldthis = $(this);
            setTimeout(function () {
                $('#SearchTips').hide();
            }, 200);
        });

        $('#ico-search').keyup(function () {
            var pattern = /[\*\#\$\!\~\&\^\@\\\/\%\$\?\,\.\~\，\。\、\【\】\{\}\[\]\+\-\<\>\》\《\=\ ]/g;
            var val = $(this).val();
            if (val != "" && pattern.test(val)) {
                $(this).val(val.replace(pattern, ""));
            }
        });

        //搜索按钮单击事件
        $('#btSearch').click(function () {
            var con = $('#ico-search').val().trim();
          
            if (con) {
                con = con == "请输入房产顾问姓名" ? "" : con;
                con = encodeURIComponent(con);
                //请求查询
                ga('send', 'event', 'zhanneisousuo', 'sousuo', con);
                window.location.href = GetPageUrl({ url: currentUrl, param1: "rs=" + con });
            }
        });
        //上下键 选择事件
        $(document).keydown(function (event) {
            var upDownClickNum = $("#SearchTips .searchBackgroud ").length;
            if ($("#SearchTips").css("display") == "block") {
                //38:上  40:下
                if (event.keyCode == 38) {
                    if (upDownClickNum < 1) {
                        $("#SearchTips li:last a").css({ "background": "#f0f0f0" }).addClass("searchBackgroud").parent().css({ "background": "#f0f0f0" });;
                    } else {
                        $("#SearchTips .searchBackgroud ").removeClass("searchBackgroud").css({ "background": "#fff" }).parent().css({ "background": "" }).prev().children().addClass("searchBackgroud").css({ "background": "#f0f0f0" }).parent().css({ "background": "#f0f0f0" });
                    }
                    stopDefault(event);
                } else if (event.keyCode == 40) {
                    if (upDownClickNum < 1) {
                        $("#SearchTips li:first a").css({ "background": "#f0f0f0" }).addClass("searchBackgroud").parent().css({ "background": "#f0f0f0" });;
                    } else {
                        $("#SearchTips .searchBackgroud").removeClass("searchBackgroud").css({ "background": "#fff" }).parent().css({ "background": "" }).next().children().addClass("searchBackgroud").css({ "background": "#f0f0f0" }).parent().css({ "background": "#f0f0f0" });
                    }
                    stopDefault(event);
                }
                if (event.keyCode == 13) {

                    if (upDownClickNum == 1) {
                        window.location.href = $("#SearchTips .searchBackgroud ").attr("href");
                    }

                }
            }
            //} else if (event.keyCode == 13) {
            //    $("#btSearch").click();
            //}


            // 回车键事件  
            // var upDownClickNum = $("#SearchTips .searchBackgroud ").length;


        });
        //阻止事件执行
        function stopDefault(e) {

            if (e && e.preventDefault) {
                e.preventDefault();
            }
            else {
                event.returnValue = false;
            }
        }
    };

    //搜索条件样式
    var bindSearchTipsStyle = function () {
        $('#SearchTips li').hover(
              function () {
                  $(this).css({ "background": "#f0f0f0" });
              },
            function () {
                $(this).css({ "background": "" });
            }
        );
    };
    $('#ico-search').keypress(function (event) {
        // 回车键事件 
        
        var upDownClickNum = $("#SearchTips .searchBackgroud ").length;
        if (event.keyCode == 13) {
            if ($("#SearchTips").css("display") == "block") {
                if (upDownClickNum == 1) {
                    window.location.href = $("#SearchTips .searchBackgroud ").attr("href")
                } else {
                    $("#btSearch").click();
                }

            } else {
                $("#btSearch").click();
            }
        }

    });

   

    //初始化事件
    _this.Init = function () {
        currentUrl = $('#currentUrl').val();
        //02 搜索事件
        bindSearchEvent();

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
//电话点击量日志
var phoneLogClick = function (phonenum, Brokerid, houseno, obj, type,tjType) {
    var MemberID = GLOBAL.Cookie('MemberID');
    var logobj = [
         URLS = '/VIEW/Broker/BrokerList.html',
         TYPE = tjType,  //  点击量统计类型:1、私信;2、电话;3、短信;
         BROKERID = Brokerid,
         MEMBERID = (MemberID == undefined ? '' : MemberID),
         //ADDDATE   ='',
         DEVICETYPE = 4,//1:android;2:IOS;3:weixin;4:pc;
         DEVICENAME = '',
         PAGENAME = escape('二手房房顾列表页'),
         HOUSENO = houseno,
         AREATYPE = 'bj',//bj-北京，fz-福州，xm-厦门
         PAGETYPE = '140100',//页面类型 《900000-其他，100000-首页，110000-二手房，110100-二手房列表，110200-二手房详情，120000-租房，120100-租房列表，120200-租房详情，130000-小区，130100-小区列表，130200-小区详情，140000-房产顾问，140100-房产顾问列表，140200-房产顾问详情，150000-会员中心，150100-会员中心/我关注的房产顾问》
         ACTIONTYPE = tjType == 1 ? '150501' : '110401'//行为类型 《900000-其他,100000-浏览，110000-点击查看电话，110101-二手房详情/首屏3D，110102-二手房详情/房顾说，110103-二手房详情/小区历史成交，110201-租房详情/首屏3D，110202-租房详情/房顾说，110301-小区详情/首屏3D，110401-房产顾问列表/首屏3D，110501-房产顾问详情/首屏3D，110601-会员中心/我关注的房产顾问，120000-检索，130000-下载,140000-对比》
         //150000-点击查看私信，
        //150101-二手房详情/首屏经纪人头像，150102-二手房详情/房顾说，150103-二手房详情/小区历史成交，
        //    150201-小区详情/首屏经纪人头像，150202-小区详情/小区金牌房产顾问，150203-小区详情/小区推荐，
        //    150301-房产顾问详情/首屏经纪人头像,
        //    150401-租房详情/首屏经纪人头像，150402-租房详情/房顾说，
        //    150501-房产顾问列表/首屏经纪人头像,

    ];

    GLOBAL.DataStore.DataHandle.getData({
        url: GLOBAL.PageBase.ServiceURL,
        handler: 'ClickMobileLog_perm',
        parame: '{fucid:"RequestHandler",data:"' + logobj + '"} ',
        success: function (result) {
            if (result.status == '200') {
                if (type == 1 && tjType== 2) {
                    $(obj).html('<i  class="mai-ico"></i>' + phonenum);
                }
                if (type == 2 && tjType == 2) {
                    $(obj).parent().html(phonenum);
                    $(obj).remove();
                }
            } else if (result.status == '500') {

            }
        }
    });
};
