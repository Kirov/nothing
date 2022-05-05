
$(function() {
	// Morris Bar Chart
	var pam = {};
	setAjaxLoading(false);
	 $.ajax({
		 type: "GET",
	     dataType: 'json',
	     data: {SOURCE:"HOME"},
	     url: getAjaxUrl('statistics',"getStatisticsData"),
	     success:function(data){
	    	 new Morris.Bar({
	    	        element: 'hero-bar',
	    	        xkey: 'key',
	    	        data: data,
	    	        ykeys: ['success_value'],
	    	        labels: ['补丁数量'],
	    	        barRatio: 1,
	    	        xLabelMargin: 10,
	    	        hideHover: 'auto',
	    	        barColors: ["#3d88ba",'#f89406']
	    		 });
	     }
	 });
	 var flag = sessionStorage.getItem('path');//第一次登陆，flag为空
	 var path = $('#patpath').val();
	 if((path == null || path == undefined || path == "") && flag == null){
		 sessionStorage.setItem('path',1);
		 $confirm("推送路径未设置，前往“工具箱”进行设置？",function(){parent.redirectByMenu('tools','tools/toManagePath');},null,null);
	 }
	 
	 
	loadBannerImg();
	resetOuter();
});


function resetOuter(){
	var iframeHeight = window.$('body').height();
	//div高度需要比内部iframe页面高，根据浏览器差异高度会有差异
	window.parent.$('#content').height(iframeHeight+30);
}

var sWidth;
function loadBannerImg()
{
//	var sWidth = 1830; //获取焦点图的宽度（显示面积）
   sWidth = $("#focus").width()+80;
   var len = $("#focus ul li").length; //获取焦点图个数
   var index = 0;
   var picTimer;
	
	//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
	var bth = "<div class='btnBg'></div><div class='bth'>";
	for(var i=0; i < len; i++) {
		bth += "<span></span>";
	}
	bth += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
	$("#focus").append(bth);
	$("#focus .btnBg").css("opacity",0.8);

	//为小按钮添加鼠标滑入事件，以显示相应的内容
	$("#focus .bth span").css("opacity",0.4).mouseover(function() {
		index = $("#focus .bth span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseover");

	//上一页、下一页按钮透明度处理
	$("#focus .preNext").css("opacity",0.6).hover(function() {
		$(this).stop(true,false).animate({"opacity":"1"},300);
	},function() {
		$(this).stop(true,false).animate({"opacity":"0.6"},300);
	});

	//上一页按钮
	$("#focus .pre").click(function() {
		index -= 1;
		if(index == -1) {index = len - 1;}
		showPics(index);
	});

	//下一页按钮
	$("#focus .next").click(function() {
		index += 1;
		if(index == len) {index = 0;}
		showPics(index);
	});

	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$("#focus ul").css("width",sWidth * (len));
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$("#focus").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},3000); //此6000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position
		$("#focus .bth span").stop(true,false).animate({"opacity":"0.3"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果
	}
}

function showpicsize(img)
{
     // 设置img控件的样式的高宽属性值
     img.style.width = sWidth-30 +"px";
     img.style.height = 360 +"px";
}

