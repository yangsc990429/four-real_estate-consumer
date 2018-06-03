var timer = null;
GLOBAL.Namespace('View.HouseRentCycle', function () {
    var _this = this,
       _pagebase = GLOBAL.PageBase,
       _dataHandle = GLOBAL.DataStore.DataHandle;

    _this.Init = function () {
        currentUrl = $('#currentUrl').val();
        //02 搜索事件
        bindSearchEvent(currentUrl);
        ////03 加载上次搜索条件
        LoadLastSearchTerm(currentUrl);
        ////03 加载上次搜索条件
        //SaveSearchTerm(currentUrl);    
 
        isnoA = 1;
        var strarea = "北京";
        clickREid = "0";
        var mapLevel = 16;  //设置地图级别（初始化）
        //判断是否选择区域，如果选择默认暂时区域内门店信息------5.9  地图区域显示比例尺调整到200-16级别, 五公里的比例尺12 
        if (RE_ID != "" && RE_ID_x !== "" && RE_ID_y !== "") {
            removeGroundOverlay();
            map.centerAndZoom(new BMap.Point(RE_ID_x, RE_ID_y), mapLevel);                   // 初始化地图,设置城市和地图级别。

            map.panTo(new BMap.Point(RE_ID_x, RE_ID_y), 300);
            clickREid = RE_ID;

            DictInType = 1;
            clickType = 2;
        }
        else if (DictInfoONE == "1" && DictInfoONE_X !== "" && DictInfoONE_Y !== "" && DictInfoONE_DictID !== "") {
            removeGroundOverlay();
            //Villageshows(2, DictInfoONE_DictID);
            map.centerAndZoom(new BMap.Point(DictInfoONE_X, DictInfoONE_Y), mapLevel);                   // 初始化地图,设置城市和地图级别。
            clickType = 2;
            DictInType = 1;

        }
        else {
            DictInType = 0;
            //区域展示
            Areashows();

            map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);                   // 初始化地图,设置福州坐标为“此坐标点”
        }

        map.addEventListener('zoomend', loadMapInfo);

        map.addEventListener("moveend", loadMapInfo);
    };
});


//用来判断鼠标点击或移动时，是否更新区域、门店数据
var clickType = 1;
$(document).mouseenter(function () {
    mapLevel = map.getZoom();

    if (mapLevel == "16") {
        clickType = 2;
    }
    else {
        clickType = 1;
    }

})

$(document).click(function () {
    mapLevel = map.getZoom();
    if (mapLevel == "16") {
        clickType = 2;
    }
    else {
        clickType = 1;
    }
})
var zIndex = 10;

function addZindex(This) {
    zIndex++;
    //console.log(zIndex);
    $(This).closest('label').css('z-index', zIndex);
}



var currentUrl = "";
// 百度地图API功能
var map = new BMap.Map("allmap", { enableMapClick: false });//缩小地图，比例尺最高是10公里
var top_left_control = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });// 左下角，添加比例尺
map.addControl(top_left_control);

map.enableScrollWheelZoom(true);

map.enableScrollWheelZoom(11, 20); //允许鼠标滚轮滑动放大缩小地图
//设置地图允许的最小级别。取值不得小于地图类型所允许的最小级别。
map.setMaxZoom(19);
//设置地图允许的最小级别。取值不得小于地图类型所允许的最小级别。
map.setMinZoom(11);
var point1 = new BMap.Point(116.404, 39.915);//设置初始点，屏蔽控件显示
map.centerAndZoom(point1, 12);//设置初始点，屏蔽控件显示

var point = null;
var marker = [];
var InfoWindow = [];

var clickTypePT = 1;

//全局点击小区ID，特殊记录ID，并判断是否高亮显示依据
var clickREid = "0";


