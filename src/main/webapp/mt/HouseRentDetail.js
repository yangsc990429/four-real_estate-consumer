///*
//租房详情
//CodeBy:liubing
//Date:2014。12.03
//*/
GLOBAL.Namespace('View.HouseRentDetail', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle
        ,_houseCommentID;//房源评论ID


    _this.Init = function () {
        //加载地图
        LoadMatching();
        //举报房源
        reportHouseEvent();
        //举报房评
        reportHouseCommentEvent();
    };
});

function reportHouseEvent() {

    /*其他与输入框的勾选，当勾选其他，输入框可以输入内容，当不勾选其他，输入框为只读，并且清空内容start*/
    $('#reportInfo1').click(function () {
        if ($('#reportInfo1').is(':checked')) {
            $('#reportOtherInfo').removeAttr("readonly");
        }
        else {
            $('#reportOtherInfo').attr("readonly", "readonly");
            $('#reportOtherInfo').val('');
        }
    });
    /*其他与输入框的勾选，当勾选其他，输入框可以输入内容，当不勾选其他，输入框为只读，并且清空内容end*/

    $('#submitReportHouse').click(function () {
        var reportInfo = $("input:checkbox:checked[name='reportInfo']").parent().text();
        if ($('#reportInfo1').is(':checked')) {
            if ($('#reportOtherInfo').val().length < 1) {
                alert("请填写要举报的内容");
                return;
            }
            reportInfo += $('#reportOtherInfo').val();
        }
        var MemberID = GLOBAL.Cookie('MemberID');
        var HouseID = $('#HouseID').val();
        if (reportInfo.length <= 0) {
            alert("请勾选要举报的内容");
            return;
        }
        if (MemberID == null) {
            MTLogin();
            return;
        }

        if (MemberID != null && MemberID.length > 0 && HouseID != null && HouseID.length > 0) {
            GLOBAL.DataStore.DataHandle.postData({
                url: '/Service/Main.ashx',
                handler: 'MemberService_perm',
                parame: '{fucid:"GetUser",data:"' + MemberID + '"}',
                success: function (data) {
                    var title = "";
                    if (reportInfo.length > 50) {
                        title = reportInfo.substring(0, 50);
                    }
                    else {
                        title = reportInfo;
                    }
                    GLOBAL.DataStore.DataHandle.postData({
                        url: '/Service/Main.ashx',
                        handler: 'data',
                        parame: '{fucid:"reportHouseByMemberID",data:"' + HouseID + ',' + MemberID + ',' + title + ',' + reportInfo + ',2,' + data.NiceName + ',' + data.Mobile + '"} ',
                        success: function (result) {
                            if (result.status == '200') {
                                alert('举报成功！');
                                $('.reveal-modal-bg').hide();
                                $('#myModal1').css('visibility', 'hidden');
                            } else {
                                alert('举报失败，请稍候重试！');
                            }
                        }
                    });


                }
            });
        }
    });
}
function GetHouseCommentID(id) {
    if (id.length > 0) {
        _houseCommentID = id;
    }
}

