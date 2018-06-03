$(function () {
    $('.range_map ul li').click(function () {
        $(this).addClass('hit').siblings().removeClass('hit');
        $('.panes>div:eq(' + $(this).index() + ')').show().siblings().hide();
    })
    $('.range_mapa ul li').click(function () {
        $(this).addClass('hita').siblings().removeClass('hita');
        $('.panesa>div:eq(' + $(this).index() + ')').show().siblings().hide();
    })
    $('.range_mapb ul li').click(function () {
        $(this).addClass('hitb').siblings().removeClass('hitb');
        $('.panesb>div:eq(' + $(this).index() + ')').show().siblings().hide();
    })
    $('.all_font').hide();
    $('.pic').click(function () {
        var showOrHide = $($(this).parent().parent().parent().find('.font_part')).is(':visible');
        if (showOrHide == true) {
            $(this).parent().parent().parent().find('.font_part').hide();
            $(this).parent().parent().parent().find('.all_font').show();
        } else {
            $(this).parent().parent().parent().find('.all_font').hide();
            $(this).parent().parent().parent().find('.font_part').show();
        }
    })
    //$('#ico-search').focusin(function () {
    //    $(this).css('color', '#9c9c9c');
    //}).focusout(function () {
    //    $(this).css('color', '#9c9c9c');
    //});
    $('#ico-agent').focusin(function () {
        this.value = '';
        $(this).css('color', '#999');
    }).focusout(function () {
        this.value = '请输入经纪人姓名或小区名称';
        $(this).css('color', '#9c9c9c');
    });

    var FancyForm = function () {
        return {
            inputs: ".FancyForm input, .FancyForm textarea",
            setup: function () {
                var a = this;
                this.inputs = $(this.inputs);
                a.inputs.each(function () {
                    var c = $(this);
                    a.checkVal(c)
                });
                a.inputs.live("keyup blur", function () {
                    var c = $(this);
                    a.checkVal(c);
                });
            }, checkVal: function (a) {
                a.val().length > 0 ? a.parent("li").addClass("val") : a.parent("li").removeClass("val")
            }
        }
    }();

    $(document).ready(function () {
        FancyForm.setup();
    });

    var FancyF = function () {
        return {
            inputs: ".FancyF input, .FancyF textarea",
            setup: function () {
                var a = this;
                this.inputs = $(this.inputs);
                a.inputs.each(function () {
                    var c = $(this);
                    a.checkVal(c)
                });
                a.inputs.live("keyup blur", function () {
                    var c = $(this);
                    a.checkVal(c);
                });
            }, checkVal: function (a) {
                a.val().length > 0 ? a.parent("li").addClass("val") : a.parent("li").removeClass("val")
            }
        }
    }();

    $(document).ready(function () {
        FancyF.setup();
    });

    $('.big-link').click(function () {
        $('#myGallery').galleryView();
        $('.gv_galleryWrap').show();
    });
    $('.close-reveal-modal').click(function () {
        $('.gv_galleryWrap').hide();
    })

    $("#hide").click(function () {
        $(".revealbg").hide();
    });


    //
    $(document).ready(function (e) {
        //(function () {
        /* 自定义滚动条 */
        if ($(".filter_sel").length > 0) {
            $("header .filter_sel").find('a').on('click', function () { // 点击后下拉立即消失
                $(".filter_sel").css('display','none');
            })
            $(".header .filter_sel").find('a').on('click', function () { // 点击后下拉立即消失
                $(".filter_sel").css('display', 'none');
            })
            $(".filter_sel").mCustomScrollbar({
                theme: "minimal",
                autoDraggerLength: true
            });
        }
        //})();
        /* 模拟下拉框 */
        $('.selectBox').mouseenter(function () {
            $(this).children().filter('.selectCont').fadeIn(100);
        });
        $('.selectBox').mouseleave(function () {
            $(this).children().filter('.selectCont').fadeOut(80);
        })
        /*点击下拉选择地区*/
        //$('.selectCont ul li').live('click', function () {

        //    var _index = $(this).index(), // 获取索引
		//		_text = $(this).text();
        //    $(this).addClass('active').siblings('li').removeClass('active');
        //    $(this).parentsUntil('.selectCont').fadeOut(80); // 隐藏下拉框
        //    $(this).parentsUntil('.selectCont').children().filter('.show').text(_text);
        //});
        $('.selectCont ul li').live('click', function () {
            var _index = $(this).index(), // 获取索引
                _dataVal = $(this).attr("data-val"), 
                _dataKey = $(this).attr("data-key"),
				_text = $(this).text();
            $(this).addClass('active').siblings('li').removeClass('active');
            $(this).closest('.selectCont').fadeOut(80); // 隐藏下拉框
            $(this).closest('.selectCont').children().filter('.show').text(_text);
            $(this).closest('.filter_select').children().filter('.selectTit').text(_text);

            $(this).closest('.filter_select').children().filter('.selectTit').attr("title", _text);
            $(this).closest('.filter_select').children().filter('.selectTit').attr("data-val", _dataVal);
            $(this).closest('.filter_select').children().filter('.selectTit').attr("data-key", _dataKey);
        });

        /* 价格及面积区间输入后出现确定按钮 */
        $('.input_section').find('input').keyup(function () {
            if ($(this).attr('value') != '' && $(this).siblings().filter('input').attr('value') != '') {
                $(this).siblings().filter('button').css('display', 'inline-block');
            } else {
                $(this).siblings().filter('button').css('display', 'none');
            }

        })

        /* 模拟placeholder */
        $('.placeholder').focusin(function () {
            if ($(this).attr('value') == $(this).attr('v')) {
                $(this).attr('value', '');
            }
        }).focusout(function () {
            if ($(this).attr('value') == '') {
                $(this).attr('value', $(this).attr('v'));
            }
        })
    });

    /* 地图页列表展开收缩 */
    $('.indent_btn').click(function () {
        arguments.callee['indent_btn'] = !arguments.callee['indent_btn'];
        if (arguments.callee['indent_btn']) {
            $('.list_map').width('100%');
            $('.list_left').animate({ 'left': '-' + $('.list_left').width() }, 800, 'swing');
            $(this).animate({ 'left': -$(this).width() }, 825, 'swing', function () {
                $(this).children('em').addClass('right');
                $(this).animate({ 'left': '0px' }, 800, 'swing');
            })
        } else {
            $('.list_left').animate({ 'left': '0px' }, 800, 'swing');
            $(this).children('em').removeClass('right');
            $(this).animate({ 'left': $('.list_left').width() }, 800, 'swing', function () {
                $('.list_map').width($(document).width() - $('.list_left').width());
            });

        }
    })
})

