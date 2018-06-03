///*
//二手房列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.CommunitySubwayList', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle,
        currentUrl, Platform;
    //01 添加样式以及搜索条件
    var bindAddClassWithSearchTerm = function () {
        var addClassStr = $('#addClassStr').val().split(',');
        for (var i = 0; i < addClassStr.length; i++) {
            $('#' + addClassStr[i] + '').addClass("bg");
        }
        if (addClassStr[3] == "B0" && addClassStr[4] == "D0") {
            $("#B0").addClass("bg");
        }
        else {
            $("#B0").removeClass("bg");
        }
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
            + '<a id="' + subwayid + '" href="#" >不限</a>'
            + '</div>'
            + '<div class="close_ch">'
            + '<a name="panesaClose" href="javascript:;">×</a>'
            + '</div>';
        for (var i = 0; i < SubwayJson.length; i++) {
            if (subwayid == SubwayJson[i].SubwayNO) {
                curSubwayUrl = SubwayJson[i].SubwayURL;
                for (var j = 0; j < SubwayJson[i].Station.length; j++) {
                    appendHtml += "<div class='clearfix quyu_shangquan'>";
                    appendHtml += '<a onclick="ga(\'send\', \'event\', \'shaixuanditiefang\', \'ditiexianlu\', \'' + SubwayJson[i].SubwayName + "_" + SubwayJson[i].Station[j].StationName + '\');" id="' + SubwayJson[i].Station[j].StationNO + '" href="' + SubwayJson[i].Station[j].StationURL + '"><i class="mai-ico"></i>' + SubwayJson[i].Station[j].StationName + '</a>';
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
