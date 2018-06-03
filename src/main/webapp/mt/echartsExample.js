var echarts;
var myChart;
var curTheme ="macarons";
var domMain = document.getElementById('Charts');
var isExampleLaunched;
require.config({
	paths: {
	    echarts: '../../Skin/echarts/js'
	}
});

function requireCallback (ec, defaultTheme) {
    echarts = ec;
    refresh();
    window.onresize = myChart.resize;
}
	
function refresh(isBtnRefresh){
    if (myChart && myChart.dispose) {
        myChart.dispose();
    }
    myChart = echarts.init(domMain, curTheme);
    window.onresize = myChart.resize;
    
    myChart.setOption(option, true)
}
	
function launchExample() {
    if (isExampleLaunched) {
        return;
    }

    // 按需加载
    isExampleLaunched = 1;
    require(
        [
            'echarts',
            'echarts/chart/line',
            'echarts/chart/bar',
            'echarts/chart/pie'
        ],
        requireCallback
    );
}