<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>OA办公系统</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="icon" href="favicon.ico">
<link rel="stylesheet" href="../plugs/layui/css/layui.css" media="all" />
<link rel="stylesheet"
	href="//at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all" />
<link rel="stylesheet" href="../css/main.css" media="all" />
</head>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<div class="layui-header header">
			<div class="layui-main">
				<a href="#" class="logo">OA办公系统</a>
				<!-- 显示/隐藏菜单 -->
				<a href="javascript:;" class="iconfont hideMenu icon-menu1"></a>
				<!-- 搜索 -->
				<div class="layui-form component">
					<select name="modules" lay-verify="required" lay-search="">
						<option value="">直接选择或搜索选择</option>
						<option value="1">人事</option>
					</select> <i class="layui-icon">&#xe615;</i>
				</div>
				<!-- 天气信息 -->
				<div class="weather" pc>
					<div id="tp-weather-widget"></div>
					<script>
						(function(T, h, i, n, k, P, a, g, e) {
							g = function() {
								P = h.createElement(i);
								a = h.getElementsByTagName(i)[0];
								P.src = k;
								P.charset = "utf-8";
								P.async = 1;
								a.parentNode.insertBefore(P, a)
							};
							T["ThinkPageWeatherWidgetObject"] = n;
							T[n] || (T[n] = function() {
								(T[n].q = T[n].q || []).push(arguments)
							});
							T[n].l = +new Date();
							if (T.attachEvent) {
								T.attachEvent("onload", g)
							} else {
								T.addEventListener("load", g, false)
							}
						}(window, document, "script", "tpwidget",
								"//widget.seniverse.com/widget/chameleon.js"))
					</script>
					<script>
						tpwidget("init", {
							"flavor" : "slim",
							"location" : "WX4FBXXFKE4F",
							"geolocation" : "enabled",
							"language" : "zh-chs",
							"unit" : "c",
							"theme" : "chameleon",
							"container" : "tp-weather-widget",
							"bubble" : "disabled",
							"alarmType" : "badge",
							"color" : "#FFFFFF",
							"uid" : "U9EC08A15F",
							"hash" : "039da28f5581f4bcb5c799fb4cdfb673"
						});
						tpwidget("show");
					</script>
				</div>
				<!-- 顶部右侧菜单 -->
				<ul class="layui-nav top_menu" lay-filter="topNav">
				
				<c:forEach items="${menus}" var="oaMenu">
					<li class="layui-nav-item " pc><a nav-id="${oaMenu.menuId}" nav-url="${oaMenu.menuLink}" href="javascript:;"><i
							class=""></i><cite>${oaMenu.meuName}</cite></a></li>
				</c:forEach>						
					<li class="layui-nav-item lockcms" pc><a href="javascript:;"><i
							class="iconfont icon-lock1"></i><cite>锁屏</cite></a></li>
					<li class="layui-nav-item" pc><a href="javascript:;"> <img
							src="../resources/admin.JPG" class="layui-circle" width="35"
							height="35"> <cite>请叫老司机</cite>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url="page/user/userInfo.html"><i
									class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="page/user/changePwd.html"><i
									class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a>
							</dd>
							<dd>
								<a href="javascript:;" class="changeSkin"><i
									class="iconfont icon-huanfu"></i><cite>更换皮肤</cite></a>
							</dd>
							<dd>
								<a href="page/login/login.html" class="signOut"><i
									class="iconfont icon-loginout"></i><cite>退出</cite></a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<div class="user-photo">
				<a class="img" title="我的头像"><img src="../resources/admin.JPG"></a>
				<p>
					你好！<span class="userName">请叫老司机</span>, 欢迎登录
				</p>
			</div>
			<div class="navBar layui-side-scroll">
				<li class="layui-nav-item"><a href="javascript:;"
					data-url="page/main.html"> <i class="iconfont icon-computer"
						data-icon="icon-computer"></i><cite>首页</cite>
				</a></li>
			</div>
		</div>
		<!-- 右侧内容 -->
		<div class="layui-body layui-form">
			<div class="layui-tab marg0 layui-anim-up" lay-filter="bodyTab"
				id="top_tabs_box">
				<ul class="layui-tab-title top_tab" id="top_tabs">
					<li class="layui-this" lay-id=""><i
						class="iconfont icon-computer"></i> <cite>后台首页</cite></li>
				</ul>
				<ul class="layui-nav closeBox">
					<li class="layui-nav-item"><a href="javascript:;"><i
							class="iconfont icon-caozuo"></i> 页面操作</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" class="refresh refreshThis"><i
									class="layui-icon">&#x1002;</i> 刷新当前</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageOther"><i
									class="iconfont icon-prohibit"></i> 关闭其他</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageAll"><i
									class="iconfont icon-guanbi"></i> 关闭全部</a>
							</dd>
						</dl></li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show">
						<iframe src="/to_Scheduletype"></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- 底部 -->
		<div class="layui-footer footer">
			<p>@2018 请叫我老司机</p>
		</div>
	</div>


	<script type="text/html" id="topNavAfter">

</script>

	<script type="text/javascript" src="../plugs/layui/layui.js"></script>
	<script type="text/javascript" src="../js/leftNav.js"></script>
	<script type="text/javascript" src="../js/index.js"></script>
	<script type="text/javascript" src="../js/topNav.js"></script>
	<script>
		layui.config({base : "../js/"}).use([ 'element', 'bodyTab' ],function() {
							var $ = layui.$;
							var tab = layui.bodyTab();
							var element = layui.element;
							var menu;
							element.on('nav(topNav)', function(elem) {
								var fatherId=elem.find('a').attr('nav-id');
								console.info(fatherId);
								tab.render(fatherId);
							})
							element.render();
						});
	</script>

</body>
</html>