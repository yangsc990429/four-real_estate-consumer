
//表情配置信息
var emojiIOS = { "😊": { file: "ee_1.png" }, "😃": { file: "ee_2.png" }, "😉": { file: "ee_3.png" }, "😮": { file: "ee_4.png" }, "😋": { file: "ee_5.png" }, "😎": { file: "ee_6.png" }, "😡": { file: "ee_7.png" }, "😖": { file: "ee_8.png" }, "😳": { file: "ee_9.png" }, "😞": { file: "ee_10.png" }, "😭": { file: "ee_11.png" }, "😐": { file: "ee_18.png" }, "😇": { file: "ee_13.png" }, "😬": { file: "ee_14.png" }, "😆": { file: "ee_15.png" }, "😱": { file: "ee_16.png" }, "🎅": { file: "ee_12.png" }, "😴": { file: "ee_17.png" }, "😕": { file: "ee_19.png" }, "😷": { file: "ee_20.png" }, "😯": { file: "ee_22.png" }, "😏": { file: "ee_21.png" }, "😑": { file: "ee_23.png" }, "💖": { file: "ee_24.png" }, "💔": { file: "ee_25.png" }, "🌙": { file: "ee_26.png" }, "🌟": { file: "ee_27.png" }, "🌞": { file: "ee_28.png" }, "🌈": { file: "ee_29.png" }, "😍": { file: "ee_30.png" }, "😚": { file: "ee_31.png" }, "💋": { file: "ee_32.png" }, "🌹": { file: "ee_33.png" }, "🍂": { file: "ee_34.png" }, "👍": { file: "ee_35.png" } };
//环信表情路径
var emboEmoji = { '[):]': 'ee_1.png', '[:D]': 'ee_2.png', '[;)]': 'ee_3.png', '[:-o]': 'ee_4.png', '[:p]': 'ee_5.png', '[(H)]': 'ee_6.png', '[:@]': 'ee_7.png', '[:s]': 'ee_8.png', '[:$]': 'ee_9.png', '[:(]': 'ee_10.png', '[:\'(]': 'ee_11.png', '[:|]': 'ee_18.png', '[(a)]': 'ee_13.png', '[8o|]': 'ee_14.png', '[8-|]': 'ee_15.png', '[+o(]': 'ee_16.png', '[<o)]': 'ee_12.png', '[|-)]': 'ee_17.png', '[*-)]': 'ee_19.png', '[:-#]': 'ee_20.png', '[:-*]': 'ee_22.png', '[^o)]': 'ee_21.png', '[8-)]': 'ee_23.png', '[(|)]': 'ee_24.png', '[(u)]': 'ee_25.png', '[(S)]': 'ee_26.png', '[(*)]': 'ee_27.png', '[(#)]': 'ee_28.png', '[(R)]': 'ee_29.png', '[({)]': 'ee_30.png', '[(})]': 'ee_31.png', '[(k)]': 'ee_32.png', '[(F)]': 'ee_33.png', '[(W)]': 'ee_34.png', '[(D)]': 'ee_35.png' };
/**
* 通过正则替换掉文本消息中的emoji表情
* @param text：文本消息内容
*/
function buildEmoji(text) {
    var result = {};
    result.text = text;
    result.haveEmoji = false;
    var yMsgLength = text.length;
    //1、标签表情替换
    var re = /\[([^\]\[]*)\]/g;
    var matches = text.match(re) || [];
    for (var j = 0, len = matches.length; j < len; ++j) {
       if(emboEmoji[matches[j]]) {
            //环信表情包替换
            text = text.replace(matches[j], '<img width="20" height="20" src="/Skin/images/faces/' + emboEmoji[matches[j]] + '" />');
            result.text = text;
        }
    }
    //2、表情替换成图片(iOS发送的表情低版本浏览器表情变灰)
    $.each(emojiIOS, function (i, e) {
        text = text.replace(new RegExp(i, "gm"), '<img width="20" height="20" src="/Skin/images/faces/' + e.file + '" />');
        result.text = text;
    });
    if (result.text.length != yMsgLength) {
        result.haveEmoji = true;
    }
    return result;
}
/**
 * 判断是否是房源文本
 * @param {any} text 房源消息内容
 */
function isHouseMsg(text) {
    var reg = /^发送房源【([A-Za-z0-9]+)】$/;
    return reg.test(text);
}
//获取cookie对象键名称信息
function getCookies(key, name) {
    var arr = document.cookie.match(new RegExp("(^| )" + key + "=([^;]*)(;|$)"));
    if (arr != null) {
        arr = unescape(arr[2]).split('&');
        for (var x = 0; x < arr.length; x++) {
            if (arr[x].split('=')[0] == name) {
                return arr[x].split('=')[1];
            }
        }
    }
    return "";
}
//写入可控隐藏日志，上线时日志注销
function consoleLog() {
    //正式环境则关闭日志输出
    if (!IsOnLineOrTest) {
        console.log.apply(console, arguments);
    }
}


