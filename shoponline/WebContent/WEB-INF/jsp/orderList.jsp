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
<link href="${pageContext.request.contextPath}/css/product.css"
	rel="stylesheet" type="text/css" />

</head>
<body>

	<%@ include file="menu.jsp" %>
	<div class="container cart">

		<div class="span24">
<div class="step step1" style="text-align:center;margin:10px;">
		我的订单
			</div>


			<table>
				<tbody>
					<s:iterator var="order" value="pageBean.list">
						<tr>
							<th colspan="6">订单编号:<s:property value="#order.oid" />&nbsp;&nbsp;&nbsp;&nbsp;订单金额:<font
								color="red"><s:property value="#order.total" />
							</font>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">
								<s:if test="#order.state == 1">
									<a href="${ pageContext.request.contextPath }/order_findByOid.action?oid=<s:property value="#order.oid" />">付款</a>
								</s:if>
								<s:if test="#order.state == 2">
									已付款
								</s:if>
								<s:if test="#order.state == 3">
									<a href="${ pageContext.request.contextPath }/order_updateState.action?oid=<s:property value="#order.oid" />">确认收货</a>
								</s:if>
								<s:if test="#order.state == 4">
									交易成功
								</s:if>
							</font>
							</th>
						</tr>
						<tr>
							<th>图片</th>
							<th>商品名</th>
							<th>商品详情</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>
						</tr>
						<s:iterator var="orderItem" value="#order.orderItems">
							<tr>
								<td width="60"><img
									src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>" />
								</td>
								<td><s:property value="#orderItem.product.pname" /></td>
								<td><s:property value="#orderItem.product.pdesc" /></td>
								<td><s:property value="#orderItem.product.shop_price" /></td>
								<td class="quantity" width="60"><s:property
										value="#orderItem.count" /></td>
								<td width="140"><span class="subtotal">￥<s:property
											value="#orderItem.subtotal" />
								</span></td>
							</tr>
						</s:iterator>
					</s:iterator>
					<tr>
						<th colspan="6">
						<div class="pagination">
							<span>第<s:property value="pageBean.page" />/<s:property
								value="pageBean.totalPage" />页 </span>
								<s:if test="pageBean.page != 1">
								<a
									href="${ pageContext.request.contextPath }/order_findByUid.action?page=1"
									class="firstPage">&nbsp;</a>
								<a
									href="${ pageContext.request.contextPath }/order_findByUid.action?page=<s:property value="pageBean.page-1"/>"
									class="previousPage">&nbsp;</a>
							</s:if> <s:iterator var="i" begin="1" end="pageBean.totalPage">
								<s:if test="pageBean.page != #i">
									<a
										href="${ pageContext.request.contextPath }/order_findByUid.action?page=<s:property value="#i"/>"><s:property
											value="#i" />
									</a>
								</s:if>
								<s:else>
									<span class="currentPage"><s:property value="#i" />
									</span>
								</s:else>
							</s:iterator> <s:if test="pageBean.page != pageBean.totalPage">
								<a class="nextPage"
									href="${ pageContext.request.contextPath }/order_findByUid.action?page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
								<a class="lastPage"
									href="${ pageContext.request.contextPath }/order_findByUid.action?page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
							</s:if>
							</div>
							</th>
					</tr>
				</tbody>
			</table>


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