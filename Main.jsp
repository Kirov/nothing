<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../include/taglibs.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<z:head loadLib="false" charset="UTF-8">
	<z:pagescript />
	<style>
.last_s {
	width: 420px;
	color: #fff;
	font-size: 12px;
}

a:link, a:visited{
	color: #333;
	text-decoration: none;
}

.last_s {
	padding-left: 68px;
}

.last_s {
	color: #fff;
}

#left .last_s {
	background: none;
	border: none;
	width: 300px;
}

.ddl {
	padding-left: 40px;
	line-height: 20px;
}

dd {
	margin-left: 0px
}

.headpic50 {
	line-height: normal;
}

.headpic50 img {
	line-height: normal;
	height: 49px;
	width: 49px;
	padding-right: 8px;
}

.last_s .diy_userlist {
	padding-left: 3px;
}

.diy_userlist {
	float: left;
	overflow: hidden;
	padding: 10px;
	display: inline-block;
	text-align: center;
}

.OverHW {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.lh18 {
	line-height: 22px;
}

.last_s .diy_userlist a {
	color: #fff;
}

.diy_userlist li {
	display: inline-block;
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
    <z:hidden id="ROLE" value="${role}"/>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div id="DIV_NAVBAR_MENU" class="container-fluid" style="${pd.getContext().getCmoType() eq null ? '':'background-color:pink;'}">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="home/toMain"><div class="logo"></div></a>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<i class="icon-volume-up" onclick="redirectByMenu('notice','notice/toNotice')"></i><span style="cursor: pointer;" onclick="redirectByMenu('notice','notice/toNotice')">通知</span>
						|&nbsp;
						<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4750315.html" target="_blank"><i class="icon-question-sign" style="margin-left:0px;margin-top:3px;"></i><span style="cursor: pointer;">帮助</span></a>
						|&nbsp;
						<i class="icon-user"></i><span title="${pd.getContext().getServerIP()}">${pd.getContext().getUserName()} &nbsp;${pd.getContext().getServerIP()}</span>
						|&nbsp;
						<i title="退出" class="icon-logout"
							onclick="return redirectTo('home/logout');" style="margin-left: 0px;margin-right: 0px;"> </i>
						<%-- <i>
							当前用户在线人数<%= application.getAttribute("numberCount") %><br/>
						</i> --%>
						<!-- 	<i title="帮助" class="icon-help" onclick="javascript:alert('help');">
						</i> -->
					</ul>
				</div>
				<ul class="nav">
					<li><a href="javascript:void(0);"
						onclick="redirectHomeIndex()">
							<div class="home menu-icon"></div>
							<div style="text-align: center">首页</div>
					</a></li>

					<z:hidden id="AUTO_CONFIG_BOARD_MANEGER" value="${AUTO_CONFIG_BOARD_MANEGER}" />

					<li name="li_top_menu" class="dropdown"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">
							<div class="menu-icon makePatch"></div>
							<div style="text-align: center">
								补丁制作
								<div style="float: right; margin-top: -4px">
									<b class="caret"></b>
								</div>
							</div> </a>
						<ul class="dropdown-menu" id="menu1" style="left: 23px;top: 60px;">
				              <li class="dropdown-submenu">
				                <a tabindex="-1" href="javascript:void(0);">V8补丁制作</a>
				                <ul class="dropdown-menu">
					                <li><a href="javascript:void(0);"
											onclick="redirectByMenu('mackpatch','makepatch/toMakePatchIndex')">新建补丁项目</a>
									</li>
									 <li><a href="javascript:void(0);"
											onclick="redirectByMenu('makepatchset','makepatchset/toMakePatchSetIndex')">补丁合集</a>
									</li>
									<li><a href="javascript:void(0);"
											onclick="redirectByMenu('makerversionpatch','makerversionpatch/toMakeRPatchIndex')">R版本补丁</a>
									</li>
				                </ul>
				              </li>

				             <li class="divider"></li>
				               <li class="dropdown-submenu">
				                <a tabindex="-1" href="javascript:void(0);">IAS补丁制作</a>
				                <ul class="dropdown-menu">
								   <!-- IAS独立补丁制作 放开限制 -->
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('IASpatch','IASpatch/toIASPatchIndex')">独立补丁制作</a>
									</li>
									<li><a href="javascript:void(0);"
											onclick="redirectByMenu('IASpatchset','IASpatchset/toIASPatchSetIndex')">收编补丁</a>
									</li>
				                </ul>
				              </li>

				          <!--
				               <li class="divider"></li>
				              	<li><a href="javascript:void(0);"
								onclick="redirectByMenu('dcpatch','dcpatch/toDcPatchIndex')">DC批量制作</a></li>


							<li class="divider"></li>
							<li class="dropdown-submenu"><a tabindex="-1"
								href="javascript:void(0);">Fenix补丁制作</a>
								<ul class="dropdown-menu">
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('makefenixpatch','makefenixpatch/toMakeFenixPatchIndex')">新建补丁项目</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('makefenixpatchset','makefenixpatchset/toMakeFenixPatchSetIndex')">补丁合集</a>
									</li>
								</ul></li>
						-->
							<li class="divider"></li>
							<li class="dropdown-submenu"><a tabindex="-1"
								href="javascript:void(0);">OSN补丁制作</a>
								<ul class="dropdown-menu">
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('makeosnpatch','makeosnpatch/toMakeOSNRPatchIndex')">资源补丁制作</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('makeosnpatch','makeosnpatch/toMakeOSNCPatchIndex')">C码补丁制作</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('makeosnpatchset','makeosnpatchset/toMakeOSNPatchSetIndex')">补丁合集制作</a>
									</li>
								</ul></li>
							<!--大规格补丁制作只在30服务器-->
							<li class="divider"></li>
							<li><a href="javascript:void(0);"
								onclick="redirectByMenu('maxnumpatch','maxnumpatch/toMaxNumPatchIndex')">大规格补丁制作</a></li>
							<li class="divider"></li>
							<li><a href="javascript:void(0);"
										   onclick="redirectByMenu('batchpatchmake','batchpatchmake/toBatchPatchMake')">大规格补丁批量制作</a>
									</li>
						</ul></li>


					<li name="li_top_menu" class="dropdown"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">
							<div class="menu-icon toolBox"></div>
							<div style="text-align: center">
								工具箱
								<div style="float: right; margin-top: -4px">
									<b class="caret"></b>
								</div>
							</div>
					</a>
						<ul class="dropdown-menu" id="menu1" style="left: 23px;top: 60px;">
				              <li class="dropdown-submenu">
				                <a tabindex="-1" href="javascript:void(0);">补丁包信息显示</a>
				                <ul class="dropdown-menu">
					               <li><a href="javascript:void(0);"
											onclick="redirectByMenu('tools','tools/patchInfo')">补丁包信息</a>
								   </li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/overrideFile')">文件覆盖查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/overrideFunction')">函数覆盖查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toPathPatchCheck')">PATH补丁覆盖查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toMimPatchCheck')">信息模型补丁覆盖查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toCheckMod')">MOD普通补丁覆盖检查</a>
									</li>
									<li>
										<a href="javascript:void(0);"
										   onclick="redirectByMenu('tools','tools/findOspkgPatch')">bpok的ospkg补丁查找</a>
									</li>
				                </ul>
				              </li>

				               <li class="divider"></li>
				               <li class="dropdown-submenu">
				                <a tabindex="-1" href="javascript:void(0);">资源补丁制作工具</a>
				                <ul class="dropdown-menu">
					             	<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/importSource')">导入资源包制作补丁</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/makeResourcePatch')">基于资源包制作补丁</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('sourcepatch','sourcepatch/resourcePatch')">基于源码制作补丁</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('rpmpatchmake','rpmpatchmake/resourcePatchMake')">基于补丁开发rpm包制作补丁</a>
									</li>
									<li id="disposePatchID">
									  <a href="javascript:void(0);" onclick="redirectByMenu('disposesourcepatch','disposesourcepatch/dispose')">基于源码制作补丁的管理员配置</a>
									</li>
				                </ul>
				              </li>

				               <li class="divider"></li>
				               <li class="dropdown-submenu">
				                <a tabindex="-1" href="javascript:void(0);">补丁开发工具</a>
				                <ul class="dropdown-menu">
					             	<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toMakeConfig')">编译脚本管理</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/tofindHPath')">头文件查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/findSO')">函数所在SO查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toManagePath')">补丁推送路径管理</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toDecompressingFiles')">解压补丁包工具</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toModeChange')">V8转V5MOD</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toPatchSign')">补丁数字签名</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toModifyVnePatVersion')">修改VNE补丁包版本</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toMakeZipPatch')">ZIP包格式补丁包制作</a>
									</li>
								</ul></li>

				               <li class="divider"></li>
				               <li class="dropdown-submenu">
				                <a tabindex="-1" href="javascript:void(0);">CMO工具</a>
				                <ul class="dropdown-menu">
					             	<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toCheckBoard')">单板信息校验</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toCheckCMO')">CMO构建查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toSrFileCheck')">补丁大文件查找</a>
									</li>
									<li><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toPatchFuncStatistic')">函数信息统计</a>
									</li>
									<li id=LI_AUTO_CONF_BOARD style="display: none;"><a href="javascript:void(0);"
										onclick="redirectByMenu('tools','tools/toAutoConfigurationBoard')">自动配置单板</a>
									</li>
				                </ul>
				              </li>

						</ul>
						</li>

					<!-- <li><a href="javascript:void(0);"
						onclick="redirectByMenu('notice','notice/toNotice')">
							<div class="notice menu-icon"></div>
							<div style="text-align: center">通知</div>
					</a></li> -->
					<li><a href="javascript:void(0);"
						onclick="redirectByMenu('guide','guide/toGuide')"><div
								class="guide menu-icon"></div>
							<div style="text-align: center">制作指导</div></a></li>
					<li><a href="javascript:void(0);"
						onclick="redirectByMenu('guide','question/toQuestion')">
							<div class="faq menu-icon"></div>
							<div style="text-align: center">常见问题</div>
					</a></li>
					<li name="li_top_menu" class="dropdown"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">
							<div class="statistics menu-icon"></div>
							<div style="text-align: center">
								统计
								<div style="float: right; margin-top: -4px">
									<b class="caret"></b>
								</div>
							</div>
					</a>
						<ul class="dropdown-menu" id="menu1" style="left: 15px;top: 60px;">
							<li><a href="javascript:void(0);"
								onclick="redirectByMenu('statistics','statistics/statisticsDetail')">补丁制作统计</a>
							</li>
							<li><a href="javascript:void(0);"
								onclick="redirectByMenu('sitestatistics','sitestatistics/toSitestatistics')">网站信息统计</a>
							</li>
							<li><a href="javascript:void(0);"
								onclick="redirectByMenu('statisticssupport','statisticssupport/statisticsSupportDetail')">支撑问题统计</a>
							</li>
						</ul></li>

					<li name="li_top_menu" class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">
							<div class="demand menu-icon"></div>
							<div style="text-align: center">
								支撑&需求管理
								<div style="float: right; margin-top: -4px">
									<b class="caret"></b>
								</div>
							</div>
					</a>

						<ul class="dropdown-menu" style="left: 50px; top: 60px;" id="menu1">
							<li><a href="javascript:void(0);" onclick="redirectByMenu('support','support/toSupport')">支撑管理</a></li>
							<li><a href="javascript:void(0);" onclick="redirectByMenu('demand','demand/toDemand')">需求管理</a></li>
						</ul></li>


					<li><a
						href="http://rnd-isourceb.huawei.com/NetworkOS-SMSP/NOS_Patch_Support/issues/new"
						target="blank" onclick="">
							<div class="issue menu-icon"></div>
							<div style="text-align: center">反馈(需求/BUG)</div>
					</a></li>

				<!-- 搜索框 start -->
				<li style="margin-top: 20px;margin-left: 20px;">
					<form method="post"
								action="http://3ms.huawei.com/hi/?app=group&mod=search&act=iSearch"
								target="_blank">
								<div id="DIV_SEARCH" class="in-block" style="width: 500px;max-width: 600px;">
									<div class="search-box">
									<label>
									<input id="search_content" size="25" style="width: 100%;background-color: rgb(234, 234, 234)" type="text" class="in_put l_input_search" placeholder="Search by keyword..."
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
				</li>
				<!-- 搜索框 end -->

				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9"
				style="height: 1500px; width: 95%; margin-left: 50px" id="content">
				<iframe frameborder="0" style="width: 100%; height: 100%;"
					name="home" id="home" src="home/toIndex"></iframe>
			</div>
		</div>
		<hr>

			<div class="row-fluid">
				<div class="span2">
					<div class="diy_layout_box last_s">
						<div>
							<h4 class="tit_bgg">补丁家园</h4>
							<dl>
								<dt class="g_info_tit">统计信息</dt>
								<dd id="USERCOUNTS">成员数：${USERCOUNTS }</dd>
								<dd id="ALLCOUNTS">总访问数：${ALLCOUNTS }</dd>
								<dd id="DAYCOUNTS">当日访问量：${DAYCOUNTS }</dd>
								<dd id="PROJECTCOUNTS">补丁工程总数：${PROJECTCOUNTS }</dd>
								<dd id="PROJECTMAKETOTALS">补丁工程制作总数：${PROJECTMAKETOTALS }</dd>
							</dl>
						</div>
					</div>
				</div>

				<!-- 最近访问的6个用户信息 -->
				<div class="span8">
					<div class="diy_layout_box last_s" style="float: right;">
						<h4 class="tit_bgg">
							<span title="最近来访">最近来访</span>
						</h4>
						<ul class="diy_userlist">
							<c:forEach items="${RECENTUSERINFO}" var="item"
								varStatus="status">
								<%-- <li><span class="headpic50"><a target="_blank"
										href=""><img
											src="http://w3.huawei.com/w3lab/rest/yellowpage/face/00357957/120">
									</a> </span>
									<p class="OverHW lh18">
										<a target="_blank" href=""
											title="${item.USER_NAME}">${item.USER_NAME}</a>
									</p>
								</li> --%>
								<li><span class="headpic50"> <img
										src="component/img/defaultuser.png"></span>
									<p class="OverHW lh18">${item.USER_NAME eq null ? '&nbsp;':item.USER_NAME}</p></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>


			<footer style="text-align: center;color: #777777;">
			<p>版权所有&nbsp;©&nbsp;华为技术有限公司&nbsp;2016-2018.&nbsp;保留一切权利</p>
			</footer>
	</div>
</body>
</html>
