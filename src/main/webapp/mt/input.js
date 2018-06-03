$(function () {
    //输入框placeholder
    $('.detelValue').focus(function () {
        if ($(this).val() == $(this).attr('v')) { $(this).val(''); $(this).css('color', '#000'); }
    })
    $('.detelValue').blur(function () {
        if ($(this).val() == '') { $(this).val($(this).attr('v')); $(this).css('color', '#999'); }
    })
    //select
    $('dl.selectBox').click(function () {
       
        var This = this;
        if ($(this).find('dd').eq(0).css('display') == 'none') {
            $('dl.selectBox').find('dd').css('display', 'none');
            $(this).find('dd').css('display', 'block');

        } else {
            $(this).find('dd').css('display', 'none');
        }
        $(this).find('dd').click(function () {
            $(This).find('dt').html($(this).html() + '<em></em>');
        })
        $(document).click(function () {
            $('dl.selectBox').find('dd').css('display', 'none');
        })
        return false;
    })


    //新增输入小区名称联想功能 2015.11.25
    //$('#searchBox').keydown(function () {
    //    var v = $(this).val();
    //    $(this).keyup(function () {
    //        if ($(this).val() != v && $(this).val() != '') {
    //            $('#SearchTips').css('display', 'block');

    //            var searchContent = $(this).val().trim();
    //            if (searchContent == "请输入小区名称") {
    //                searchContent = "";
    //            }
    //            if (searchContent.length > 0) {
    //                $('#SearchTips').html("");
    //                setTimeout(function () {
    //                    $.ajax({
    //                        type: "GET",
    //                        url: GLOBAL.PageBase.communityServiceURL,
    //                        data: { OperType: "SearchCommunity", RS: searchContent },
    //                        dataType: "html",
    //                        success: function (data) {
    //                            SearchResult = eval('(' + data + ')');
    //                            if (SearchResult.DataList.length > 0) {
    //                                var html = "";
    //                                for (var i = 0; i < SearchResult.DataList.length; i++) {
    //                                    var entity = eval('(' + SearchResult.DataList[i] + ')');
    //                                    html += '<li><a href="javascript:;" val="' + entity.AVERAGEPRICE + '">' + entity.GARDENNAME + '</a></li>';
    //                                }
    //                                $("#SearchTips").html(html);
    //                            }
    //                        }
    //                    });
    //                }, 300);
    //            }


    //        } else if ($(this).val() == '') {
    //            $('#SearchTips').css('display', 'none');
    //        }
    //    })
    //})
    $('#searchBox').blur(function () {
        
        $('#SearchTips').css('display', '');
    })
    $('#SearchTips').on("mousedown", "a", function () {
        $('#searchBox').val($(this).html());
        $("#ipt_Price").val($(this).attr("val"));
       $('#SearchTips').css('display', 'none');
        return false;
    })
})


