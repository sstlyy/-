<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>网上商城</title>

<style>

.headerAd  input {
    height:35px;
	font-size: 16px;
	text-indent: 20px;
	border: none;
	border:2px solid rgb(242,242,242);
	float: left;
}

.headerAd  input:nth-child(3) {
	width: 100px;
	height: 37px;
	font-size: 16px;
	text-align:center;
	letter-spacing: 5px;
	border: none;
}
.span10 ul{
display:flex;
margin-left:550px;
}
.mainNav li{
margin-left:20px;
margin-right:20px;
font-size:16px;
line-height:40px;
}
.mainNav li a{
color:white;
margin-right:20px;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/qrious.min.js"></script>
<script>
function findByPname(){
		// 获得文件框值:
		var productName = document.getElementById("productName").value;
		window.location.href = "${ pageContext.request.contextPath }/product_findByPname.action?productName="+productName+"&page=1";
}
</script>
</head>
<body>
<div class="span24" style="height:20%;width:80.2%;background-color:white;margin-left:150px;" >
	<div class="span10 last" style="width:100%;height:15px;background-color:rgb(242,242,242);padding:12px 0px;display:flex;">
		<div class="topNav clearfix" style="display:flex;margin-left:50px;">
			<div class="cart">
			<img alt="fg" style="margin-top:-5px;" src="${ pageContext.request.contextPath }/image/header_sign-hash-0459d02c.gif"></img>
			
				<a href="${ pageContext.request.contextPath }/cart_myCart.action">购物车</a>
			</div>
			<div class="phone" style="background-color: rgb(242, 242, 242);margin-left:100px;">
			<img alt="fg" style="margin-top:-5px;" src="${ pageContext.request.contextPath }/image/phone_white-hash-6a80ddf6.png"></img>
				客服热线: <strong>96008/53277764</strong>
			</div>
			<ul>
				<s:if test="#session.existUser == null">
					<li id="headerLogin" class="headerLogin"
						style="display: list-item;"><a
						href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>/</li>
					<li id="headerRegister" class="headerRegister"
						style="display: list-item;"><a
						href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>/
					</li>
				</s:if>
				<s:else>
					<li id="headerLogin" class="headerLogin"
						style="display: list-item;"><s:property
							value="#session.existUser.name" /> /</li>
					<li id="headerLogin" class="headerLogin"
						style="display: list-item;"><a
						href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>
						/</li>
					<li id="headerRegister" class="headerRegister"
						style="display: list-item;"><a
						href="${ pageContext.request.contextPath }/user_quit.action">退出</a>/
					</li>
				</s:else>
				<li><a href="aboutus.jsp">关于我们</a></li>
			</ul>
		</div>
	</div>
    
	<div style="padding:10px 0; width:100%;height:60px;background-color:white;display:flex;">
		<div class="span5" style="background-color:white;">
		<div class="logo" >
			<img style="margin-left: 10px; width: 50px; height: 50px;margin-bottom:10px;"
				src="${pageContext.request.contextPath}/image/r___________renleipic_01/11.jpg" />
			<span style="font-size: 20px;">网上商城</span>
		</div>
	</div>
	<div class="span9" style="background-color:white;">
		<div class="headerAd">
			<img src="${pageContext.request.contextPath}/image/header.jpg"
				width="320" height="50" />
		</div>
	</div>
	
	<div class="span9" style="margin:10px auto auto 300px;background-color:white; ">
	<div class="headerAd">
			<input name="productName" id="productName" value=<s:property value="productName"/>> 
			<input type="button" value="搜索"  onclick="findByPname()" style="background-color:black;color:white;width:80px;height:40px;text-align:left;">
	</div>
	</div>
	
	</div>

	<div class="span24" style="width:100%;height:37px;background-color:black;">
		<ul class="mainNav" style="display:flex;font-size:16px;">
			<li><a href="${ pageContext.request.contextPath }/index.action">首页</a>
				|</li>
			<s:iterator var="c" value="#session.cList">
				<li>
				<a
					href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1">
					<s:property value="#c.cname" />
					</a> |</li>
			</s:iterator>

		</ul>
	</div>
</div>
</body>
</html>
