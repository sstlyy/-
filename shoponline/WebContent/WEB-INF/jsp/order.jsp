<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<style>
        .aaa{
            text-decoration: none;
            display: inline-block;
            width: 200px;
            height: 50px;
            background-color: rgb(35,160,219);
            text-align:center;
            line-height: 50px;
            color: white;
            margin-left: 80%;
            font-size: 25px;
        }
    
		.cc{
            display: inline-block;
            width: 50px;
            height: 30px;
            background-color: gray;
            text-align: center;
            margin:10px;
			color: white;
            line-height: 30px;
        }
        .cc:hover{
               background-color: rgb(35,160,219);
            color:white;
        }
       
        .ipt{
        border-radius:2px;
        border:none;
        height:30px;
        outline:none;
        border:1px solid rgb(242,242,242);;
        }
    </style>
<title>订单页面</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>
	
</head>
<script src="http://localhost:8080/shoponline/js/jquery.min.js"></script>
<body>
<%@ include file="menu.jsp" %>
<div class="container cart" style="margin-bottom:20px;">

		<div class="span24">
		<div class="step step1" style="text-align:center;margin:10px;">
			生成订单成功
			</div>
				<table>
					<tbody>
					<tr>
						<th colspan="6">订单编号:<s:property value="model.oid"/>&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<th>图片</th>
						<th>商品名</th>
						<th>商品详情</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
					</tr>
						<s:iterator var="orderItem" value="model.orderItems">
						<tr>
							<td width="60">
								<img src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"/>
							</td>
							<td>
								<s:property value="#orderItem.product.pname"/>
							</td>
							<td>
								<s:property value="#orderItem.product.pdesc"/>
							</td>
							<td>
								<s:property value="#orderItem.product.shop_price"/>
							</td>
							<td class="quantity" width="60">
								<s:property value="#orderItem.count"/>
							</td>
							<td width="140">
								<span class="subtotal">￥<s:property value="#orderItem.subtotal"/></span>
							</td>
							
						</tr>
						</s:iterator>
				</tbody>
			</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
					商品金额: <strong id="effectivePrice">￥<s:property value="model.total"/>元</strong>
				</div>
				
	         <form id="orderForm" action="${pageContext.request.contextPath }/order_payOrder.action" method="post">
				<input type="hidden" name="oid" value="<s:property value="model.oid"/>"/>
				<div class="span24">
					<p>
							收货地址：<input name="addr" type="text" disabled value="<s:property value="model.user.addr"/>" style="width:350px" />
								<br />
							收货人&nbsp;&nbsp;&nbsp;：<input name="name" disabled type="text" value="<s:property value="model.user.name"/>" style="width:150px" />
								<br /> 
							联系方式：<input name="phone" type="text" disabled value="<s:property value="model.user.phone"/>" style="width:150px" />
                         <a class="cc">修改</a>
						</p>
					
						 <a href="javascript:document.getElementById('orderForm').submit();" class="aaa">提交</a>	
					
				</div>
			</form>
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
<script>
    $('.cc').click(function(){
        $("input").removeAttr("disabled")
    })
</script>
</html>

