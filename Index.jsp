<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../include/taglibs.jspf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<z:head charset="UTF-8" config="context:upload">
	<z:pagescript />
	<style>
a:link, a:visited, tr, td {
	color: #666666;
	font-size: 12px;
}
/*浮动机器人*/
#require {
	width: 160px;
	height: 180px;
	margin-left: 0px;
	text-align: right;
	background:
		url(component/img/robot.gif);
	cursor: pointer;
	z-index: 1000;
	top : 200px;
}

#require a {
	width: 160px;
	height: 180px;
	display: block;
}

.diy_1_2_1_C, .group_c_ce, .diy_hidden_r {
      position: relative;
      z-index:1;
}
.clearfix:after{
      content: ".";
      display: block;
      height: 0;
      clear: both;
      visibility: hidden;
}
.clearfix{
       zoom:1;
}

.t_content{
        width:880px; 
        height: 240px;
}

/* focus */
#focus{
       height:360px;
       border-radius:10px;
       overflow:hidden;
       position:relative;  
       left:0px;
       top:10px;
}
#focus ul{
       height:360px;
       position:absolute;
}
#focus ul li{
        float:left;
       height:360px; 
      
       overflow:hidden;
        position:relative;
}

#focus ul li div{
        position:absolute;
        overflow:hidden;
}
#focus .btnBg{
        position:absolute;
        width:100%;
        height:20px;
        left:0;bottom:0;
}
#focus .bth{
        position:absolute;
        width:100%;
        height:10px;
        padding:5px 10px;
        right:38%;
        bottom:20px;
        text-align:right;
}
#focus .bth span{
       display:inline-block;
       _display:inline;
       _zoom:1;
       width:12px;
       height:12px;
       _font-size:0;
       margin-left:12px;
       cursor:pointer;
       background-image:
url(http://3ms.huawei.com/hi/data/uploads//dm/hi3mse/uploads/2015/0729/14/55b8714cf02e4.png); 
       background-repeat:no-repeat;
       background-position:0 0;
}
#focus .preNext{
       width:30px;
       height:45px;
       position:absolute;
       top:160px;
       background:
url(http://hi3ms-image.huawei.com/hi/staticimages/hi3msf/images/2016/1123/15/583540e474cd3.png) no-repeat 0 0;
       cursor:pointer;
}
#focus .pre{
       left:20px;
}
#focus .next{
       right:20px;
       background-position:right top;
}
.mb10 {
  margin-bottom: 10px;
}
.alL {
  text-align: left;
}

