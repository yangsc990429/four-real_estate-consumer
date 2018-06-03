///*
//地铁房列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.CommunityDetail', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle,
        _gvDomTemp = null;

    //初始化事件
    _this.Init = function () {
        //加载地图
        LoadMatching();
        //加载线型图表
        // launchExample();
        //是否关注该房源
        //IsCollectHouseByMemberID();
        LoadLayoutPic();
        bindSearchEvent();
         
        $('a[data-reveal-id]').live('click', function (e) { 
            var modalLocation = $(this).attr('data-reveal-id'); 
            var index = modalLocation.substr(7, 1); 
            if ($(this).html() == '查看全部图片&gt;') {
                $('#myGallery2').galleryView();
                return;
            }
            var i = $(this).parent().index() + 1;
            var j = $(this).closest('.con').index();
            i = j * 4 + i; 
            var obj = index == "" ? $('#myGallery2') : $('#myGalleryHXT' + index);
            _gvDomTemp = obj.clone();
            obj.galleryView(
                { start_frame: i }
            ); 
        }); 
        $('.close-reveal-modal').live("click", function () { 
            $(this).parent().find('.gv_galleryWrap').replaceWith(_gvDomTemp);
        }); 
    };

});
 
//是否关注该房源
function IsCollectHouseByMemberID() {
    //判断当前用户是否登录
    var MemberID = GLOBAL.Cookie('MemberID');
    if (MemberID == null) {
        $('#CollectCommunity').html('关注该小区');
        $("#CollectCommunity").prev().css('display', 'inline-block');
        return;
    }

    if (MemberID && CommunityCode.length > 0) {
        GLOBAL.DataStore.DataHandle.getData({
            url: '/Service/Main.ashx',
            handler: 'data',
            parame: '{fucid:"IsCollectCommunityByMemberID",data:"' + MemberID + ',' + CommunityCode + '"} ',
            success: function (result) {
                if (result[0].RESULT == '1') {
                    $('#CollectCommunity').html('已关注');
                    $("#CollectCommunity").attr("statu", 1);
                    // $("#CollectCommunity").prev().css('display', 'none');
                } else if (result[0].RESULT == '0') {
                    $('#CollectCommunity').html('关注该小区');
                    //$("#CollectCommunity").prev().css('display', 'inline-block');
                }
            }
        });
    }
};
//关注小区
function CollectCommunity() {
    var MemberID = GLOBAL.Cookie('MemberID');
    if (MemberID == null) {
        MTLogin();
        return;
    }
    $('#CollectCommunity').html($("#CollectCommunity").attr("statu") == "1" ? "关注该小区" : "已关注");
    $("#CollectCommunity").attr("statu") == "1" ? $("#CollectCommunity").attr("statu", 0) : $("#CollectCommunity").attr("statu", 1);
    if (MemberID && CommunityCode.length > 0) {
        GLOBAL.DataStore.DataHandle.postData({
            url: GLOBAL.PageBase.ServiceURL,
            handler: 'SaveCollectInfo_perm',
            parame: '{fucid:"RequestHandler",data:"2,' + MemberID + ',' + CommunityCode + '"} ',
            success: function () {
            }
        });
    }
}
var lindex = 4;
var layindex = 99999;
function LoadLayoutPic() { 
    if (LayoutPic == null) {
        $('#HouseType').css('display', 'none');
        return;
    }
    else {
        var LayouPicStr = "";
        for (var i = 0; i < LayoutPic.length; i++) {
            //  alert(123123123);
            //居室组序列
            var LayoutIndex = parseInt(LayoutPic[i].PicMemo);
            if (LayoutPic[i].PicType == "户型" && LayoutIndex <= 8) {
                //各居室总数
                $("#l" + LayoutIndex).html(parseInt($("#l" + LayoutIndex).html()) + 1);

                //图片组
                var PicGroupIndex = parseInt($("#c" + LayoutIndex).attr("size"));

                //图片序列
                var PicIndex = parseInt($("#c" + LayoutIndex + "p" + PicGroupIndex).attr("size"));


                //户型图    增加 <a href=\"#\" data-reveal-id=\"myModal1\" data-animation=\"none\"></a> 
                if (layindex != LayoutIndex) {
                    lindex = 4;
                }
                if (PicIndex >= lindex) {
                    if (layindex != LayoutIndex) {
                        lindex = 5;
                        layindex = LayoutIndex;
                    }
                    PicGroupIndex += 1;
                    $("#c" + LayoutIndex).attr("size", PicGroupIndex);
                    $("#c" + LayoutIndex).html($("#c" + LayoutIndex).html() + "<div class=\"con\"><dl id=\"c" + LayoutIndex + "p" + PicGroupIndex + "\" size=\"2\"><dd><a data-animation=\"none\" data-reveal-id=\"myModal" + LayoutIndex + "\" class=\"big-link\" href=\"javascript:;\" );\"><img src=\"" + LayoutPic[i].PicFilePath + LayoutPic[i].PicFileName + "_216X195." + LayoutPic[i].PicFileType + "\"></a></dd></dl></div>");
                }
                else {
                    $("#c" + LayoutIndex + "p" + PicGroupIndex).attr("size", PicIndex + 1);
                    $("#c" + LayoutIndex + "p" + PicGroupIndex).html($("#c" + LayoutIndex + "p" + PicGroupIndex).html() + "<dd><a data-animation=\"none\" data-reveal-id=\"myModal" + LayoutIndex + "\" class=\"big-link\" href=\"javascript:;\" ><img src=\"" + LayoutPic[i].PicFilePath + LayoutPic[i].PicFileName + "_216X195." + LayoutPic[i].PicFileType + "\"></a></dd>");
                }
                AddHLHXTPic(LayoutIndex, PicGroupIndex, LayoutPic[i].PicFilePath, LayoutPic[i].PicFileName, LayoutPic[i].PicFileType);
            }
        }

        for (var i = 1; i < 9; i++) {
            if (Number($("#c" + i + "p1").attr("size")) == 0) {
                $("#l" + i).parent().remove();
                $("#c" + i).parent().parent().parent().remove();
            }
        }
        $(".range_mapb ul li").eq(0).click();
        $('#LayoutDis').html(LayouPicStr);
        initLayout();

    }
}
 
