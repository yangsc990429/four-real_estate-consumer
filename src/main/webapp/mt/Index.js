///*
//首页
//CodeBy:wangdingxu
//Date:2015.4.1
//*/
GLOBAL.Namespace('View.Index', function () {
    var _this = this,
        _pagebase = GLOBAL.PageBase,
        _dataHandle = GLOBAL.DataStore.DataHandle,
        currentUrl = "";

    _this.Init = function () {
        $(".city").mouseenter(function () {
            $(".city-down").stop().slideDown(60);
        });
        $(".city").mouseleave(function () {
            $(".city-down").stop().slideUp(30);
        });
        $(".city-down li").click(function () {
            $(this).addClass("active").siblings().removeClass("active");
        });

        $("#searchMenu ul li span").click(function () {
            var spanWidth = $(this).width();
            $(this).closest('ul').find('span').css({ 'font-weight': 'normal' });
            $(this).css({ 'font-weight': 'bold' });
            $(this).closest('ul').siblings(".triangle-icon").css("left", $(this).offset().left - $(this).closest('ul').offset().left + spanWidth / 2 - 9);
            if ($(this).text() == '找顾问') {
                $('#ico-search').attr('value', '');
                $('#ico-search').attr('placeholder', '请输入房产顾问姓名');
                $("#btSearch").val("开始搜索");
            } else {
                $('#ico-search').attr('value', '');
                $('#ico-search').attr('placeholder', '请输入小区名称、区域进行房源搜索');
                if ($(this).text() == '找小区') {
                    $("#btSearch").val("开始搜索");
                } else {
                    $("#btSearch").val("开始找房");
                }
            }
            keywordChange();
        });
        var houseCountTimer = null;
        clearInterval(houseCountTimer);
        houseCountTimer = setInterval(function () {
            houseCountMove();
        }, 4000);
        function houseCountMove() { 
            $('.house-count').find('ul').animate({
                marginTop: "-28px"
            }, 300, function () {
                $(this).css({ marginTop: "0" }).find("li:first").appendTo(this);
            })
        }
        $(document).on('scroll', function () {
            $(".header-fz").css('background-position-y', -$(document).scrollTop() / 4)
        })
        $('.hot-list-title li').on('mouseenter', function () {
            var curIndex = $(this).index();
            $(this).css({ 'color': '#fff' }).closest('.footer-left').find('.hot-list-wrap').eq(curIndex).show().siblings('.hot-list-wrap').hide();
            $(this).siblings().css({ 'color': '#888' })
        })
        $('.code-img i').on('click', function () {
            $('.code-img').css('display', 'none');
        })
        function IETester(userAgent) {
            var UA = userAgent || navigator.userAgent;
            if (/msie/i.test(UA)) {
                return UA.match(/msie (\d+\.\d+)/i)[1];
            } else if (~UA.toLowerCase().indexOf('trident') && ~UA.indexOf('rv')) {
                return UA.match(/rv:(\d+\.\d+)/)[1];
            }
            return false;
        }
        keywordChange();
        function keywordChange() {
            if (IETester() && IETester() < 10) {//如果是ie并且ie版本低于10.0
                var keyword = $('#ico-search').attr('placeholder');
                $('#ico-search').css('color', '#888').get(0).setAttribute('value', keyword);
                $('#ico-search').css('color', '#888').get(0).value = keyword;
                $('#ico-search').get(0).onfocus = function () {
                    var value = this.value;
                    if (value == keyword) {
                        $(this).css('color', '#333').get(0).value = '';
                    }
                }
                $('#ico-search').get(0).onblur = function () {
                    var value = $(this).get(0).value;
                    if (value == '' || value == keyword) {
                        $(this).css('color', '#888').get(0).value = keyword;
                    }
                }
            }
        }

        $("#zesf,#zzf,#zxq,#zgw").bind("click", function () { 
            var searchType = $(this).text(); 
            switch (searchType) {
                case "找顾问":
                    currentUrl = "/VIEW/Broker/BrokerList.html";
                    break;
                case "找二手房":
                    currentUrl = "/VIEW/HouseSecond/HouseSecondList.html"; 
                    break;
                case "找租房":
                    currentUrl = "/VIEW/HouseRent/HouseRentList.html"; 
                    break;
                case "找小区":
                    currentUrl = "/VIEW/Community/CommunityList.html";
                    break;
                default:
                    break;
            }
            $("#ico-search").unbind();
            $("#btSearch").die();  
            $(document).unbind("keydown");
            $(document).unbind("keypress");
            bindSearchEvent(currentUrl);
        });
        
        currentUrl = '/VIEW/HouseSecond/HouseSecondList.html'; 
        bindSearchEvent(currentUrl);
        
    };
});