//初始化地图并定位到中心点
function initMap(mapLngLat, mapLevel) {
    var arrPoint = mapLngLat.split(',');
    point1 = new BMap.Point(arrPoint[0], arrPoint[1]);//设置初始点，屏蔽控件显示
    map.centerAndZoom(point1, mapLevel);//设置初始点，屏蔽控件显示
    removeGroundOverlay();
}

var lastGid = "";
function disPoint(gid, pointX, pointY) {
    mapLevel = map.getZoom();
    if (mapLevel < 16) {
        return;
    }

    if (!isNaN(pointX) && !isNaN(pointY)) {
        point = new BMap.Point(pointX, pointY);

        if (clickREid == gid) {
            var result = BMapLib.GeoUtils.isPointInRect(lastPoint, bounds);

            if (result == true) {
                return;
            }
        }
    }
    else {
        point = new BMap.Point(116.404, 39.915);
    }
    clickREid = gid;
    removeGroundOverlay();

    clickTypePT = 2;

    iAVONE = "1";
    clickType = 1;


    map.centerAndZoom(point, 16);      // 初始化地图,设置城市和地图级别。

    DictInType = 0;
    removeGroundOverlay();
    //Villageshows(1, "0");
    iAVNo = "0";
    iAVONE = "1";
    //记录上次小区ID和经纬度
}

function next(reid) {
    //console.log(url)
    //$.get(url)
    var QCurrentareaOrderBy = "";
    var CurrentareaOrderBy = "";
    var Paging = "";
    var PagingNo = "1";
    var displayHouseListCount = "0";
    var QdisplayHouseListCount = "";
    result = "";
    $.ajax({
        type: "GET",
        url: '/Service/HouseRentCycle.ashx',
        async: true,
        cache: false,
        data: { "v": new Date().getTime(), "RE": reid, "Type": "getList", HT: HousingType },
        success: function (result) {
            $('.map_ico_left').empty();
            var arr = result.split('@');
            $("#DZCount").html(arr[0]);
            $(".map_ico_left").html(arr[1]);
            $(".paging").html(arr[2]);
            //排序，点击小区，事实上如果在点击排序，除了排序需要改变样式，数据也要重新获取   ,  moren
            if (result && result.length) {
                var strscreening = $("#leftscreening").html();

                var str = null;
                if (reid == 0) {
                    str = "[{\"CurrentareaOrderBy\":\"" + "0" + "\",\"REID\":\"" + "" + "\"}]";
                }
                else {
                    str = "[{\"CurrentareaOrderBy\":\"" + "0" + "\",\"REID\":\"" + reid + "\"}]";
                }
                str = eval("(" + str + ")");
                var txtstrscreening = _.template(strscreening, { variable: 'screeningtemplate' })(str);
                $(".screening").html(txtstrscreening);
            }
        },
        error: function (err, e, a) {
            // args.error(err, e, a)
        }
    })
    $("#mCSB_8_container").closest('div').css('top', '0px');
    $("#mCSB_8_scrollbar_vertical").closest('div').css('top', '0px');
    $("#mCSB_draggerContainer").closest('div').css('top', '0px');
    $("#mCSB_dragger_bar").closest('div').css('top', '0px');
    $("#mCSB_8_dragger_vertical").closest('div').css('top', '0px');
    $("#list_wrap filter_sel mCustomScrollbar _mCS_8 mCS-autoHide").closest('div').css('top', '0px');
    $("#mCSB_container").closest('div').css('top', '0px');

    clickREid = reid;

    if (reJson != "") {
        ////高亮显示点击小区
        Villageshows1(reJson);
    }
}

