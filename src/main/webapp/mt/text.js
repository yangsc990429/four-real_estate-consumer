// song
function text(This, val) {
    var sVal;
    if (val && This.value == val) {
        This.value = '';
        This.style.color = '#555';
    } else if (!This.value) {
        sVal = val;
        This.value = sVal;
        This.removeAttribute('style');
    }
}
//模拟多选
//function check(This) {
//    $(This).toggleClass('checked');
//}

function check(This) {

    if ($(This).closest('table').find('thead').find('.checkBox_qx').length == 1) {
        if ($(This).closest('thead').length >= 1) {
            var $aCheck = $(This).closest('table').find('tbody .checkBox');
            if (!$(This).hasClass('checked')) {
                $aCheck.each(function (i) {
                    if (!$(this).hasClass('checked')) {
                        $(this).addClass('checked');
                    }
                })
            } else {
                $aCheck.each(function (i) {
                    $(this).removeClass('checked');
                })
            }
        } else {
            if ($(This).hasClass('checked')) {
                $(This).closest('table').find('thead').find('.checkBox').removeClass('checked');
            } else {
                $(This).toggleClass('checked');
                if ($(This).closest('table').find('tbody').find('.checked').length == $(This).closest('table').find('tbody').find('.checkBox').length) {
                    $(This).closest('table').find('thead').find('.checkBox').addClass('checked');
                }
                return false;
            }
        }
    }

    $(This).toggleClass('checked');
}

$(function () {
    //radioControl();
    //selectControl();
})
//模拟单选
function radioControl() {
    $('.radio em').click(function () {
        $(this).parent().children().each(function (index) {
            $(this).removeClass('radioed');
        })
        $(this).toggleClass('radioed');
    })
}
//模拟下拉框
function selectControl() {
    $('.selectTit').click(function () {
        if ($(this).next().css('display') == 'block') {
            $(this).next().css('display', 'none');
            return false;
        }
        $('.selectTit').each(function (index) {
            if ($('.selectTit').eq(index).next().css('display') == 'block') {
                $('.selectTit').eq(index).next().css('display', 'none');
            }
        })
        $(this).next().css('display', 'block');
        return false;
    })
    $('.select .selectCont li').click(function () {
        $(this).parent().prev().html($(this).html());
        $(this).parent().prev().attr("value", $(this).attr("vid"));
        $(this).parent().css('display', 'none');
        return false;
    })
    $(document).click(function () {
        $('.select .selectCont').css('display', 'none');
    })
   
    $('.select .selectCont li').mouseover(function () {
      
        $(this).css({ 'background': '#f78166', 'color': '#fff' });
    })
    $('.select .selectCont li').mouseout(function () {
     
        $(this).parent().children().css({ 'background': '#fff', 'color': '#6c6c6c' });
    })
}