function AddHLHXTPic(layoutIndex, picGroupIndex, picFilePath, picFileName, picFileType) {
    var liStr = '<li><img src=\"' + picFilePath + picFileName + "_800X600." + picFileType + '" /></li>'; 
    var obj = $("#myGalleryHXT" + layoutIndex);
    if (obj != undefined) {
        obj.append(liStr);
    } 
}

function initLayout() {
    $(".paneb").css("display", "block");
    $(".tabBar").slide({
        mainCell: ".conWrap",
        effect: "left",
        trigger: "click",
        pnLoop: false
    });
    $(".paneb").eq(0).siblings().css("display", "none");
}
 
function LoadMatching() {
    for (var i = 0; i < SideMatching.length; i++) {
        var MatchingLi = "<li onclick=\"ga('send', 'event', 'zhoubianpeitao', 'tab_qiehuan', '" + SideMatching[i].Matching + "');\" index=\"" + i + "\"><i class=\"mai-ico\"></i>" + SideMatching[i].Matching + "(" + SideMatching[i].PointList.length + ")</li>";

        if (i == 0) {
            MatchingLi = "<li onclick=\"ga('send', 'event', 'zhoubianpeitao', 'tab_qiehuan', '" + SideMatching[i].Matching + "');\" class=\"hit\" index=\"" + i + "\"><i class=\"mai-ico\"></i>" + SideMatching[i].Matching + "(" + SideMatching[i].PointList.length + ")</li>";
            LoadPoint(0);
        }
        $('.range_map ul').append(MatchingLi);
    }


    //定义周边配套标签的事件
    $('.range_map ul li').click(function () {
        $(this).addClass('hit').siblings().removeClass('hit');
        LoadPoint($(this).attr('index'));
    });
}

$('#SearchTips li').hover(
           function () {
               $(this).css({ "background": "#f0f0f0" });
           },
           function () {
               $(this).css({ "background": "#fff" });
           }
       );

