var mainLayout, zTreeMenu;
var menuStatus = {
	firstMenuId : null,
	leafMenuId : null,
	leafMenuUrl : null
};

$(function() {
	var isLocalOrDevelop = isLocalOrDevelopHost(window.location.host);
	var isAutoConfigBoardManeger = $('#AUTO_CONFIG_BOARD_MANEGER').val();
	if(isLocalOrDevelop && isAutoConfigBoardManeger == 'true'){
		$('#LI_AUTO_CONF_BOARD').show();
	}else{
		$('#LI_AUTO_CONF_BOARD').hide();
	}
	setAjaxLoading(false);
	 $.ajax({
		 type: "GET",
	     dataType: 'json',
	     data: {},
	     url: getAjaxUrl('home',"queryMakePatchTotolInfo"),
	     success:function(data){
	    	if(data){
	    		$('#USERCOUNTS').append(data.USERCOUNTS);
	    		$('#ALLCOUNTS').append(data.ALLCOUNTS);
	    		$('#DAYCOUNTS').append(data.DAYCOUNTS);
	    		$('#PROJECTCOUNTS').append(data.PROJECTCOUNTS);
	    		$('#PROJECTMAKETOTALS').append(data.PROJECTMAKETOTALS);
	    	}
	     }
	 });
	if($('#ROLE').val()=="true"){
		$('#disposePatchID').show();
	}else{
		$('#disposePatchID').hide();
	}; 
	
});

function openHelpDoc(){
	window.open("home/toHelp");
}

function redirectByMenu(menuId,  menuUrl){
			menuStatus.leafMenuUrl = menuUrl;
			menuStatus.leafMenuId = menuId;
			//setMenuStatus();
			
			if(null != menuUrl && menuUrl != "" &&menuUrl != "null" ){
			  loadFrame("home", menuUrl, false);
			}
		return false;
}



function redirectHomeIndex(){
	window.localStorage.lasturl="";
	redirectByMenu('home','home/toIndex');
}


/**
 * 保存菜单状态到cookies
 */
function setMenuStatus() {
	$.cookie("HOME_MENU_STATUS", JSON2.stringify(menuStatus), {
		expires : 0,
		path : '/'
	});
}

$(function() {
	var menuBarWidth=$('#DIV_NAVBAR_MENU').width();
	var tmpWidth=(menuBarWidth-226-678-287)*0.85+'px';
	$('#DIV_SEARCH').attr('style','width: '+tmpWidth);
});
