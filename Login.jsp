<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../include/taglibs.jspf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<z:head loadLib="false" charset="UTF-8">
<z:pagescript/>
<link rel="stylesheet" href="component/css/log.css"/>
<link rel="stylesheet" type="text/css" href="./pages/tools/tools.css"/>
<style>
		.log-body{
			width: 100%;
			height: 590px;
			color: #5b5b5b; 
			background: #ddd;
			position: absolute;
		}
		#login{
			height:341px;
			width: 400px;
			margin: 90px auto;
			border: 2px solid #ddd;
			border-radius: 6px;
			background: #fff;
		}
		#login .form-header, #login .form-body, #login .form-footer
		{
			padding: 10px 30px;
		}
		#userName, #password{
			width: 317px;
			height: 30px;
			border-radius: 6px;
			border: 1px solid #ccc;
			/* padding: 8px 12px 8px 38px; */
			margin-bottom: 20px;
			
		}
		#userName { 
			background-position: 5px 10px !important
		}
		#password {
			background-position: 5px -53px !important
		}
		#userName:focus, #password:focus{
			background-color: #fff;
		}
		#login-btn{
		    height: 50px;
			width: 95px;
			font-size: 14px;
			font-weight:600;
			border-radius: 6px;
			padding: 0px 8px;
		}
		#DevButton{
		    height: 50px;
			width: 95px;
			font-size: 14px;
			font-weight:600;
			border-radius: 6px;
			padding: 0px 8px;
		}
		#login .rmbPW{
			margin: 8px 0 10px 0;
			float: left;
		}
		#login .rmbPW label{
			font-size: 15px;
			font-weight: 150;
		}
		#login .form-footer{
			height: 40px;
			background: #f4f4f4;
			color: red;
			text-align: center;
			border-radius: 6px;
			boder: 2px solid #ddd;
		}
		.log-footer{
			width: 100%;
			height: 20px;
		}
		marquee{
			font-size: 18px;
			color: red;
			position: absolute;
			bottom: 10px;		
			left: 0;
		}
	</style>
</z:head>
<body>
	<div style="min-width: 1020px;" class="log-header">
		<div style="min-width: 1020px;padding-right: 0;" class="container">
			<span class="logo"></span><span style="font-size: 14px;">VRP补丁工具，用户登录</span>
		</div>
	</div>
	
	<div class="log-body">
		<div id="login">
			<form>
				<div class="form-header">
					<div class="login-tips">
						<h3>Login to our site</h3>
						<h5>Enter your username and password to log on:</h5>
					</div>
				</div>
				<div class="form-body">
					<div class="user-name">
						<input id="userName" type="text" name="userName" placeholder="Username..." />
					</div>
					<div class="user-password">
						<input id="password" type="password" name="password" placeholder="Password..." />
					</div>
					<div class="tooltips"  >
							<input type="button" id="login-btn" onclick="logIn();" name="button" class="btn btn-primary" value="LMT" width="160px"   style="width:150px;margin-right:13px" title="维护补丁制作:TR5/TR6有具体版本的补丁制作（大包，代码后台已经归档）"/>	
							<input type="button" id="DevButton" onclick="fowordDeveloping();" name="DevButton" class="btn btn-primary" value="Developing" style="width:150px;margin-left:13px" title="在研补丁制作:在研版本补丁或单个局点补丁制作（后台无大包，代码归档）" width="150px"/>			
					</div>
					<div class="rmbPW" >
							<input type="checkbox" id="rmbPW" />
							<label for="rmbPW" style="float:right;margin-right:100px">Keep me logged in</label>
					</div>
					
					<div class="tooltips" style= "clear:both">
						
					</div>
				
				</div>
				<div class="form-footer">
					<p id="errorTips"></p>
				</div>
			</form>
		</div>
		 <footer style="text-align: center;color: #777777;">
                <p>版权所有&nbsp;©&nbsp;华为技术有限公司&nbsp;2016-2018.&nbsp;保留一切权利</p>
         </footer>
	</div>
	 
</body>
</html>