//新增输入小区名称联想功能 2015.11.25
var v = $('#searchBox').val();
$('#searchBox').bind('input propertychange', function () {


    //$(this).keyup(function () {
    if ($(this).val() != v && $(this).val() != '') {
        $('#SearchTips').css('display', 'block');

        var searchContent = $(this).val().trim();
        if (searchContent == "请输入小区名称") {
            searchContent = "";
        }
        if (searchContent.length > 0) {

            $('#SearchTips').html("");
            setTimeout(function () {
                $.ajax({
                    type: "GET",
                    url: GLOBAL.PageBase.communityServiceURL,
                    data: { OperType: "SearchCommunity", RS: searchContent },
                    dataType: "html",
                    success: function (data) {

                        SearchResult = eval('(' + data + ')');
                        if (SearchResult.DataList.length > 0) {
                            var html = "";
                            for (var i = 0; i < SearchResult.DataList.length; i++) {
                                var entity = eval('(' + SearchResult.DataList[i] + ')');
                                html += '<li><a href="javascript:;" val="' + entity.AVERAGEPRICE + '">' + entity.GARDENNAME + '</a></li>';
                            }
                            $("#SearchTips").html(html);
                            bindSearchTipsStyle();
                            $('#SearchTips').show();
                        }
                    }
                });
            }, 300);
        }


    } else if ($(this).val() == '') {
        $('#SearchTips').css('display', 'none');
    }
    //})
})
function bindSearchEvent() {
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
                //stopDefault(event);
            }
        }
    });
}
//搜索条件样式
function bindSearchTipsStyle() {
    $('#SearchTips li').hover(
        function () {
            $(this).css({ "background": "#f0f0f0" });
        },
        function () {
            $(this).css({ "background": "#fff" });
        }
    );
};
//阻止事件执行
function stopDefault(e) {

    if (e && e.preventDefault) {
        e.preventDefault();
    }
    else {
        event.returnValue = false;
    }
}
$(document).keypress(function (event) {
    // 回车键事件  
    var upDownClickNum = $("#SearchTips .searchBackgroud ").length;
    if (event.keyCode == 13) {
        if ($("#SearchTips").css("display") == "block") {
            if (upDownClickNum == 1) {
                $('#searchBox').val($("#SearchTips .searchBackgroud ").html());
                $("#ipt_Price").val($("#SearchTips .searchBackgroud ").attr("val"));
                $('#SearchTips').css('display', 'none');
            } else {
                //$("#btSearch").click();
            }

        } else {
            // $("#btSearch").click();
        }
    }

});


function LoadPoint(i) {
    // 清空房源列表
    $("#PointList").html("");

    // 清空地图上的所有
    map.clearOverlays();

    //配套类
    var PointClass = SideMatching[i].PointList;

    // 循环绑定房源表并创建房源坐标
    for (var p = 0; p < PointClass.length; p++) {
        //创建检索信息窗口对象
        var InfoContent = "地址：" + PointClass[p].Address + "<br />距离：" + PointClass[p].Distance + "<br />步行：约 " + parseInt(PointClass[p].Distance / 100 + 1) + " 分钟";
        InfoWindow[p] = new BMapLib.SearchInfoWindow(map, InfoContent, {
            title: "<b>" + PointClass[p].Name + "</b>",      //标题
            enableAutoPan: true,     //自动平移
            searchTypes: []
        });
        point = new BMap.Point(PointClass[p].PointX, PointClass[p].PointY);
        marker[p] = new BMap.Marker(point);  // 创建标注
        map.addOverlay(marker[p]);              // 将标注添加到地图中
        map.enableScrollWheelZoom(true);

        label[p] = new BMap.Label(p + 1);  // 创建文本标注对象
        label[p].setStyle({
            border: 0,
            color: "#FFFFFF",
            fontFamily: "微软雅黑",
            fontSize: "12px",
            width: "17px",
            height: "23px",
            lineHeight: "19px",
            textAlign: "center",
            background: "url(http://bj.maitian.cn/Skin/img/mpicon.png)",    //背景图片，这是房产标注的关键！
        });
        marker[p].setLabel(label[p]);

        // 更新房源列表	
        var OldList = $("#PointList").html();
        var NewList = "<div class=\"fk_xinxi clearfix\"><dl class=\"mai-ico\">" + parseInt(p + 1) + "</dl><ul><span style='cursor:pointer;'  onclick=\"disPoint(" + p + ");ga('send', 'event', 'zhoubianpeitao', '" + SideMatching[i].Matching + "', '" + PointClass[p].Name + "');\">" + PointClass[p].Name + "</span><li class=\"site\">地址：</li><li class=\"line\">" + PointClass[p].Address + "</li></ul></div>";
        $("#PointList").html(OldList + NewList);
    }
    if (CommunityX != null && CommunityY != null) {
        point = new BMap.Point(CommunityX, CommunityY);

        var VillageLabel = new BMap.Label(" <div class=\"name\">" + CommunityName + "<i class=\"arrow\"></i></div>  ",
       {
           offset: new BMap.Size(-35, -40),
           position: point
       });                           //label的偏移量，为了让label的中心显示在点上        //label的位置    

        VillageLabel.setStyle({
            "border": "0",
            "padding": "0"
        });
        map.addOverlay(VillageLabel);               // 将标注添加到地图中

    }
    map.centerAndZoom(point, 16);     // 创建点坐标    (级别16:200米)  
}

