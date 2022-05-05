$(function() {
	resetOuter();
});

function resetOuter(){
	var iframeHeight = window.$('body').height();
	//div高度需要比内部iframe页面高，根据浏览器差异高度会有差异
	window.parent.$('#content').height(iframeHeight+30);
}