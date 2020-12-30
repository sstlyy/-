<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
	<style type="text/css">
body {
	background: rgb(231, 234, 237);
	letter-spacing: 1px;
	line-height: 30px;
}

.title {
	text-align: center;
	margin-top: 50px;
}

.div {
	width: 80%;
	margin: auto;
	padding-top: 10px;
	padding-bottom: 30px;
	box-shadow: 0 1px 6px #ccc;
	background: rgb(255, 255, 255);
}

.div1 {
	width: 80%;
	margin: auto;
}

h3 {
	display: inline-block;
	margin-left: 80px;
}

.div2 {
	font-size: 15px;
	margin-top: 50px;
	text-align: center;
}

a {
	color: gray;
	text-decoration: none;
	margin-left: 20px;
}

a:hover {
	color: black;
}

.div3 {
	font-size: 15px;
	text-align: center;
	color: gray;
}

.daohang {
	width: 10%;
	position: absolute;
	left: 0px;
	top: 100px;
}

.daohang>a {
	height: 60px;
	border: 1px solid black;
	display: block;
	text-align: center;
	line-height: 60px;
	font-weight: 700;
}

.daohang>a:hover {
	background-color: blue;
}

#l-map {
	height: 300px;
	margin-left: 80px;
	width: 80%;
}

#r-result {
	margin-left: 80px;
	width: 80%;
}
</style>
	<script type="text/javascript"
		src="//api.map.baidu.com/api?v=2.0&ak=PhUPx7ShqlFY2uzXIGkCuwUyh2Y9tH6C"></script>
</head>
<body>
	<div class="div">
		<h2 class="title">联系我们</h2>
		<div class="div1">用户在本商城中购买物品遇到的各种问题都可以通过以下方式联系我们，我们将竭诚为您服务。</div>
		<h3>联系方式</h3>
		<div class="div1">客服 \ 投诉中心地址：河南城建学院</div>
		<div class="div1">总部地址：河南城建学院</div>
		<div class="div1">邮政编码：467000</div>
		<div class="div1">座机：010-57073701</div>
		<div class="div1">邮箱：3577379732@qq.com</div>
		<div class="div1">7×24小时客服热线：95070</div>
		<br>
		<div id="l-map"></div>
		<div id="r-result"></div>
		<script type="text/javascript">
			// 百度地图API功能
			var map = new BMap.Map("l-map"); // 创建Map实例
			map.centerAndZoom(new BMap.Point(113.171, 33.44), 11);
			var myKeys = [ "河南城建学院" ];
			var local = new BMap.LocalSearch(map, {
				renderOptions : {
					map : map,
					panel : "r-result"
				},
				pageCapacity : 3
			});
			local.searchInBounds(myKeys, map.getBounds());
		</script>
		<div class="div2">
			<ul>
				<a href="${pageContext.request.contextPath}/service.jsp">服务声明</a>
				<a href="${pageContext.request.contextPath}/aboutus.jsp">关于我们</a>
				<a style="color:blue" href="${pageContext.request.contextPath}/connectus.jsp">联系方式</a>
				<a href="${pageContext.request.contextPath}/friendlink.jsp">友情链接</a>
				<a href="${pageContext.request.contextPath}/send.jsp">配送方式</a>
				 <a href="${pageContext.request.contextPath}/law.jsp">法律声明</a>
			</ul>
		</div>
		<div class="div3">Copyright @ 2020 网上商城 版权所有</div>
		<div class="daohang">
			<a href="${pageContext.request.contextPath}/index.jsp">首页</a> <a
				href="${pageContext.request.contextPath}/law.jsp">法律声明</a> <a
				href="${pageContext.request.contextPath}/service.jsp">服务声明</a> <a
				href="${pageContext.request.contextPath}/connectus.jsp">联系方式</a> <a
				href="${pageContext.request.contextPath}/send.jsp">配送方式</a>
				<a href="${pageContext.request.contextPath}/aboutus.jsp">关于我们</a> 
				<a href="${pageContext.request.contextPath}/friendlink.jsp">友情链接</a> 
		</div>
	</div>
</body>
</html>