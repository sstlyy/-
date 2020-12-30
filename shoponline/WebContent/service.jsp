<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>服务声明</title>
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
            background-image: url(underline/shengming.jpg);
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
        <h2 class="title">服务声明</h2>
        <div class="shengming"></div>

     <div class="div2">
			<ul>
				<a style="color:blue" href="${pageContext.request.contextPath}/service.jsp">服务声明</a>
				<a href="${pageContext.request.contextPath}/aboutus.jsp">关于我们</a>
				<a href="${pageContext.request.contextPath}/connectus.jsp">联系方式</a>
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