//02 搜索事件
function bindSearchEvent(getUrl) { 
    //上下键 选择事件
    $(document).keydown(function (event) {
        var upDownClickNum = $("#SearchTips .searchBackgroud").length;
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
        }
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

    //搜索框内容改变事件
    $('#ico-search').bind('input propertychange', function (event) {
        var $this = $(this);
        var SearchResult = "";
        var searchContent = $('#ico-search').val().trim();
        if (searchContent == "请输入小区名称、区域进行房源搜索" || searchContent == "请输入房产顾问姓名") {
            searchContent = "";
        }
        //console.log(getUrl);
        //console.log(searchContent);
        OperType = "SearchHouse"; 
        if (getUrl.indexOf("CommunityList.html") > -1 || getUrl.indexOf("HouseRentList.html") > -1 || getUrl.indexOf("HouseSecondList.html") > -1) {
            OperType = "SearchHouse";
        }
        if (getUrl.indexOf("BrokerList.html") > -1) {
            OperType = "SearchBroker";
        }
         
        if (searchContent.length > 0) {
            $('#SearchTips').html("");
            setTimeout(function () {
                $.ajax({
                    type: "GET",
                    url: GLOBAL.PageBase.ershoufangServiceURL, 
                    data: { OperType: OperType, curUrl: getUrl, RS: searchContent },
                    dataType: "html",
                    success: function (data) {
                        SearchResult = decodeURIComponent(data);
                        if (SearchResult != '{"result":"0"}') {
                            if (SearchResult != "") {
                                $('#SearchTips').html("");
                                $('#SearchTips').html(SearchResult);
                                bindSearchTipsStyle();
                                $('#SearchTips').show();
                            } else {
                                $('#SearchTips').hide();
                            }
                        }
                    }
                });
            }, 300);
        } else {
            hideSearchTips();
        }
    });

    //搜索框失去焦点事件
    $('#ico-search').blur(function () {
        hideSearchTips();
    });

    $('#ico-search').keyup(function () {
        var pattern = /[\*\#\$\!\~\&\^\@\\\/\%\$\?\,\.\~\，\。\、\【\】\{\}\[\]\+\-\<\>\》\《\=\ ]/g;
        var val = $(this).val();
        if (val != "" && pattern.test(val)) {
            $(this).val(val.replace(pattern, ""));
        }
    });

    $('#ico-search').focus(function () { 
        var cookieName;
        if (getUrl.indexOf("HouseSecondList.html") > -1) {
            cookieName = "righthisSearchHouseSecondCookie";
        }
        if (getUrl.indexOf("HouseRentList.html") > -1) {
            cookieName = "righthisSearchHouseRentCookie";
        }
        if (getUrl.indexOf("CommunityList.html") > -1) {
            cookieName = "righthisSearchCommunityCookie";
        }
        if (getUrl.indexOf("BrokerList.html") > -1) {
            cookieName = "righthisSearchBrokerListCookie";
        }
        //debugger;
        //$('#lishijilu').val("历史记录");
        //cookieName = "hisSearchTerm";
        //var json = eval(decodeURIComponent(GLOBAL.Cookie(cookieName)));
        var json = eval(decodeURIComponent(dataProxy.getItem(cookieName)));
        //如果有缓存，则取出遍历
        if (json != null && json.length > 0) {
            var content = "";

            content = "<li style=\"height:35px;line-height:34px;padding:0 4px;background:#fff;font-size:14px \">搜索历史    <a target=\"_blank\" style=\"display:inline-block;float:right;height:35px;line-height:34px;width:16%;cursor:pointer;background:none; \"  onclick=\"dataProxy.removeItem('" + cookieName + "')\" >清除历史记录 </a></li>";
            for (var i = 0; i < json.length; i++) {
                if (json[i].content.indexOf("/GID") > 0) {
                    var s = json[i].content.substring(json[i].content.indexOf("/GID"), json[i].content.length - json[i].content.indexOf("/GID") + 3);
                    json[i].content = json[i].content.replace(s, "");
                }
                content += "<li style=\"background:#fff\"><a style=\"background:none\" target=\"_blank\" href=" + json[i].url + " onclick=\"ga('send', 'event', 'zhanneisousuo', 'jiansuotiaojian', 'shangcizhaoxuntiaojian');\">" + json[i].content + "</a></li>";
            }
            $('#SearchTips').html("");
            if (content !== "") {
                $('#SearchTips').html("");
                $('#SearchTips').html(content);
                bindSearchTipsStyle();
                $('#SearchTips').show();
            } else {
                $('#SearchTips').hide();
            }


        } else {
            $('#lastSearchTerm').html("");
        }
        //createHistory(getUrl);
    });

    //搜索按钮单击事件
    $('#btSearch').live('click', function () {
        var con = $('#ico-search').val().trim();
        if (con.length > 100) {
            alert("您输入的搜索条件过长，请重新输入！");
            return;
        }
        console.log(con);
        con = con == "请输入小区名称、区域进行房源搜索" ? "" : con;
        con = encodeURIComponent(con);
        ga('send', 'pageview', getUrl + '/RS' + con);
        $('#ico-search').val('');
        //请求查询
        getUrl = GetPageUrl({ url: getUrl, param1: "rs=" + con });
        // debugger;
        window.location.href = getUrl;
    });
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

};
//隐藏提示列表
function hideSearchTips() {
    setTimeout(function () {
        $('#SearchTips').hide();
    }, 300);
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

//03 加载上次搜索条件
function LoadLastSearchTerm(getUrl) {
    //var json = eval(decodeURIComponent(GLOBAL.Cookie('hisSearchTerm')));
    var cookieName;
    if (getUrl.indexOf("HouseSecondList.html") > -1) {
        cookieName = "hisSearchHouseSecondCookie";
    }
    if (getUrl.indexOf("HouseRentList.html") > -1) {
        cookieName = "hisSearchHouseRentCookie";
    } 
    if (getUrl.indexOf("CommunityList.html") > -1) {
        cookieName = "hisSearchCommunityCookie";
    } 
    if (getUrl.indexOf("BrokerList.html") > -1) {
        cookieName = "hisSearchBrokerListCookie";
    }
    var json = eval(decodeURIComponent(dataProxy.getItem(cookieName)));
    //如果有缓存，则取出遍历
    if (json != null && json.length > 0) {
        $('#lastSearchTerm').html("[上次找寻条件:&nbsp;<a target=\"_blank\" href="
            + json[0].url
            + " onclick=\"ga('send', 'event', 'zhanneisousuo', 'jiansuotiaojian', 'shangcizhaoxuntiaojian');\">"
            + json[0].content + "</a>]");
    } else {
        $('#lastSearchTerm').html("");
    }
    createHistory(getUrl);
    createHistoryCookie(getUrl);
};
//上次找寻条件
function createHistory(getUrl) {
    var hisUrl = getUrl; //页面地址 
    var cookieName;
    if (getUrl.indexOf("HouseSecondList.html") > -1) {
        cookieName = "hisSearchHouseSecondCookie";
    }
    if (getUrl.indexOf("HouseRentList.html") > -1) {
        cookieName = "hisSearchHouseRentCookie";
    } 
    if (getUrl.indexOf("CommunityList.html") > -1) {
        cookieName = "hisSearchCommunityCookie";
    }
    if (getUrl.indexOf("BrokerList.html") > -1) {
        cookieName = "hisSearchBrokerListCookie";
    }
   // GLOBAL.Cookie("hisSearchTerm", "", { expires: -30, path: '/' });
    var hisContent = getSearchHouseTerm(getUrl);//搜索条件
    var hisContentVal = hisContent;
    if (hisContent.length == 0) {
        return;
    }
    var canAdd = true; //初始可以插入cookie信息 
    //var hisArt = eval(decodeURIComponent(GLOBAL.Cookie('hisSearchTerm')));
    var hisArt = eval(decodeURIComponent(dataProxy.getItem(cookieName)));
    var len = 0;
    //初始化长度
    if (hisArt) {
        len = hisArt.length;
    }
    //是否是重复访问
    var hisArt_json = hisArt;//eval(decodeURIComponent(GLOBAL.Cookie('hisSearchTerm')));
    var list = "";
    // GLOBAL.Cookie("hisSearchTerm", "", { expires: -30, path: '/' });
    if (hisArt_json != null && hisArt_json.length > 0) {
        //如果cookie中存在该页面访问过的记录，则不放入cookie
        if (hisUrl == hisArt[0].url) {
            canAdd = false;
            return;
        }
        for (var i = 0; i < hisArt_json.length; i++) {
            if (hisContentVal == hisArt[i].content.trim()) {
                canAdd = false;
                return;
            }
        }
    }
    //添加
    if (canAdd == true && hisContent!='') {
        var json = "[";
        var start = 0;
        var endJson = "]";
        //如果存放json数组长度大于5   改变start为 1 
        if (len > 5) { start = 0; }

        if (len == 5) {
            var content = hisContent;
            var url = hisUrl;
            //0 1 2 3 4 只记录最近访问的5个历史 
            for (var i = start; i < 5; i++) {
                if (i == len - 1) {
                    json = json + "{\"content\":\"" + content + "\",\"url\":\"" + url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"}";
                }
                else {
                    json = json + "{\"content\":\"" + content + "\",\"url\":\"" + url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"},";
                }
                content = hisArt[i].content;
                url = hisArt[i].url;
            }
        } else {
            //如果多了重新替换
            if (len > 0) {
                json = json + "{\"content\":\"" + hisContent + "\",\"url\":\"" + hisUrl + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"},";
            }
            else {
                json = json + "{\"content\":\"" + hisContent + "\",\"url\":\"" + hisUrl + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"}";

            }
            for (var i = start; i < len; i++) {
                if (i == len - 1) {
                    json = json + "{\"content\":\"" + hisArt[i].content + "\",\"url\":\"" + hisArt[i].url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"}";
                }
                else {
                    json = json + "{\"content\":\"" + hisArt[i].content + "\",\"url\":\"" + hisArt[i].url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"},";
                }
            }
        }
        json = json + endJson;
        /* 
        * 如果你有其他页面需要共享该cookie，则必须设置该cookie的作用域，否则获取不到。
        */ 
        //GLOBAL.Cookie("hisSearchTerm", encodeURIComponent(json), { expires: 30, path: '/' });
        dataProxy.setItem(cookieName, encodeURIComponent(json), 30);
    }
};

//创建Cookie【下拉cookie】
function createHistoryCookie(getUrl) {
    var urlcookie = getUrl;
    getUrl = decodeURI(getUrl);
    var hisUrl = GetPageUrl({ url: getUrl }); //页面地址 
    //GLOBAL.Cookie("hisSearchTerm", "", { expires: -30, path: '/' });
    var hisContent = getSearchHouseTerm(getUrl);//搜索条件

    if (hisContent.length == 0) {
        return;
    }

    var hisContent = '';
    if (getUrl.indexOf('&RS=') != -1) {
        hisContent = getUrl.substring(getUrl.indexOf('&RS=') + 4);
    }
    if (getUrl.indexOf('&RS=') != -1 && getUrl.indexOf('&N=') != -1) {
        hisContent = getUrl.substring(getUrl.indexOf('&RS=') + 4, getUrl.indexOf('&N='));
    }
    if (getUrl.indexOf('&rs=') != -1) {
        hisContent = getUrl.substring(getUrl.indexOf('&rs=') + 4);
    }
    if (hisContent.length == 0) {
        return;
    }
    var canAdd = true; //初始可以插入cookie信息 
    var len = 0;
    //初始化长度
    //删除历史记录
    //var hisArt_json = eval(decodeURIComponent(GLOBAL.Cookie('hisSearchTermCookie')));
    var cookieName;
    if (urlcookie.indexOf("HouseSecondList.html") > -1) {
        cookieName = "righthisSearchHouseSecondCookie";
    }
    if (urlcookie.indexOf("HouseRentList.html") > -1) {
        cookieName = "righthisSearchHouseRentCookie";
    } 
    if (urlcookie.indexOf("CommunityList.html") > -1) {
        cookieName = "righthisSearchCommunityCookie";
    } 
    if (urlcookie.indexOf("BrokerList.html") > -1) {
        cookieName = "righthisSearchBrokerListCookie";
    }
    var hisArt_json = eval(decodeURIComponent(dataProxy.getItem(cookieName)));
    var hisArt = new Array();
    var list = "";
    if (hisArt_json != null && hisArt_json.length > 0) {
        //如果cookie中存在该页面访问过的记录，则不放入cookie
        for (var i = 0; i < hisArt_json.length; i++) {
            if (hisContent != hisArt_json[i].content.trim()) {
                hisArt.push(hisArt_json[i]);
                //canAdd = false;
                //break;
            }
        }
    }
    if (hisArt) {
        len = hisArt.length;
    }
    //添加
    if (canAdd == true) {
        var json = "[";
        var start = 0;
        var endJson = "]";
        //如果存放json数组长度大于5   改变start为 1 
        if (len > 10) { start = 0; }
        var houseTerm_arry = hisContent.split('|');
        if (houseTerm_arry.length > 3) {//cookie存储历史 下拉只保留小区（不展示区域商圈）上次寻找条件展示区域商圈
            hisContent = houseTerm_arry[0];
        } else if (houseTerm_arry.length == 1) {//cookie存储历史 下拉只保留小区  上次寻找条件展示区域商圈
            hisContent = houseTerm_arry[0];
        } else if (houseTerm_arry.length == 3) {//cookie存储历史  下拉不展示区域商圈  上次寻找条件展示区域商圈
            hisContent = '';
        }
        if (hisContent!='') {
            if (len == 10) {
                var content = hisContent;
                var url = hisUrl;
                //0 1 2 3 4 只记录最近访问的5个历史 
                for (var i = start; i < 10; i++) {
                    if (i == len - 1) {
                        json = json + "{\"content\":\"" + content + "\",\"url\":\"" + url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"}";
                    }
                    else {
                        json = json + "{\"content\":\"" + content + "\",\"url\":\"" + url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"},";
                    }
                    content = hisArt[i].content;
                    url = hisArt[i].url;
                }
            } else {
                //如果多了重新替换
                if (len > 0) {
                    json = json + "{\"content\":\"" + hisContent + "\",\"url\":\"" + hisUrl + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"},";
                }
                else {
                    json = json + "{\"content\":\"" + hisContent + "\",\"url\":\"" + hisUrl + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"}";

                }
                for (var i = start; i < len; i++) {
                    if (i == len - 1) {
                        json = json + "{\"content\":\"" + hisArt[i].content + "\",\"url\":\"" + hisArt[i].url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"}";
                    }
                    else {
                        json = json + "{\"content\":\"" + hisArt[i].content + "\",\"url\":\"" + hisArt[i].url + "\",\"datetime\":\"" + new Date().format("yyyy-MM-dd HH:mm:ss") + "\"},";
                    }
                }
            }
            json = json + endJson;
        }
        
        /*
        *
        * 如果你有其他页面需要共享该cookie，则必须设置该cookie的作用域，否则获取不到。
        */

        //GLOBAL.Cookie("hisSearchTermCookie", encodeURIComponent(json), { expires: 30, path: '/' });
        dataProxy.setItem(cookieName, encodeURIComponent(json), 30);
    }
};

//04 保存搜房条件
function bindSaveHouseTermEvent(getUrl) {
    $('#SaveHouseTerm').live('click', function () {
        //返回当前搜索条件内容
        //保存当前搜房条件以及当前Url 将这两个值 传入后台保存
        var houseTerm = getSearchHouseTerm(getUrl);
        var MemberID = GLOBAL.Cookie("MemberID");

        if (!houseTerm) {
            alert('请选择要保存的搜房条件！');
            return;
        }

        if (!MemberID) {
            alert('请登录后重试！');
            location.href = GetPageUrl({ url: "/VIEW/Member/MemberLogin.html" });
            return;
        }
        GLOBAL.DataStore.DataHandle.postData({
            url: GLOBAL.PageBase.ServiceURL,
            handler: 'SaveCustomerInfo_perm',
            async: false,
            parame: '{fucid:"RequestHandler",data:"' + encodeURIComponent(encodeURIComponent(houseTerm)) + ',' + encodeURIComponent(encodeURIComponent(GetPageUrl({ url: getUrl }))) + '"} ',
            success: function (result) {
                addSavedSearch(result);
            }
        });
    });
};
//得到搜索条件项
function getSearchHouseTerm(getUrl) {
    var houseTerm = '';
    if (getUrl.toLocaleLowerCase().indexOf('cycle') > -1) {
        return getCycleSearchHouseTerm();
    } else {
        $('#SearchHouseTerm li span').each(function () {
            var reg = /[\u4e00-\u9fa5]/ig,
                str = reg.test();
            houseTerm += $(this).text() + " | ";
        });
        return houseTerm.substring(0, houseTerm.length - 2);
    }

};

//生活圈保存检索条件
function SaveSearchTerm(getUrl) {
    $('#SaveHouseTerm').click(function () {
        //返回当前搜索条件内容
        //保存当前搜房条件以及当前Url 将这两个值 传入后台保存
        var houseTerm = getCycleSearchHouseTerm();
        var MemberID = GLOBAL.Cookie("MemberID");

        if (!houseTerm) {
            alert('请选择要保存的搜房条件！');
            return;
        }

        if (!MemberID) {
            alert('请登录后重试！');
            location.href = GetPageUrl({ url: "/VIEW/Member/MemberLogin.html" });
            return;
        }
        GLOBAL.DataStore.DataHandle.postData({
            url: GLOBAL.PageBase.ServiceURL,
            handler: 'SaveCustomerInfo_perm',
            parame: '{fucid:"RequestHandler",data:"' + encodeURIComponent(encodeURIComponent(houseTerm)) + ',' + encodeURIComponent(encodeURIComponent(GetPageUrl({ url: getUrl }))) + '"} ',
            success: function (result) {
                addSavedSearch(result);
            }
        });

    });
}
function getCycleSearchHouseTerm() {
    var SearchPrice = $("#SearchPrice").html();
    var SearchArea = $("#SearchArea").html();
    var SearchLayout = $("#SearchLayout").html();
    var SearchFace = $("#SearchFace").html();
    var SearchTag = $("#SearchTag").html();
    var SearchTag_P = $("#SearchTag_P").html();
    var SearchTag_Z = $("#SearchTag_Z").html();
    //var PointKey = $("#suggestId").val();
    //var PointTime = $("#TimeConsuming").val();
    //var PointMode = $("input[name='TravelMode']:checked").val();

    var Keyword = $('#ico-search').val().trim();

    var Result = "";

    if (SearchPrice != "" && SearchPrice != "售价" && SearchPrice != undefined) {
        Result += SearchPrice + " | ";
    }
    if (SearchArea != "" && SearchArea != "面积" && SearchArea != undefined) {
        Result += SearchArea + " | ";
    }
    if (SearchLayout != "" && SearchLayout != "户型" && SearchLayout != undefined) {
        Result += SearchLayout + " | ";
    }
    if (SearchFace != "" && SearchFace != "朝向" && SearchFace != undefined) {
        Result += SearchFace + " | ";
    }
    if (SearchTag != "" && SearchTag != "卖点" && SearchTag != undefined) {
        Result += SearchTag + " | ";
    }
    if (SearchTag_P != "" && SearchTag_P != "配置" && SearchTag_P != undefined) {
        Result += SearchTag_P + " | ";
    }
    if (SearchTag_Z != "" && SearchTag_Z != "装修" && SearchTag_Z != undefined) {
        Result += SearchTag_Z + " | ";
    }
    //if (PointKey != "" && PointMode != "" && PointTime != "") {
    //    var Mode = "";
    //    switch (PointMode) {
    //        case "1":
    //            Mode = "公交";
    //            break;
    //        case "2":
    //            Mode = "自驾";
    //            break;
    //        case "3":
    //            Mode = "步行";
    //            break;
    //    }
    //    Result += "距 " + PointKey + " " + Mode + " 约 " + PointTime + " 分钟 | ";
    //}
    if (Keyword != "" && Keyword != "请输入房源所在区域或小区名称") {
        Result += Keyword + " | ";
    }

    if (Result != "") {
        Result = Result.substr(0, Result.length - 3);
    }

    return Result;
}

//添加刚保存的检索条件
function addSavedSearch(result) {
    if (result.status == 'repeat') {
        alert('保存条件重复,将重复的保存条件更改为最新！');
        return;
    }
    if (result.status == 'false') {
        alert('保存失败，请重试！');
        return;
    }
    $('#searchInfo').html('');
    $('#searchInfo').append('<li  class="red" name="searchItem">您还没有保存搜索条件，快去保存吧！（<label1 id="searchInfoCountli">{$SearchTermCount}</label1>）</li>');
    $('#searchInfo').append(result.data);
    var count = parseInt($('#searchInfoCount').text());
    if (!isNaN(count) && count != 5) {
        $('#searchInfoCount').text(count + 1);
        $('#searchInfoCountli').text(count + 1);
    }
    if (count == 5) {
        $('#searchInfoCountli').text(5);
    }
    alert('保存找房条件成功！');
    history.go(0);
}