function clkPaixu(aa, params, re) {
    var currentUrl = $('#currentUrl').val();
    currentUrl = currentUrl + "";
    var RE = "";
    if (currentUrl.indexOf('&RS=') > -1) {
        RE = currentUrl.substring(currentUrl.toUpperCase().indexOf('&RE=') + 4, currentUrl.toUpperCase().indexOf('&RS='));
    }
    var context = "";
    if (re != '') {
        RE = re;
    }
    else {
        context = strcontext;
    }

    var ys = params.substring(3);
    if (ys != '') {
        $('.basepaixu').find('a').removeClass('bg');
    } else {
        $('.basepaixu').find('a').addClass('bg');
    }
    if (ys == '12') {
        $('.paixu_zj').html("<a onclick=ga('send', 'event', 'paixu', 'zongjia', 'yougaodaodi'); href=javascript:clkPaixu(this,'OR=11','" + RE + "') class='bg'>租金<i class='mai-ico'></i></a>");
        $('.paixu_dj').find('a').removeClass('bg');
        $('.paixu_mj').find('a').removeClass('bg');
    }
    if (ys == '11') {
        $('.paixu_zj').html("<a onclick=ga('send', 'event', 'paixu', 'zongjia', 'yougaodaodi'); href=javascript:clkPaixu(this,'OR=12','" + RE + "') class='bg'>租金<i class='mai-ico up'></i></a>");
        $('.paixu_dj').find('a').removeClass('bg');
        $('.paixu_mj').find('a').removeClass('bg');
    }
    if (ys == '22') {
        $('.paixu_dj').html("<a onclick=ga('send', 'event', 'paixu', 'danjia', 'yougaodaodi'); href=javascript:clkPaixu(this,'OR=21','" + RE + "') class='bg'>面积<i class='mai-ico'></i></a>");
        $('.paixu_zj').find('a').removeClass('bg');
        $('.paixu_mj').find('a').removeClass('bg');
    }
    if (ys == '21') {
        $('.paixu_dj').html("<a onclick=ga('send', 'event', 'paixu', 'danjia', 'yougaodaodi'); href=javascript:clkPaixu(this,'OR=22','" + RE + "') class='bg'>面积<i class='mai-ico up'></i></a>");
        $('.paixu_zj').find('a').removeClass('bg');
        $('.paixu_mj').find('a').removeClass('bg');
    }
    if (ys == '32') {
        $('.paixu_mj').html("<a onclick=ga('send', 'event', 'paixu', 'mianji', 'yougaodaodi'); href=javascript:clkPaixu(this,'OR=31','" + RE + "') class='bg'>时间<i class='mai-ico'></i></a>");
        $('.paixu_dj').find('a').removeClass('bg');
        $('.paixu_zj').find('a').removeClass('bg');
    }
    if (ys == '31') {
        $('.paixu_mj').html("<a onclick=ga('send', 'event', 'paixu', 'mianji', 'yougaodaodi'); href=javascript:clkPaixu(this,'OR=32','" + RE + "') class='bg'>时间<i class='mai-ico up'></i></a>");
        $('.paixu_dj').find('a').removeClass('bg');
        $('.paixu_zj').find('a').removeClass('bg');
    }

    result = "";
    $.ajax({
        type: "GET",
        url: '/Service/HouseRentCycle.ashx?v=' + new Date().getTime(),
        async: true,
        cache: false,
        data: params + "&Type=getList&RE=" + RE + "&HT=" + HousingType + context,
        success: function (result) {
            $('.map_ico_left').empty();
            var arr = result.split('@');
            $("#DZCount").html(arr[0]);
            $(".map_ico_left").html(arr[1]);
            $(".paging").html(arr[2]);
            //排序，点击小区，事实上如果在点击排序，除了排序需要改变样式，数据也要重新获取   ,  moren
            //if (result && result.length) {
            //    var strscreening = $("#leftscreening").html();

            //    var str = null;
            //    if (clickREid == 0) {
            //        str = "[{\"CurrentareaOrderBy\":\"" + "0" + "\",\"REID\":\"" + "" + "\"}]";
            //    }
            //    else {
            //        str = "[{\"CurrentareaOrderBy\":\"" + "0" + "\",\"REID\":\"" + clickREid + "\"}]";
            //    }

            //    str = eval("(" + str + ")");
            //    var txtstrscreening = _.template(strscreening, { variable: 'screeningtemplate' })(str);
            //    $(".screening").html(txtstrscreening);
            //}
        },
        error: function (err, e, a) {
            // args.error(err, e, a)
        }

    })
    $("#mCSB_6_container").closest('div').css('top', '0px');
    $("#mCSB_6_scrollbar_vertical").closest('div').css('top', '0px');
    $("#mCSB_draggerContainer").closest('div').css('top', '0px');
    $("#mCSB_dragger_bar").closest('div').css('top', '0px');
    $("#mCSB_8_dragger_vertical").closest('div').css('top', '0px');
    $("#list_wrap filter_sel mCustomScrollbar _mCS_8 mCS-autoHide").closest('div').css('top', '0px');

}
function ClkPage(params) {
    result = "";
    $.ajax({
        type: "GET",
        url: '/Service/HouseRentCycle.ashx?v=' + new Date().getTime(),
        async: true,
        cache: false,
        data: params + "&Type=getList&HT=" + HousingType,
        success: function (result) { 
            $('.map_ico_left').empty();
            var arr = result.split('@');
            $("#DZCount").html(arr[0]);
            $(".map_ico_left").html(arr[1]);
            $(".paging").html(arr[2]);
            //排序，点击小区，事实上如果在点击排序，除了排序需要改变样式，数据也要重新获取   ,  moren
            //if (result && result.length) {
            //    var strscreening = $("#leftscreening").html();

            //    var str = null;
            //    if (clickREid == 0) {
            //        str = "[{\"CurrentareaOrderBy\":\"" + "0" + "\",\"REID\":\"" + "" + "\"}]";
            //    }
            //    else {
            //        str = "[{\"CurrentareaOrderBy\":\"" + "0" + "\",\"REID\":\"" + clickREid + "\"}]";
            //    }

            //    str = eval("(" + str + ")");
            //    var txtstrscreening = _.template(strscreening, { variable: 'screeningtemplate' })(str);
            //    $(".screening").html(txtstrscreening);
            //}
        },
        error: function (err, e, a) {
            // args.error(err, e, a)
        }

    })
    $("#mCSB_6_container").closest('div').css('top', '0px');
    $("#mCSB_6_scrollbar_vertical").closest('div').css('top', '0px');
    $("#mCSB_draggerContainer").closest('div').css('top', '0px');
    $("#mCSB_dragger_bar").closest('div').css('top', '0px');
    $("#mCSB_8_dragger_vertical").closest('div').css('top', '0px');
    $("#list_wrap filter_sel mCustomScrollbar _mCS_8 mCS-autoHide").closest('div').css('top', '0px');   


    //position: relative; top: 0px; left: 0px;

    $("#mCSB_8_container").closest('div').css('top', '0px');
    $("#mCSB_8_scrollbar_vertical").closest('div').css('top', '0px');
    $("#mCSB_container").closest('div').css('top', '0px');

}

