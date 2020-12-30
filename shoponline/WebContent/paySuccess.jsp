<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>订单页面</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/cart.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/qrious.min.js"></script>
</head>
<body>

	<%@ include file="../WEB-INF/jsp/menu.jsp"%>
	<div class="container cart" align="center"
		style="width: 600px; height: 300px; margin-bottom: 140px; box-shadow: 10px 10px 10px 5px #888888; border-radius: 5px;">
		<div style="margin-top: 60px; padding-top: 90px;">
			<h3>
				<img src="image/right.png" width="48" height="48"> 恭喜您，支付成功啦！
			</h3>
			<br> <font style="font-size: 16px">支付方式：<span
					style="color: red">支付宝支付</span></font> <br> <br> <font
						style="font-size: 16px">支付金额：<span style="color: red">${payStatus.buyer_pay_amount }</span>元
					</font>
		</div>
		<div
			style="margin-top: 170px; margin-left: 600px; border: 1px solid rgb(205, 205, 205); width: 160px; height: 35px; line-height: 30px;">
			<a
				href="${pageContext.request.contextPath }/index.jsp"><font
				style="font-size: 18px; color: rgb(36, 160, 215)">继续购物</font></a>
		</div>
		<div style="width: 50px; height: 50px;; position: absolute;">
			<img alt="fg" style="margin-top: -71px; margin-left: -500px;"
				src="${ pageContext.request.contextPath }/image/index_imgs-hash-563d9268.png"></img>
		</div>
	</div>


	<div class="span24"
		style="height: 20%; width: 100%; background-color: white;">
		<div class="footerAd">
			<img src="${pageContext.request.contextPath}/image/footer.jpg"
				width="100%" height="30%" alt="我们的优势" title="我们的优势" />
		</div>
	</div>
	<div class="container footer"
		style="height: 100px; width: 80%; background-color: black;">
		<div class="span24">
			<ul class="bottomNav" style="padding: 10px;">
				<li><a href="aboutus.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于我们</a>
					|</li>
				<li><a href="connectus.jsp">联系我们</a> |</li>
				<li><a href="law.jsp">法律声明</a> |</li>
				<li><a href="friendlink.jsp">友情链接</a> |</li>
				<li><a href="send.jsp">配送方式</a> |</li>
				<li><a href="service.jsp">服务声明</a></li>
			</ul>
		</div>
		<div class="span24">
			<div class="copyright">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Copyright
				© 2005-2015 网上商城 版权所有</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		new QRious({
			element : document.getElementById("qr"),
			size : 250,
			level : "Q",
			value : $("#test").val()
		});
	});
</script>
</html>