function disPoint(p) {
    InfoWindow[p].open(marker[p]);
    $('.BMapLib_sendToPhone').css('display', 'none');
    for (var i = 0; i < marker.length; i++) {
        if (i == p) {
            marker[p].setTop(true);
        }
        else {
            marker[i].setTop(false);
        }
    }

}

//电话点击量日志
function phoneLogClick(phonenum, Brokerid, houseno, obj, type, tjType) {
    var MemberID = GLOBAL.Cookie('MemberID');
    var logobj = [
         URLS = '/VIEW/Community/CommunityDetail.html',
         TYPE = tjType,  //  点击量统计类型:1、私信;2、电话;3、短信;
         BROKERID = Brokerid,
         MEMBERID = (MemberID == undefined ? '' : MemberID),
         //ADDDATE   ='',
         DEVICETYPE = 4,//1:android;2:IOS;3:weixin;4:pc;
         DEVICENAME = '',
         PAGENAME = escape('小区详情页'),
         HOUSENO = houseno,
         AREATYPE = 'bj',//bj-北京，fz-福州，xm-厦门
         PAGETYPE = '130200',//页面类型 《900000-其他，100000-首页，110000-二手房，110100-二手房列表，110200-二手房详情，120000-租房，120100-租房列表，120200-租房详情，130000-小区，130100-小区列表，130200-小区详情，140000-房产顾问，140100-房产顾问列表，140200-房产顾问详情，150000-会员中心，150100-会员中心/我关注的房产顾问》
         ACTIONTYPE = tjType == 1 ? '150201' : '110301'//行为类型 《900000-其他,100000-浏览，110000-点击查看电话，110101-二手房详情/首屏3D，110102-二手房详情/房顾说，110103-二手房详情/小区历史成交，110201-租房详情/首屏3D，110202-租房详情/房顾说，110301-小区详情/首屏3D，110401-房产顾问列表/首屏3D，110501-房产顾问详情/首屏3D，110601-会员中心/我关注的房产顾问，120000-检索，130000-下载,140000-对比》

    ];

    GLOBAL.DataStore.DataHandle.getData({
        url: GLOBAL.PageBase.ServiceURL,
        handler: 'ClickMobileLog_perm',
        parame: '{fucid:"RequestHandler",data:"' + logobj + '"} ',
        success: function (result) {
            if (result.status == '200') {
                if (type == 1 && tjType == 2) {
                    $(obj).html('<i  class="mai-ico"></i>' + phonenum);
                    $(obj).closest('ul').css('cursor', 'default');
                    $(obj).closest('ul').attr('onclick', '');
                }
                if (type == 2 && tjType == 2) {
                    $(obj).parent().find('kbd').html(phonenum);
                    $(obj).remove();
                }
            } else if (result.status == '500') {

            }
        }
    });
}

$('.gv_panel img').live('click', function () {
    window.open($(this).attr('src'));
});