var lastPoint = "";

//区域label
var myLabel = "";
//区域集合
var myLabel1 = [];
//小区label
var VillageLabel = "";
//小区集合
var VillageLabel1 = [];
//小区label
var SearchVillageLabel = "";

var markerArr1 = "";
var markerArr = [];

//坐标
var bj = 0;

//区域显示
function Areashows() {
    removeGroundOverlay();
    myLabel1 = [];
    //循环绑定大区
    for (var i = 0; i < MtDictInfo_Tbl.length; i++) {
        if (DictInType == 0 || MtDictInfo_Tbl[i].dictId == DictInfoONE_DictID || MtDictInfo_Tbl[i].dictId == RE_ID_RegionID) {

            point = new BMap.Point(MtDictInfo_Tbl[i].PointX, MtDictInfo_Tbl[i].PointY);


            var txtdictId = MtDictInfo_Tbl[i].dictId;


            map.enableScrollWheelZoom();
            // 复杂的自定义覆盖物
            function ComplexCustomOverlay(point, text, textem, texta) {
                this._point = point;
                this._text = text;
                this._textem = textem;
                this._texta = texta;
            }
            ComplexCustomOverlay.prototype = new BMap.Overlay();
            ComplexCustomOverlay.prototype.initialize = function (map) {
                this._map = map;
                var div = this._div = document.createElement("div");
                div.style.position = "absolute";
                div.style.zIndex = BMap.Overlay.getZIndex(this._point.lat);
                div.style.background = "url(/Skin/img/map_points.png)";
                div.style.color = "white";
                div.style.height = "50px";
                div.style.width = "90px";
                div.style.textAlign = "center";
                div.style.padding = "20px 0";
                div.style.lineHeight = "24px";
                div.style.fontSize = "16px"
                div.data = MtDictInfo_Tbl[i].MapLngLat;

                var span = this._span = document.createElement("span");
                div.appendChild(document.createTextNode(this._text));
                div.appendChild(span);

                var em = this._span = document.createElement("em");
                em.style.display = "block",
                em.style.fontSize = "14px",
                span.appendChild(em);
                em.appendChild(document.createTextNode(this._textem));

                var that = this;
                map.getPanes().labelPane.appendChild(div);
                div.onclick = function aaa() {     //alert('您点击了地图' + id);
                    var th = this;
                    removeGroundOverlay();
                    initMap(th.data, 16);
                    clickType = 2;

                }
                return div;
            }
            ComplexCustomOverlay.prototype.draw = function () {
                var map = this._map;
                var pixel = map.pointToOverlayPixel(this._point);
                this._div.style.left = pixel.x - 30 + "px";
                this._div.style.top = pixel.y - 30 + "px";
            }
            var texta = MtDictInfo_Tbl[i].dictId;
            var text = MtDictInfo_Tbl[i].RegionName;
            var textem = MtDictInfo_Tbl[i].DictHJ + " 套";
            var myCompOverlay = new ComplexCustomOverlay(point, text, textem, texta);

            map.addOverlay(myCompOverlay);

            myLabel1[i] = myCompOverlay;
        }
    }

}


