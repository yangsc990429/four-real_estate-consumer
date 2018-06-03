///*
//二手房列表
//CodeBy:wangdingxu
//Date:2015.1.1
//*/
GLOBAL.Namespace('View.CommunityList', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle,
        currentUrl, CycleStyle = '';
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
            if ($(this).attr("id") != "R0") {
                var appendHtml = ''
                    + '<div class="panex clearfix" style="display:block;">'
                    + '<div class="no_restrictions" id="regionDefault">'
                    + '<a id="' + regionid + '" href="#" >不限</a>'
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
                                appendHtml += '';
                            }
                            appendHtml += '<a onclick="ga(\'send\', \'event\', \'zhanneisousuo\', \'quyu\', \'' + RegionJson[i].RegionName + '_' + RegionJson[i].Cycle[j].CycleName + '\');" id="' + RegionJson[i].Cycle[j].CycleNO + '" href="' + RegionJson[i].Cycle[j].RegionURL + '">' + RegionJson[i].Cycle[j].CycleName + '</a>';

                            if (j == RegionJson[i].Cycle.length - 1) {
                                appendHtml += '';
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
            }
        });
        */
        //单击 x 按钮 绑定事件
        $(document).delegate('a[name="panesaClose"]', "click", function () {
            $('.filter_options .panesa').hide();
            $('.filter_options ol').removeAttr("style");
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