.in-block {
  display: inline-block;
  vertical-align: middle;
}
.search-box {
  position: relative;
  display: block;
  vertical-align: top;
}
.search-box button {
  position: absolute;
  top: 3px;
  right: 4px;
  cursor: pointer;
  z-index: 1;
}
.icon-search {
  width: 24px;
  height: 24px;
  background: url(http://rnd-isourceb.huawei.com/assets/i5/icon/icon_search.png) center center no-repeat;
  display: inline-block;
}
.search-box label {
  width: 100%;
  display: block;
  line-height: normal;
}
button {
  border: 0 none;
}
</style>
</z:head>
<body class="bg_img">
	<div class="container-fluid">
		<div class="row-fluid">
			<div id="content">
				<div class="row-fluid">
						<div class="span12">
							<div id="" class="mb10 alL" >
								<div id="focus">
									<ul>
	
										<!--图片一开始-->
										<li><a target="_blank"
											href="http://3ms.huawei.com/hi/group/2984357/thread_5671087.html?mapId=7014687"><img
												data-original="component/img/banner.png" onload="showpicsize(this)"
												src="component/img/banner.png">
										</a></li>
	
										<!-- <li><a target="_blank"
											href="http://10.120.84.172/home/toMain"><img
												data-original="component/img/banner2.png" onload="showpicsize(this)"
												src="component/img/banner2.png">
										</a></li>  -->
										
									</ul>
								</div>
						   </div>
						</div>
					<div id="require" style="position: absolute;right:100px;">
					<a href="http://rnd-hirobot.huawei.com/rb/" target="_blank"></a>
				</div>
				
				<!-- <div class="row-fluid">
					<div class="span12">
						<form method="post"
									action="http://3ms.huawei.com/hi/?app=group&mod=search&act=iSearch"
									target="_blank">
									<div class="in-block" style="width:99%;margin: 20px 0 -10px 0;">
										<div class="search-box">
										<label>
										<input id="search_content" size="25" style="width: 100%;background-color: rgb(234, 234, 234);border-radius: 10px;" type="text" class="in_put l_input_search" placeholder="Search by title..."
													onblur="this.className='in_put l_input_search'"
													onfocus="this.className='in_put2 l_input_search'"
													name="keywords" id="group_search">
										</label>
										<button class="icon-search btn_sea l_btn_search" id="search_button" type="submit" ></button>
										<input type="hidden" name="gid" value="2984357" />  
										</div>
									</div>
									<input type="hidden" name="__hi3ms__[1496922200]"
										value="e397f7f6382303b89e2117499e427282"><input
										type="hidden" class="formTokenHidden"
										name="__hi3ms__[149697302374]"
										value="494b2b8f6dc4bf5c805a39212644f584">
						</form>
					</div>
				</div> -->
			
				
				<input id="patpath" type="hidden" value="${patpath }"/>
				<div class="row-fluid">
					<div class="span4">
						<div class="block">
							<div class="navbar navbar-inner block-header">
								<div class="muted pull-left">最新通报</div>
								<div class="pull-right">
									<a href="javascript:void(0);"
										onclick="parent.redirectByMenu('notice','notice/toNotice')"
										class="badge badge-info more-icons"
										style="background-color: #3a87ad;"><font
										style="color: #ffffff;">查看更多</font></a>
								</div>
							</div>
							<div class="block-content collapse in">
								<table class="table table-striped">
									<c:if test="${ ! empty publishRecord}">
										<c:forEach items="${publishRecord}" var="item"
											varStatus="status">
											<tr>
												<c:if test="${not empty item.TITLE}">
													<td>●</td>
												</c:if>
												<c:if test="${empty item.TITLE}">
													<td>&nbsp;&nbsp;</td>
												</c:if>
												<c:set var="title_var" value="${item.TITLE}"></c:set>
												<c:set var="title_length" value="${fn:length(title_var)}"></c:set>
												<c:set var="title_sub"
													value="${fn:substring(title_var,0,20)}.."></c:set>
												<td><a href="${item.URL}" target="_blank"
													title="${item.TITLE}">${title_length gt 20?title_sub:title_var}</a></td>
												<c:set var="str" value="${item.CREATE_DATE}"></c:set>
												<td style="text-align: right;">${fn:substring(str,0,10)}</td>
											</tr>
										</c:forEach>
									</c:if>
								</table>
							</div>
						</div>
					</div>

					<div class="span4">
						<div class="block">
							<div class="navbar navbar-inner block-header">
								<div class="muted pull-left">制作指导</div>
								<div class="pull-right">
									<a href="javascript:void(0);"
										onclick="parent.redirectByMenu('guide','guide/toGuide')"
										class="badge badge-info more-icons"
										style="background-color: #3a87ad;"><font
										style="color: #ffffff;">查看更多</font></a>
								</div>
							</div>
							<div class="block-content collapse in">
								<table class="table table-striped">
									<c:if test="${ ! empty makeGuide}">
										<c:forEach items="${ makeGuide}" var="item" varStatus="status">
											<tr>
												<c:if test="${not empty item.TITLE}">
													<td>●</td>
												</c:if>
												<c:if test="${empty item.TITLE}">
													<td>&nbsp;&nbsp;</td>
												</c:if>
												<c:set var="mg_title_var" value="${item.TITLE}"></c:set>
												<c:set var="mg_title_length"
													value="${fn:length(mg_title_var)}"></c:set>
												<c:set var="mg_title_sub"
													value="${fn:substring(mg_title_var,0,20)}.."></c:set>
												<td><a href="${item.URL}" target="_blank"
													title="${item.TITLE}">${mg_title_length gt 20?mg_title_sub:mg_title_var}</a></td>
												<c:set var="str" value="${item.CREATE_DATE}"></c:set>
												<td style="text-align: right;">${fn:substring(str,0,10)}</td>
											</tr>
										</c:forEach>
									</c:if>
								</table>
							</div>
						</div>
					</div>

					<div class="span4">
						<div class="block">
							<div class="navbar navbar-inner block-header">
								<div class="muted pull-left">常见问题</div>
								<div class="pull-right">
									<a class="badge badge-info more-icons"
										style="background-color: #3a87ad;" href="javascript:void(0);"
										onclick="parent.redirectByMenu('question','question/toQuestion')"><font
										style="color: #ffffff;">查看更多</font></a>
								</div>
							</div>
							<div class="block-content collapse in">
								<table class="table table-striped">
									<c:if test="${ ! empty problems}">
										<c:forEach items="${ problems}" var="item" varStatus="status">
											<tr>
												<c:if test="${not empty item.TITLE}">
													<td>●</td>
												</c:if>
												<c:if test="${empty item.TITLE}">
													<td>&nbsp;&nbsp;</td>
												</c:if>
												<c:set var="pb_title_var" value="${item.TITLE}"></c:set>
												<c:set var="pb_title_length"
													value="${fn:length(pb_title_var)}"></c:set>
												<c:set var="pb_title_sub"
													value="${fn:substring(pb_title_var,0,20)}.."></c:set>
												<td><a href="${item.URL}" target="_blank"
													title="${item.TITLE}">${pb_title_length gt 20?pb_title_sub:pb_title_var}</a></td>
												<c:set var="str" value="${item.CREATE_DATE}"></c:set>
												<td style="text-align: right;">${fn:substring(str,0,10)}</td>
											</tr>
										</c:forEach>
									</c:if>
								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="row-fluid">
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">统计</div>
							<div class="pull-right">
								<a class="badge badge-info more-icons"
									onclick="parent.redirectByMenu('statistics','statistics/statisticsDetail')">查看更多</a>
							</div>
						</div>
						<div class="block-content collapse in">
							<div class="span12 chart">
								<div id="hero-bar" style="height: 250px;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