/*----------清除-------------------*/
function removeGroundOverlay() {
    // 移除GroundOverlay
    for (i = 0; i < myLabel1.length; i++) {
        map.removeOverlay(myLabel1[i]);
    }
    // 移除GroundOverlay
    for (i = 0; i < VillageLabel1.length; i++) {
        map.removeOverlay(VillageLabel1[i]);
    }
}


//小区
function Villageshows1(GetReInfo_View) {

    removeGroundOverlay();

    //循环绑定小区
    for (var i = 0; i < GetReInfo_View.length; i++) {
        //判断是否区域存在或有选择

        if (GetReInfo_View[i].MapLngLat == null || GetReInfo_View[i].MapLngLat == '') {
            point = new BMap.Point(116.404, 39.915);
        }
        else {
            point = new BMap.Point(GetReInfo_View[i].CommunityX, GetReInfo_View[i].CommunityY);
        }

        if (clickREid == GetReInfo_View[i].CommunityID || (GetReInfo_View[i].CommunityID == RE_ID && RE_ID == clickREid)) {
            VillageLabel = new BMap.Label(" <a id='LBLZidndex'   href='javascript:;' onclick =\"next('" + GetReInfo_View[i].CommunityID + "')\"   onmouseenter =\"addZindex(this)\" >    <div class='single_price2'  id='pShowB'   ><p><span class='single_price_num'><label>" + GetReInfo_View[i].AveragePrice + "</label>万</span><span class='single_name_num'  id='pShowA' >  " + GetReInfo_View[i].CommunityName + "<label> " + GetReInfo_View[i].DZCount + "</label>套</span></p><em></em></div>   </a> ",
            {
                offset: new BMap.Size(0, 0), position: point
            });                           //label的偏移量，为了让label的中心显示在点上        //label的位置         
            VillageLabel.setStyle({
                "border": "0",
                "padding": "0"
            });
            lastPoint = new BMap.Point(GetReInfo_View[i].CommunityX, GetReInfo_View[i].CommunityY);
        }
        else {
            VillageLabel = new BMap.Label(" <a href='javascript:;'    onclick =\"next('" + GetReInfo_View[i].CommunityID + "')\"  onmouseenter =\"addZindex(this)\"  > <div class='single_price'  id='pShowB'   ><p><span class='single_price_num'><label>" + GetReInfo_View[i].AveragePrice + "</label>万</span><span class='single_name_num'  id='pShowA' >  " + GetReInfo_View[i].CommunityName + "<label> " + GetReInfo_View[i].DZCount + "</label>套</span></p><em></em></div> </a>",
                {
                    offset: new BMap.Size(0, 0), position: point
                });                           //label的偏移量，为了让label的中心显示在点上        //label的位置         
            VillageLabel.setStyle({
                "border": "0",
                "padding": "0"
            });
        }

        if (GetReInfo_View[i].AveragePrice != "0.00") {

            var result = BMapLib.GeoUtils.isPointInRect(point, map.getBounds());
            if (result == true) {

                map.addOverlay(VillageLabel); //把label添加到地图上                
            }
        }

        VillageLabel1[i] = VillageLabel;
    }
    $("#LBLZidndex").closest('label').css('z-index', 9999);
}

