var url = window.location.href;
if (parent != window) {
	top.window.location = url;
}

function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

$(document).ready(function() {
	sessionStorage.removeItem('path');//删除推送目录提示标志，登陆后检查提示
	autoLogin();
	addPropertiesFile();
	
	var developingMainIP=$.i18n.prop('developingMainIP');
	if(developingMainIP == window.location.hostname){
		//在研版本服务器隐藏Developing按钮
//		$('#DevButton').hide();
//		$('#login-btn').attr('style',' height: 50px;width: 150px;font-size: 20px;margin: 0 0 10px 35px;font-weight:600;border-radius: 6px;');
      $('#login-btn').hide();
      $('#DevButton').attr('style',' height: 50px;width: 150px;font-size: 20px;font-weight:600;border-radius: 6px;float:right;margin-right:10px;');
     
//		$('#login-btn').attr('style',' height: 50px;width: 150px;font-size: 20px;margin: 0 0 10px 35px;font-weight:600;border-radius: 6px;');
	}
	
	var userNameDev=getQueryString('userNameDev');
	var passwordDev=getQueryString('passwordDev');
	if(userNameDev && passwordDev){
		
		
		// 进行用户名和密码验证
		$.ajax({
			url: "home/loginAuth",
			type: 'POST',
			data: {'userName': userNameDev, 'password': passwordDev},
			success: function(response){
				if (response.loginResult) 
				{
					if($('#rmbPW').is(':checked')){
						// 浏览器保存用户名和密码
						setCookie('rememberMe', true, 10);
						setCookie('username', userNameDev, 10);
						setCookie('password', passwordDev, 10);
					}else{
						deleteCookie();
					}	
					// 跳转至首页
					window.location.href = "home/toMain";	
				}else {
					var errorTips = $("#errorTips");
					errorTips.text('Your username or password is invalid!');
				}
			},
			error: function(){
				$alert('后台错误！');
			}
		});
	}
});

document.onkeydown = function(event){
		if(event && event.keyCode == 13 /*&& document.activeElement.name == 'password'*/){
			logIn();
		}
	};

	$('#login-btn').bind('click',function (){
		logIn();
	});

	$('#userName').focus(function(){
		$("#errorTips").text('');
	});

	$('#password').focus(function(){
		$("#errorTips").text('');
	});

	// 自动获取上次登录的账户及密码
	function autoLogin(){
		if(getCookie('rememberMe')){
			$('#rmbPW').attr("checked", true);
			$('#userName').val(getCookie('username'));
			$('#password').val(getCookie('password'));
		}
	}

	function logIn(){
		var name = $.trim($(".user-name input").val());
		var password = $(".user-password input").val();
		var errorTips = $("#errorTips");
		// 非空验证
		if(name == '' || name == null){
			errorTips.text('Please enter your username!');
		}
		if(password == '' || password == null){
			errorTips.text('Please enter your password!');
		}
		if((name == '' || name == null) && (password == '' || password == null)){
			errorTips.text('Please enter your username and password!');
		}
		if(name == '' || name == null || password == '' || password == null){
			return;
		}
		// 进行用户名和密码验证
		$.ajax({
			url: "home/loginAuth",
			type: 'POST',
			data: {'userName': name, 'password': password},
			success: function(response){
				if (response.loginResult) 
				{
					if($('#rmbPW').is(':checked')){
						// 浏览器保存用户名和密码
						setCookie('rememberMe', true, 10);
						setCookie('username', name, 10);
						setCookie('password', password, 10);
					}else{
						deleteCookie();
					}	
					// 跳转至首页
					window.location.href = "home/toMain";	
				}else {
					errorTips.text('Your username or password is invalid!');
				}
			},
			error: function(){
				$alert('后台错误！');
			}
		});
	}

	function setCookie(c_name,value,expiredays){
		var exdate = new Date();
		exdate.setDate(exdate.getDate()+expiredays);
		document.cookie = c_name + "=" + escape(value) + ((expiredays==null) ? "" : ";expires=" + exdate.toGMTString());
	}

	function getCookie(c_name){
		var c_start = 0;
		var c_end = 0;
		if(document.cookie.length > 0){
			c_start = document.cookie.indexOf(c_name + "=");
			if (c_start != -1){ 
				c_start = c_start + c_name.length + 1;
				c_end = document.cookie.indexOf(";",c_start);
				if (c_end == -1){
					c_end=document.cookie.length;
				}
				return unescape(document.cookie.substring(c_start,c_end));
			} 
		}
		return "";
	}
	
	function deleteCookie(){
		var exp = new Date();
		exp.setTime(exp.getTime() - 1);
		var cval = document.cookie;
		if (cval != null && cval != '') {
			document.cookie = cval + ';expires=' + exp.toUTCString();
		}
	}
	
	function fowordDeveloping(){
		var name = $.trim($(".user-name input").val());
		var password = $(".user-password input").val();
		var errorTips = $("#errorTips");
		// 非空验证
		if(name == '' || name == null){
			errorTips.text('Please enter your username!');
		}
		if(password == '' || password == null){
			errorTips.text('Please enter your password!');
		}
		if((name == '' || name == null) && (password == '' || password == null)){
			errorTips.text('Please enter your username and password!');
		}
		if(name == '' || name == null || password == '' || password == null){
			return;
		}
		
		var developingMainIP=$.i18n.prop('developingMainIP');
		var hostName = window.location.hostname;
		var count = 0;
		var ips = developingMainIP.split(",");
		
		for(var index=0; index<ips.length;index++){
			if(ips[index] == hostName){
				break;
			}else{
				count++;
			}
		}
		
		if(count == ips.length){
			var url='http://10.243.104.60/home/toLogin?userNameDev='+name+'&passwordDev='+encodeURIComponent(password);
			window.open(url);
		}else{
			window.location='http://10.243.104.60/home/toLogin?userNameDev='+name+'&passwordDev='+encodeURIComponent(password);
		}
	}
