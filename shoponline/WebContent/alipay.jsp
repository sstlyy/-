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
<style>
#authcenter-nav-wraper {
	margin-top: 10px;
	height: 60px;
	line-height: 60px;
	background: #fdfdfd;
	border-bottom: 1px #eee solid;
	height: 60px;
}

.fn-clear {
	zoom: 1;
}

.nav-logo {
	width: 114px;
	height: 40px;
	line-height: 40px;
	text-indent: -9999px;
	background:
		url(https://t.alipayobjects.com/images/T1HHFgXXVeXXXXXXXX.png);
}

.nav-left {
	float: left;
}

.nav-title:hover {
	color: #1A1A1A;
	text-decoration: none;
}

.nav-title {
	border-left: 1px solid gray;
	margin-left: 10px;
	padding-left: 10px;
	color: #1A1A1A;
	font-size: 20px;
}

.nav-left {
	float: left;
}

ins, a {
	text-decoration: none;
}

.authcenter-body-intro {
	width: 500px;
	height: 240px;
	margin: 85px 0 0;
	float: left;
	position: relative;
	z-index: 10;
	text-align: center;
}

.authcenter-body-intro .intro-link {
	height: 30px;
	z-index: 11;
	margin-top: 20px;
}

authcenter-body-intro .intro-link .intro-des {
	color: gray;
	margin-right: 10px;
}

.authcenter-body a, .login a {
	color: #0AE;
}

body, button, input, select, textarea {
	font: 12px/1.5 tahoma, arial, "Hiragino Sans GB", \5b8b\4f53;
}

.authcenter-body-login {
	margin-top: 0;
}

.authcenter-body-login {
	float: right;
	margin: 27px 95px;
	width: 286px;
	height: auto;
	position: relative;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.ui-tiptext-container {
	padding: 8px 0;
	text-align: center;
}

.ui-tiptext {
	color: gray;
	font-size: 14px;
}

.div3 {
	width: 300px;
	height: 400px;
	/* border: 1px solid gray; */
	margin-left: 53%;

	/* margin-top: 30%; */
}

.div4 {
	width: 300px;
	height: 100px;
	/* background-color: red; */
	/* border: 1px solid red; */
}

.div5 {
	width: 300px;
	height: 300px;
	border: 1px solid gray;
	position: absolute;
	background-color: rgb(250, 250, 250);
}

.div6 {
	width: 130px;
	height: 130px;
	border: 1px solid black;
	margin: auto;
	margin-top: 50px;
	background-position: center;
	background-size: cover;
}

.div7 {
	text-align: center;
	margin-top: 10%;
}

#countdown span {
	color: red;
	text-align: center;
}
</style>
</head>

<body>
	<%@ include file="../WEB-INF/jsp/menu.jsp"%>
	<div id="authcenter-nav-wraper" class="nav-wraper fn-clear">
		<div id="authcenter-nav-container" class="nav-container"
			style="margin-left: 20%;">
			<h1 class="nav-part">
				<a class="nav-logo nav-left" href="https://www.alipay.com/"
					title="支付宝" seed="authcenter-homepage">支付宝</a> <a
					class="nav-title nav-left" title="快捷支付" seed="navPart-navTitle"
					smartracker="on">快捷支付</a>
			</h1>
		</div>
	</div>

	<div style="margin-left: 15%;">
		<div class="authcenter-body-intro">
			<h3 align="left">
				<span>订单提交成功，请您及时付款！订单号：${alipay.out_trade_no}</span>
			</h3>
			<h3 align="right">
				<span align="right">应付金额：<em
					style="font-size: 18px; color: red">${alipay.total_amount}</em>元
				</span>
			</h3>
			<img width="500" height="240" alt=""
				src="https://zos.alipayobjects.com/rmsportal/hjSSuMaGRHwvySN.jpg"
				seed="authcenterBodyIntro-zosRmsportalHjSSuMaGRHwvySN"
				smartracker="on">
				<div class="intro-link">
					<span class="intro-des">一账户登录所有合作方网站</span>
				</div>
		</div>

		<div class="div3">
			<div class="div4"></div>
			<div class="div5">
				<h2 style="text-align: center; margin-top: 20px;">扫码支付</h2>
				<div class="div6">
					<input type="hidden" id="test" value="${alipay.qr_code}"> <!-- 二维码图片 -->
						<img id="qr" style="width: 130px; height: 130px;"></img>
				</div>
				<p style="text-align: center; color: blue;">请使用手机支付宝扫码</p>
				<div style="text-align: center; " id="countdown">
						<span>01</span>分钟<span>00</span>秒 <input type="button" value="开始" />
					</div>			
			</div>
		</div>

	</div>

	<br />

	<br />

	<br />
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
window.onload = function ()
{
var oCountDown = document.getElementById("countdown");
var aInput = oCountDown.getElementsByTagName("input")[0];
var timer = null;
aInput.onclick = function ()
{
this.className == "" ? (timer = setInterval(updateTime, 1000), updateTime()) : (clearInterval(timer));
this.className = this.className == '' ? "cancel" : '';
};
function format(a)
{
return a.toString().replace(/^(\d)$/,'0$1');
}
function updateTime ()
{
var aSpan = oCountDown.getElementsByTagName("span");
var oRemain = aSpan[0].innerHTML.replace(/^0/,'') * 60 + parseInt(aSpan[1].innerHTML.replace(/^0/,''));
if(oRemain <= 0)
{
clearInterval(timer);
return;
}
oRemain--;
aSpan[0].innerHTML = format(parseInt(oRemain / 60));
oRemain %= 60;
aSpan[1].innerHTML = format(parseInt(oRemain));
}
// 加上此句即可。
aInput.style.display="none";
aInput.click();
}

	$(document).ready(function() {
		new QRious({
			element : document.getElementById("qr"),
			size : 250,
			level : "Q",
			value : $("#test").val()
		});
		queryStatus();
		
	});
	
	  function queryStatus(){
		$.ajax({
			url:"http://localhost:8080/shoponline/order_queryPayStatus.action",
			success:function(result){
				if("true"==result){
			    	  window.location.href = "http://localhost:8080/shoponline/paySuccess.jsp";
			      } else {
			    	  window.location.href = "http://localhost:8080/shoponline/payEroor.jsp";
			      }
			}
			});
    } 
	
	
	
</script>
</html>