/*----------添加放缩控件----“+”---------*/
// 定义一个控件类，即function   
function ZoomControl() {
    // 设置默认停靠位置和偏移量   
    this.defaultAnchor = BMAP_ANCHOR_BOTTOM_LEFT;
    this.defaultOffset = new BMap.Size(190, 10);
}
// 通过JavaScript的prototype属性继承于BMap.Control   
ZoomControl.prototype = new BMap.Control();

// 自定义控件必须实现自己的initialize方法，并且将控件的DOM元素返回   
// 在本方法中创建个div元素作为控件的容器，并将其添加到地图容器中   
ZoomControl.prototype.initialize = function (map) {

    // 创建一个DOM元素   
    var div = document.createElement("div");
    // 添加文字说明   
    div.appendChild(document.createTextNode("+"));
    // 设置样式   
    div.style.cursor = "pointer";
    div.style.boxShadow = "0 0 3px #ccc";
    div.style.background = "url('/Skin/img/list_left_tab.png')";
    div.style.width = "30px";
    div.style.height = "30px";
    div.style.lineHeight = "26px";
    div.style.textAlign = 'center';
    div.style.color = '#ccc';
    div.style.fontSize = '30px';
    div.onmouseover = function (e) {
        div.style.color = '#f56140';
    }
    div.onmouseout = function (e) {
        div.style.color = '#ccc';
    }

    // 绑定事件，点击一次放大两级   
    div.onclick = function (e) {
        map.zoomTo(map.getZoom() + 1);

        if (bj == 0) {
            ZoomJB(e, 0);
        }
    }
    // 添加DOM元素到地图中   
    map.getContainer().appendChild(div);
    // 将DOM元素返回   
    return div;
}

// 创建控件   
var myZoomCtrl = new ZoomControl();
// 添加到地图当中   
map.addControl(myZoomCtrl);

/*----------添加放缩控件----“-”---------*/
// 定义一个控件类，即function   
function ZoomControlD() {
    // 设置默认停靠位置和偏移量   
    this.defaultAnchor = BMAP_ANCHOR_BOTTOM_LEFT;
    this.defaultOffset = new BMap.Size(220, 10);
}
// 通过JavaScript的prototype属性继承于BMap.Control   
ZoomControlD.prototype = new BMap.Control();

