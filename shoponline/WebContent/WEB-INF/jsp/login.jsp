<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0080)http://localhost:8080/mango/login.jhtml?redirectUrl=%2Fmango%2Fcart%2Flist.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>会员登录</title>

<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/login.css"
	rel="stylesheet" type="text/css" />


</head>
<body>
	<%@ include file="menu.jsp" %>
	<div class="container login">
		<div class="span12">
			<div class="ad">
				<img src="${pageContext.request.contextPath}/image/login.jpg"
					width="500" height="330" alt="会员登录" title="会员登录">
			</div>
		</div>
		<div class="span12 last">
			<div class="wrap">
				<div class="main">
					<div class="title">
						<strong>会员登录</strong>USER LOGIN

					</div>
					<div>
						<s:actionerror />
					</div>
					<form id="loginForm"
						action="${ pageContext.request.contextPath }/user_login.action"
						method="post" novalidate="novalidate">
						<table>
							<tbody>
								<tr>
									<th>用户名:</th>
									<td><input type="text" id="username" name="username"
										class="text" maxlength="20"></td>
								</tr>
								<tr>
									<th>密&nbsp;&nbsp;码:</th>
									<td><input type="password" id="password" name="password"
										class="text" maxlength="20" autocomplete="off"></td>
								</tr>


								<tr>
									<th>&nbsp;</th>
									<td><input type="submit" class="submit"  style="background-color:black;color:white;width:80px;height:40px;text-align:center;" value="登 录"></td>
								</tr>
								<tr class="register">
									<th>&nbsp;</th>
									<td>
										<dl>
											<dt>还没有注册账号？</dt>
											<dd>
												立即注册即可体验在线购物！ <a
													href="${ pageContext.request.contextPath }/user_registPage.action">立即注册</a>
											</dd>
										</dl>
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
		<div class="span24" style="height:20%;width:100%;background-color:white;" >
			<div class="footerAd" >
				<img src="${pageContext.request.contextPath}/image/footer.jpg"
					width="100%" height="30%" alt="我们的优势" title="我们的优势" />
			</div>
		</div>
		<div class="container footer" style="height:100px;width:80%;background-color:black;">
		<div class="span24">
			<ul class="bottomNav" style="padding:10px;">
				<li>
						<a href="aboutus.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于我们</a>
						|
					</li>
					<li>
						<a href="connectus.jsp">联系我们</a>
						|
					</li> 
					<li>
						<a href="law.jsp">法律声明</a>
						|
					</li>
					<li>
						<a href="friendlink.jsp">友情链接</a>
						|
					</li>
					<li>
						<a href="send.jsp">配送方式</a>
						|
					</li>
					<li>
						<a href="service.jsp">服务声明</a>
					</li>
			</ul>
		</div>
		<div class="span24" >
			<div class="copyright">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Copyright © 2005-2015 网上商城 版权所有</div>
		</div>
	</div>
</body>
</html>