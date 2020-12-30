<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>配送方式</title>
    <style>
       body{
        background:rgb(231,234,237);
        letter-spacing: 1px;
        line-height:30px;
       }
 
        .title {
            text-align: center;
            margin-top: 50px;
        }

        .div {
            width: 80%;
            margin: auto;
            padding-top:10px;
             padding-bottom:30px;
            box-shadow: 0 1px 6px #ccc;
              background:rgb(255,255,255);
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
            font-size: 5px;
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
            font-size: 5px;
            text-align: center;
            color: gray;
        }
        .daohang{
            width: 10%;
            position: absolute;
            left: 0px;
            top: 100px;
        }
        .daohang>a{
            height: 60px;
            border: 1px solid black;
            display: block;
            text-align: center;
            line-height: 60px;
            font-weight: 700;
            
            
        }
        .daohang>a:hover{
            background-color: blue;
        }
        .shengming{
            background-image: url(underline/peisong.jpg);
            width: 600px;
            height: 600px;
            background-size: cover;
            background-position: center;
            margin: auto;
        }
    </style>
</head>
<body>
    <div class="div">
        <h2 class="title">配送方式</h2>
   
<div class="div1">买家在齐家商城订购商品后，根据各店铺提供的配送服务，大致有四种配送方式可供选择：</div>
<h3>1）快递</h3>
<div class="div1">商城中所售的零散五金件等，如：龙头花洒、水槽、灯具、开关、五金、家居商品、以及小家具等可通过快递方式发货。</div>
<h3>2）物流</h3>
<div class="div1">商城中所售的大件商品，如：家具、床垫、地毯等商品，可通过物流方式发货。</div>
<h3>3）EMS</h3>
<div class="div1">部分快递不可达地区，建议买家与商家协商使用EMS方式运送商品。</div>
<h3>4）平邮</h3>
<div class="div1">部分纸质凭证、抵用券或微小件商品，建议买家可与商家协商，使用平邮方式寄送，以节省运送费用。</div>
<br>
      <div class="shengming"></div>
<br>
<div class="div1">商家发货后，会将快递或物流货运公司名称以及快递信息显示在用户的订单信息中，用户可以方便查询订单发货详情。</div>

<div class="div1"><strong>注：</strong>齐家商城部分店铺具备实体门店，有条件的买家亦可网上下订后，前往实体门店看样或自行提货。</div>
  
<div class="div2">
			<ul>
				<a href="${pageContext.request.contextPath}/service.jsp">服务声明</a>
				<a href="${pageContext.request.contextPath}/aboutus.jsp">关于我们</a>
				<a href="${pageContext.request.contextPath}/connectus.jsp">联系方式</a>
				<a href="${pageContext.request.contextPath}/friendlink.jsp">友情链接</a>
				<a style="color:blue" href="${pageContext.request.contextPath}/send.jsp">配送方式</a>
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
				<a style="color:blue" href="${pageContext.request.contextPath}/aboutus.jsp">关于我们</a> 
				<a href="${pageContext.request.contextPath}/friendlink.jsp">友情链接</a> 
		</div>
    </div>
</body>
</html>