// 自定义控件必须实现自己的initialize方法，并且将控件的DOM元素返回   
// 在本方法中创建个div元素作为控件的容器，并将其添加到地图容器中   
ZoomControlD.prototype.initialize = function (map) {

    // 创建一个DOM元素   
    var div = document.createElement("div");
    // 添加文字说明   
    div.appendChild(document.createTextNode("－"));
    // 设置样式   
    // 设置样式   
    div.style.cursor = "pointer";
    div.style.boxShadow = "0 0 3px #ccc";
    div.style.background = "url('/Skin/img/list_left_tab.png')";
    div.style.width = "30px";
    div.style.height = "30px";
    div.style.lineHeight = "26px";
    div.style.textAlign = 'center';
    div.style.color = '#ccc';
    div.style.fontSize = '30px';
    div.onmouseover = function (e) {
        div.style.color = '#f56140';
    }
    div.onmouseout = function (e) {
        div.style.color = '#ccc';
    }

    // 绑定事件，点击一次放大两级   
    div.onclick = function (e) {
        map.zoomTo(map.getZoom() - 1);
        if (bj == 0) {
            ZoomJB(e, 1);
        }
    }
    // 添加DOM元素到地图中   
    map.getContainer().appendChild(div);
    // 将DOM元素返回   
    return div;
}

// 创建控件   
var myZoomCtrl = new ZoomControlD();
// 添加到地图当中   
map.addControl(myZoomCtrl);

var iAVNo = "0";
var iAVONE = "0";

function ZoomJB(e, jb) {
    iAVONE = "0";

    mapLevel = map.getZoom();
    if (mapLevel == 16 && jb == 0) {
        removeGroundOverlay();
        loadMapInfo();
        iAVNo = "0";
    }
    else if (mapLevel <= 15 && jb == 1) {
        if (iAVNo == "0") {
            removeGroundOverlay();
            Areashows();
            iAVNo = "1";
        }
    }
    //alert('点击坐标: ' + e.point.lng + ', ' + e.point.lat);
}

/*--------clickHandler-----------添加地图点击事件----------------*/

//判断级别显示小区，或者判断是否点击区域，显示对应级别的小区信息,(级别大于等级17，即小于等200米，或点击大区，级别缩小到17，显示小区，定位大区中心坐标)
var clickHandler = function (e) {

    mapLevel = map.getZoom();

    if (mapLevel != "16") {
        clickType = 1;

        if (RE_ID != "") {
            clickREid = RE_ID;
        }
    }

    if (clickType == 2 && gz == "16") {
        iAVNo = "0";

        if (clickTypePT != 2) {
            removeGroundOverlay();
            //Villageshows(10, "0");
        }
        return;
    }

    if (mapLevel >= 16 && iAVONE == "0") {
        removeGroundOverlay();
        //Villageshows(1, "0");
        iAVNo = "0";
        iAVONE = "0";
    }
    else if (mapLevel <= 15) {
        if (iAVNo == "0") {
            removeGroundOverlay();
            Areashows();

            iAVNo = "1";
            iAVONE = "0";
        }
    }

    clickType = 1;
    clickTypePT = 1;
}
var bounds;
var reJson = "";
var loadMapInfo = function () {
    mapLevel = map.getZoom();
    if (mapLevel >= 16) {
        bounds = map.getBounds();
        var southWestLNG = bounds.getSouthWest().lng;
        var southWestLAT = bounds.getSouthWest().lat;
        var northEastLNG = bounds.getNorthEast().lng;
        var northEastLAT = bounds.getNorthEast().lat;

        $.ajax({
            type: "GET",
            url: '/Service/HouseRentCycle.ashx',
            async: true,
            cache: false,
            data: { "v": new Date().getTime(), "Type": "getGardenList", "SouthWestLNG": southWestLNG, "SouthWestLAT": southWestLAT, "NorthEastLNG": northEastLNG, "NorthEastLAT": northEastLAT },
            success: function (result) {
                var res = eval("(" + result + ")");

                reJson = res;
                Villageshows1(res);
            },
            error: function (err, e, a) {
                // args.error(err, e, a)
            }
        })

    }
    else {
        Areashows();
    }
}


$('#btnSubmit').live('click', function () {
    //调用单击确定事件
    getHouseList();
});