function reportHouseCommentEvent() {

    /*其他与输入框的勾选，当勾选其他，输入框可以输入内容，当不勾选其他，输入框为只读，并且清空内容start*/
    $('#reportInfo2').click(function () {
        if ($('#reportInfo2').is(':checked')) {
            $('#reportOtherCommentInfo').removeAttr("readonly");
        }
        else {
            $('#reportOtherCommentInfo').attr("readonly", "readonly");
            $('#reportOtherCommentInfo').val('');
        }
    });
    /*其他与输入框的勾选，当勾选其他，输入框可以输入内容，当不勾选其他，输入框为只读，并且清空内容end*/

    $('#submitReportHouseComment').click(function () {

        var reportInfo = $("input:checkbox:checked[name='reportCommentInfo']").parent().text();
        if ($('#reportInfo2').is(':checked')) {
            if ($('#reportOtherCommentInfo').val().length < 1) {
                alert("请填写要举报的内容");
                return;
            }
            reportInfo += $('#reportOtherCommentInfo').val();
        }

        var MemberID = GLOBAL.Cookie('MemberID');
        var HouseID = $('#HouseID').val();
        if (reportInfo.length <= 0) {
            alert("请勾选要举报的内容");
            return;
        }
        if (MemberID == null) {
            MTLogin();
            return;
        }

        if (MemberID != null && MemberID.length > 0 && HouseID != null && HouseID.length > 0) {
            GLOBAL.DataStore.DataHandle.postData({
                url: '/Service/Main.ashx',
                handler: 'MemberService_perm',
                parame: '{fucid:"GetUser",data:"' + MemberID + '"}',
                success: function (data) {

                    var title = "";
                    if (reportInfo.length > 50) {
                        title = reportInfo.substring(0, 50);
                    }
                    else {
                        title = reportInfo;
                    }
                    GLOBAL.DataStore.DataHandle.postData({
                        url: '/Service/Main.ashx',
                        handler: 'data',
                        parame: '{fucid:"reportHouseCommentByMemberID",data:"' + _houseCommentID + ',' + HouseID + ',' + MemberID + ',' + title + ',' + reportInfo + ',2,' + data.NiceName + ',' + data.Mobile + '"} ',
                        success: function (result) {
                            if (result.status == '200') {
                                alert('举报成功！');
                                $('.reveal-modal-bg').hide();
                                $('#myModal2').css('visibility', 'hidden');
                            } else {
                                alert('举报失败，请稍候重试！');
                            }
                        }
                    });

                }
            });
        }
    });
}
function LoadMatching() {
    for (var i = 0; i < SideMatching.length; i++) {
        var MatchingLi = "<li index=\"" + i + "\"><i class=\"mai-ico\"></i>" + SideMatching[i].Matching + "(" + SideMatching[i].PointList.length + ")</li>";

        if (i == 0) {
            MatchingLi = "<li class=\"hit\" index=\"" + i + "\"><i class=\"mai-ico\"></i>" + SideMatching[i].Matching + "(" + SideMatching[i].PointList.length + ")</li>";
            
            LoadPoint(0);
        }
        $('.range_map ul').append(MatchingLi);
    }


    //定义周边配套标签的事件
    $('.range_map ul li').click(function() {
        $(this).addClass('hit').siblings().removeClass('hit');
        LoadPoint($(this).attr('index'));
    });
}

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
        var NewList = "<div class=\"fk_xinxi clearfix\"><dl class=\"mai-ico\">" + parseInt(p + 1) + "</dl><ul><span style='cursor:pointer;'  onclick=\"disPoint(" + p + ")\">" + PointClass[p].Name + "</span><li class=\"site\">地址：</li><li class=\"line\">" + PointClass[p].Address + "</li></ul></div>";
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
function phoneLogClick(phonenum, Brokerid, houseno, obj, type,tjType) {
    var MemberID = GLOBAL.Cookie('MemberID');
    var logobj = [
         URLS = '/VIEW/HouseRent/HouseRentDetail.html',
         TYPE = tjType,  //  点击量统计类型:1、私信;2、电话;3、短信;
         BROKERID = Brokerid,
         MEMBERID = (MemberID == undefined ? '' : MemberID),
         //ADDDATE   ='',
         DEVICETYPE = 4,//1:android;2:IOS;3:weixin;4:pc;
         DEVICENAME = '',
         PAGENAME = escape('租房房源详情页'),
         HOUSENO = houseno,
         AREATYPE = 'bj',//bj-北京，fz-福州，xm-厦门
         PAGETYPE = '120200',//页面类型 《900000-其他，100000-首页，110000-二手房，110100-二手房列表，110200-二手房详情，120000-租房，120100-租房列表，120200-租房详情，130000-小区，130100-小区列表，130200-小区详情，140000-房产顾问，140100-房产顾问列表，140200-房产顾问详情，150000-会员中心，150100-会员中心/我关注的房产顾问》
         ACTIONTYPE = tjType == 1 ? (type == 2 ? '150402' : '150401') : (type == 2 ? '110202' : '110201')//行为类型 《900000-其他,100000-浏览，110000-点击查看电话，110101-二手房详情/首屏3D，110102-二手房详情/房顾说，110103-二手房详情/小区历史成交，110201-租房详情/首屏3D，110202-租房详情/房顾说，110301-小区详情/首屏3D，110401-房产顾问列表/首屏3D，110501-房产顾问详情/首屏3D，110601-会员中心/我关注的房产顾问，120000-检索，130000-下载,140000-对比》

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