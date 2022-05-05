<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../include/taglibs.jspf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<z:head loadLib="false" charset="UTF-8">
	<z:pagescript />
	<style>
		h1,h2,h3,h4,h5,h6{
			color:#666666;
		}
	</style>
</z:head>
<body class="bg_img">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="block">
				<div class="navbar navbar-inner block-header">
					<div class="muted pull-left"></div>
				</div>
				<div class="block-content">
					<fieldset style="padding-left: 10%">
						<h3 style="padding-left: 36%;">引导目录</h3>
						<h4>1.&nbsp;&nbsp;补丁相关知识</h4>
						<ul>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4591451.html?for_statistic_from=all_group_wiki" target="_blank">
									&nbsp;&nbsp;1.1&nbsp;&nbsp;V8补丁知识地图
								</a>
							</li>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2033809/file_4651229.html" target="_blank">
									&nbsp;&nbsp;1.2&nbsp;&nbsp;《winPatch+Patch+rpm+VPatch补丁制作环境搭建+资源补丁制作教学+C补丁制作视频》
								</a>
							</li>
						</ul>
						<h4>2.&nbsp;&nbsp;单个补丁制作指导</h4>
						<blockquote>
							<h5>&nbsp;&nbsp;2.1&nbsp;&nbsp;C码补丁制作指导</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4477319.html" target="_blank">
										&nbsp;&nbsp;2.1.1&nbsp;&nbsp;制作C码补丁指导
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4512945.html?for_statistic_from=all_group_wiki" target="_blank">
										&nbsp;&nbsp;2.1.2&nbsp;&nbsp;网站支持使用本地头文件编译C文件
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.2&nbsp;&nbsp;E类补丁制作指导</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4478839.html?for_statistic_from=all_group_wiki" target="_blank">
										&nbsp;&nbsp;2.2.1&nbsp;&nbsp;E类补丁制作指导
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4697369.html" target="_blank">
										&nbsp;&nbsp;2.2.2&nbsp;&nbsp;SR_PATH补丁制作指导
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4470461.html?for_statistic_from=all_group_wiki" target="_blank">
										&nbsp;&nbsp;2.2.3&nbsp;&nbsp;逻辑子卡补丁制作指导
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4697369.html" target="_blank">
										&nbsp;&nbsp;2.2.4&nbsp;&nbsp;PATH补丁制作指导
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.3&nbsp;&nbsp;F类补丁制作指导</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4478935.html?for_statistic_from=all_group_wiki" target="_blank">
										&nbsp;&nbsp;2.3.1&nbsp;&nbsp;F类补丁制作指导
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.4&nbsp;&nbsp;资源补丁制作指导</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4478861.html" target="_blank">
										&nbsp;&nbsp;2.4.1&nbsp;&nbsp;资源补丁制作指导
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/7265/blog_1612607.html" target="_blank">
										&nbsp;&nbsp;2.4.2&nbsp;&nbsp;资源补丁制作指导-D类——普通Lua脚本补丁制作(不包含信息模型补丁)
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/7265/blog_1612603.html" target="_blank">
										&nbsp;&nbsp;2.4.3&nbsp;&nbsp;资源补丁制作指导-H类——命令树补丁制作
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/7265/blog_1612605.html" target="_blank">
										&nbsp;&nbsp;2.4.4&nbsp;&nbsp;资源补丁制作指导-K类——buildrun补丁制作
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/blog/524719_1904419.html" target="_blank">
										&nbsp;&nbsp;2.4.5&nbsp;&nbsp;资源补丁制作指导-P类——MIB补丁制作(SNMP 程竹提供)
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/7265/blog_1612611.html" target="_blank">
										&nbsp;&nbsp;2.4.6&nbsp;&nbsp;资源补丁制作指导-P类——MIB补丁制作
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/7265/blog_1612599.html" target="_blank">
										&nbsp;&nbsp;2.4.7&nbsp;&nbsp;资源补丁制作指导-D类——信息模型补丁制作
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/7265/blog_1612609.html" target="_blank">
										&nbsp;&nbsp;2.4.8&nbsp;&nbsp;资源补丁制作指导-O类——Schema补丁制作
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/7265/blog_1612601.html" target="_blank">
										&nbsp;&nbsp;2.4.9&nbsp;&nbsp;资源补丁制作指导-K类——多语种补丁制作(不包含buildrun补丁)
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.5&nbsp;&nbsp;NP补丁制作指导</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4478811.html?for_statistic_from=all_group_wiki" target="_blank">
										&nbsp;&nbsp;2.5.1&nbsp;&nbsp;NP补丁制作指导
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.6&nbsp;&nbsp;内核补丁(pnpp补丁)制作指导</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4683491.html?for_statistic_from=all_group_wiki" target="_blank"> 
										&nbsp;&nbsp;2.6.1&nbsp;&nbsp;PNPP补丁制作指导
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4478263.html" target="_blank">
										&nbsp;&nbsp;2.6.2&nbsp;&nbsp;制作内核补丁指导
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.7&nbsp;&nbsp;OSN补丁制作</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/1502759/wiki_3443471.html" target="_blank">
										&nbsp;&nbsp;2.7.1&nbsp;&nbsp;《OSN补丁制作入口，USP官方提供》——OSN补丁制作指导
									</a>
								</li>
								<li>
									<a href="http://szxbbs402-ap.huawei.com/hi/group/2033809/blog_2104765.html" target="_blank">
										&nbsp;&nbsp;2.7.2&nbsp;&nbsp;《OSN补丁制作入口，USP官方提供》——制作OSN资源补丁step by step
									</a>
								</li>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2033809/blog_2109179.html" target="_blank">
										&nbsp;&nbsp;2.7.3&nbsp;&nbsp;《OSN补丁制作入口，USP官方提供》——制作OSNC补丁step by step
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.8&nbsp;&nbsp;IAS补丁制作</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2033809/blog_1923199.html" target="_blank">
										&nbsp;&nbsp;2.8.1&nbsp;&nbsp;《IAS补丁制作入口》
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;2.9&nbsp;&nbsp;Fenix补丁制作指导</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4681015.html" target="_blank">
										&nbsp;&nbsp;2.9.1&nbsp;&nbsp;Fenix补丁制作指导
									</a>
								</li>
							</ul>
						</blockquote>
						<h4>3.&nbsp;&nbsp;合集补丁制作指导</h4>
						<ul>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4478183.html?for_statistic_from=all_group_wiki" target="_blank">
									&nbsp;&nbsp;3.1&nbsp;&nbsp;制作补丁合集指导
								</a>
							</li>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4573999.html" target="_blank">
									&nbsp;&nbsp;3.2&nbsp;&nbsp;增量补丁合集制作指导
								</a></li>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4679353.html" target="_blank">
									&nbsp;&nbsp;3.3&nbsp;&nbsp;信息模型补丁覆盖检查功能说明书
								</a>
							</li>
						</ul>
						<h4>4.&nbsp;&nbsp;DC批量补丁制作</h4>
						<ul>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4702121.html" target="_blank">
									&nbsp;&nbsp;4.1&nbsp;&nbsp;DC批量补丁制作指导
								</a>
							</li>
						</ul>
						<h4>5.&nbsp;&nbsp;工具箱</h4>
						<ul>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4484197.html?for_statistic_from=all_group_wiki" target="_blank">
									&nbsp;&nbsp;5.1&nbsp;&nbsp;工具箱-覆盖信息查看
								</a>
							</li>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4468879.html?for_statistic_from=all_group_wiki" target="_blank">
									&nbsp;&nbsp;5.2&nbsp;&nbsp;工具箱--查找函数所在的so
								</a>
							</li>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4687897.html" target="_blank">
									&nbsp;&nbsp;5.3&nbsp;&nbsp;MOD&PAT补丁检查指导
								</a>
							</li>
							<li>
								<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4621411.html?for_statistic_from=all_group_wiki" target="_blank">
									&nbsp;&nbsp;5.4&nbsp;&nbsp;资源补丁效率提升(一键式制作)
								</a>
							</li>
							<li>
								<a href="http://3ms.huawei.com/hi/group/7265/blog_1579997.html" target="_blank">
									&nbsp;&nbsp;5.5&nbsp;&nbsp;《V8R9资源补丁制作(VPatch+SSP补丁工具)与验证》
								</a>
							</li>
						</ul>
						<h4>6.&nbsp;&nbsp;产品相关文档</h4>
						<blockquote>
							<h5>&nbsp;&nbsp;6.1&nbsp;&nbsp;传送网</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/1502759/wiki_3553231.html" target="_blank">
										&nbsp;&nbsp;6.1.1&nbsp;&nbsp;《OSN补丁制作入口，USP官方提供》——OSN统一入口指导
									</a>
								</li>
							</ul>
							<h5>&nbsp;&nbsp;6.2&nbsp;&nbsp;路由器</h5>
							<ul>
								<li>
									<a href="http://3ms.huawei.com/hi/group/2984357/wiki_4679139.html" target="_blank">
										&nbsp;&nbsp;6.2.1&nbsp;&nbsp;补丁函数执行统计补丁制作使用指导
									</a>
								</li>
							</ul>
						</blockquote>
					</fieldset>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
