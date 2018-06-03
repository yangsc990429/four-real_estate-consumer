/*
 * 通用数据表格视图
 * CodeBy:Zhongke
 * Date:2013/11/12
 * LastDate:2014/07/09
 * Version:2.0
 */
(function (win) {
    /*
     * 数据表格视图对象
     * @opts 数据参数对象,包含设置的分页，数据源，列样式等等
     */
    var _Pager = function (opts) {
        //初始化数据表格基本参数设置
        this.settings = $.extend({
            container: $('body'),
            //ID
            id: 'pg' + parseInt(100000000 * Math.random()),
            //页码 从1开始
            pageIndex: 1,
            //每页10条记录
            pageCount: 10,
            //数据 总数
            dataCount: 0

            //, pageClickEvent: function (index, grid) {
            //    //
            //}
        }, opts);

        //页数
        this.pageNum = Math.ceil(parseFloat(this.settings.dataCount) / parseFloat(this.settings.pageCount));
    }

    /*
     * 表格视图分页
     */
    _Pager.prototype.DataPager = function () {

        var _this = this,
            _$pg = $('#' + _this.settings.id),
            _pageIndex = _this.settings.pageIndex,
            _pageCount = _this.settings.pageCount,
            _dataCount = _this.settings.dataCount;

        var _pagerHtml = '<div class="paging clearfix">';
        _pagerHtml += '<a href="javascript:void(0);" class="up_page" action="home"><i class="mai-ico"></i>首页</a>&nbsp;&nbsp;'
        _pagerHtml += '<a href="javascript:void(0);" class="up_page" action="prev"><i class="mai-ico"></i>上一页</a>&nbsp;&nbsp;'
        //中间数字部分
        if (_pageIndex >= 3) {
            if (_pageIndex > 3) {
                _pagerHtml += '<span action="before">...</span>'
            }
            _pagerHtml += '<a href="javascript:void(0);" class="on" action="num">' + (_pageIndex - 2) + '</a> &nbsp;&nbsp;'
            _pagerHtml += '<a href="javascript:void(0);" action="num">' + (_pageIndex - 1) + '</a> &nbsp;&nbsp;'
            
        }
        else if (_pageIndex == 2) {
            _pagerHtml += '<a href="javascript:void(0);" action="num">' + (_pageIndex - 1) + '</a> &nbsp;&nbsp;'
        }
        _pagerHtml += '<a href="javascript:void(0);" class="on" action="num">' + _pageIndex + '</a> &nbsp;&nbsp;'

        if (_pageIndex >= 3) {
            if (this.pageNum > _pageIndex + 2) {
                _pagerHtml += '<a href="javascript:void(0);" class="on" action="num">' + (_pageIndex + 1) + '</a> &nbsp;&nbsp;'
                _pagerHtml += '<a href="javascript:void(0);" action="num">' + (_pageIndex + 2) + '</a> &nbsp;&nbsp;'
                _pagerHtml += '<span action="after">...</span>'
            }
            else if (this.pageNum == _pageIndex + 2) {
                _pagerHtml += '<a href="javascript:void(0);" action="num">' + (_pageIndex + 1) + '</a> &nbsp;&nbsp;'
                _pagerHtml += '<a href="javascript:void(0);" action="num">' + (_pageIndex + 2) + '</a> &nbsp;&nbsp;'
            }
            else if (this.pageNum == _pageIndex + 1) {
                _pagerHtml += '<a href="javascript:void(0);" action="num">' + (_pageIndex + 1) + '</a> &nbsp;&nbsp;'
            }
        }
        else {
            var maxloop = (5 - _pageIndex);
            for (var i = 1; i <= maxloop; i++) {
                _pagerHtml += '<a href="javascript:void(0);" action="num">' + (_pageIndex + i) + '</a> &nbsp;&nbsp;'
            }
            if (this.pageNum > _pageIndex + 4) {
                _pagerHtml += '<span action="after">...</span>'
            }
        }
        _pagerHtml += '<a href="javascript:void(0);" class="down_page" action="next">下一页<i class="mai-ico"></i></a> &nbsp;&nbsp;'
        _pagerHtml += '<a href="javascript:void(0);" class="down_page" action="last">尾页<i class="mai-ico"></i></a> &nbsp;&nbsp;'
        _pagerHtml += '</div>';

        _$pg.html(_pagerHtml);

        //分页点击事件
        _$pg.children('div').find('a').bind('click', function (e) {
            if (e.target.nodeName.toLowerCase() == 'a') {
                var _action = $(e.target).attr('action');
                switch (_action) {
                    case 'home':
                        _pageIndex = 1;
                        break;
                    case 'prev':
                        if (_pageIndex == 1) {
                            alert('温馨提示：已经是第一页了!');
                            return;
                        }
                        _pageIndex--;
                        break;
                    case 'next':
                        if (_pages.index == _pageCount) {
                            alert('温馨提示：已经是最后一页了！');
                            return;
                        }
                        _pageIndex++;
                        break;
                    case 'last':
                        _pageIndex = _pageCount;
                        break;
                    case 'num':
                        _pageIndex = $(this).html();
                        break;
                    default:
                        return;
                }
                alert(_pageIndex);
                _this.settings.pageClickEvent(_pageIndex, _this);
            }
        });

        _$pg.children('div').find('span').bind('click', function (e) {
            if (e.target.nodeName.toLowerCase() == 'a') {
                var _action = $(e.target).attr('action');
                switch (_action) {
                    case 'before':
                        if (_pageIndex - 3 < 1) {
                            _pageIndex = 1;
                        } else {
                            _pageIndex = _pageIndex - 3;
                        }
                        break;
                    case 'after':
                        if (_pageIndex + 3 > this.pageNum) {
                            _pageIndex = this.pageNum;
                        } else {
                            _pageIndex = _pageIndex + 3;
                        }
                        break;
                    default:
                        return;
                }
                _this.settings.pageClickEvent(_pageIndex, _this);
            }
        });

        return _this;
    }

    /*
     * 初始化表格视图
     */
    _Pager.prototype.Init = function () {
        return this.DataPager();
    }

    /*
     * 插件初始化入口
     */
    win.Pager = function (opts) {
        
        var _pager = new _Pager(opts).Init();
        return _pager;
    };
})(window);