//时间戳转化成时间对象
function timeStampToDate(stamp) {
    return new Date(Number(stamp));
}

//时间戳转换成消息记录时间（时间戳为1970年1月1日到现在的毫秒值）
//今天 时:分:秒 ；昨天 时:分:秒 ；前天 时:分:秒 ；年月日 星期几 
function ConvertDateToStr(stamp) {
    var now = new Date(Number(stamp));
    var year = now.getFullYear(); //得到年份
    var month = now.getMonth();//得到月份
    var date = now.getDate();//得到日期
    var day = now.getDay();//得到周几
    var hour = now.getHours();//得到小时
    var minu = now.getMinutes();//得到分钟
    var sec = now.getSeconds();//得到秒
    var MS = now.getMilliseconds();//获取毫秒
    var week;
    month = month + 1;
    //if (month < 10) month = "0" + month;
    //if (date < 10) date = "0" + date;
    if (hour < 10) hour = "0" + hour;
    if (minu < 10) minu = "0" + minu;
    if (sec < 10) sec = "0" + sec;
    //if (MS < 100) MS = "0" + MS;
    var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
    week = arr_week[day];
    var time = "";
    //判断今天、昨天、前天
    var today = new Date();
    //获取现在早上(0晨0点0分)到现在的时间毫秒值
    var todayChaZhi = today.getHours() * 60 * 60 * 1000 + today.getMinutes() * 60 * 1000 + today.getSeconds() * 1000;//今天毫秒差值
    var zuotianChaZhi = todayChaZhi + 24 * 60 * 60 * 1000;//昨天毫秒差值
    var qiantianChaZhi = todayChaZhi + 2 * 24 * 60 * 60 * 1000;//前天毫秒差值
    var yizhouChaZhi = todayChaZhi + 6 * 24 * 60 * 60 * 1000;//一周差值，一周内的消息展示 星期几
    var chaZhi = today.getTime() - Number(stamp);//获取当前时间和给出时间戳的相差值
    if (chaZhi <= todayChaZhi) {
        //time = "今天 " + hour + ":" + minu + ":" + sec;
        time = hour + ":" + minu;
    }
    else if (todayChaZhi < chaZhi && chaZhi <= zuotianChaZhi) {
        time = "昨天 " + hour + ":" + minu;
    }
    //else if (zuotianChaZhi < chaZhi && chaZhi <= qiantianChaZhi) {
    //    time = "前天 " + hour + ":" + minu;
    //}
    else if (zuotianChaZhi < chaZhi && chaZhi <= yizhouChaZhi) {
        time = week + " " + hour + ":" + minu;
    } else {
        //time = year + "年" + month + "月" + date + "日" + " " + hour + ":" + minu + ":" + sec + " " + week;
        //1周内 周几
        time = year + "年" + month + "月" + date + "日" + " " + hour + ":" + minu;
    }
    return time;
}

//客户端流水日志上传服务器 注意：参数中不要有","号
function ClientLogToServer(DEVICEID, DEVICETYPE, LOGTYPE, CONTENT, EXTEND1, EXTEND2) {
    GLOBAL.DataStore.DataHandle.postData({
        url: GLOBAL.PageBase.ServiceURL,
        handler: 'ClientUnityLog_perm',
        parame: '{fucid:"RequestHandler",data:"' + DEVICEID + ',' + DEVICETYPE +',' + LOGTYPE +',' + CONTENT +',' + EXTEND1 +',' + EXTEND2 + '"} ',
        success: function (result) {
            consoleLog("消息上传到服务器",result);
        },
        error:function(err,e,a){
            consoleLog("消息上传到服务器",err,e,a);
        }
    });
}
//判断云信SDK是否兼容浏览器版本
function GetNetSDKIsSupport() {
    var support = true;
    //SDK 兼容 IE8+(音视频部分为IE10及以上)、Edge、Chrome 58+、 Safari 10+、Firefox 54+等主流桌面版浏览器
    if ($.browser.mozilla && $.browser.version<= 54) {
        support = false; 
    } else if ($.browser.opera && $.browser.version <= 58) {
        //support = false;
    } else if ($.browser.chrome && $.browser.version <= 58) {
        support = false;
    } else if ($.browser.safari && $.browser.version <= 10) {
        support = false;
    } else if ($.browser.msie && $.browser.version <= 8) {
        support = false;
    }
    return support;
}
