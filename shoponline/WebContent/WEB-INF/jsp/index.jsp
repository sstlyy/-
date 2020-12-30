<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>网上商城</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index1.css">
<link href="${pageContext.request.contextPath}/css/slider.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/public.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/iconfont.css">
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<!--页面的整体布局  -->
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />

<style>
/* object-fit
         fill 默认，不保证保持原有的比例，内容拉伸填充整个内容容器。
         contain 保持原有尺寸比例。内容被缩放。
         cover 保持原有尺寸比例。但部分内容可能被剪切。
         none 保留原有元素内容的长度和宽度，也就是说内容不会被重置。
         scale-down 保持原有尺寸比例。内容的尺寸与 none 或 contain 中的一个相同，取决于它们两个之间谁得到的对象尺寸会更小一些。
         initial 设置为默认值
          inherit 从该元素的父元素继承属性。
         */
.fbc-list-item li {
	/* object-fit: cover;         */
	width: 976px;
	height: 340px;
	position: absolute;
}

.fbc-list-item li.now {
	opacity: 1;
}
/**1代表完全不透明**/
.fbc-list-item li.others {
	opacity: 0;
}
/**1代表完全透明**/
.fbc-trigger-con li:hover {
	color: rgb(0, 117, 209);
}
/* 类选择器 */
.imgbox {
	width: 100%;
	height: 35%;

}

.img {
	width: 100%;
	height: 35%;
	display: none;
}
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="container" style="width: 80%;">
		<div class="s_bg_top"
			style="background-image: url(./img/back.jpg); background-repeat: no-repeat;">
			<div class="focus-banner">
				<div class="focus-banner-con-wrq">
					<div class="focus-banner-con">
						<ul class="fbc-list-item"
							style="margin-left: -70px; margin-top: -50px;">
							<li class="now fbc-list-item"><a href="" target="_blank">
									<img src="${pageContext.request.contextPath}/lastig/111.jpg"
									alt="111"></li>
									<s:iterator var="p" value="bList">
							        <li class="others fbc-list-item">
									<a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"> 
								    <img class="ltart-clkable" src="${pageContext.request.contextPath}/<s:property value="#p.bimage"/>"></a>
								    </li>
								   </s:iterator>
						</ul>
					</div>

					<div class="fbc-trigger">
						<ul class="fbc-trigger-con" style="margin-top: 25px;">
							<li onclick="pre()">上一页</li>
							<li onclick="next()">下一页</li>
						</ul>

					</div>
					<script>
						var index = 0;
						var lis = document.getElementsByTagName("li");
						var indexlength = lis.length - 1;//长度-1是最后一个的索引
						function pre() {
							index--;
							if (index < 0) {
								index = indexlength;
							}
							for (var i = 0; i < lis.length-1; i++) {
								lis[i].className = "others";
							}
							lis[index].className = "now";
						};
						
						function next() {
							index++;
							if (index > indexlength) {
								index = 0;
							}
							for (var i = 0; i < lis.length-1; i++) {
								lis[i].className = "others";
							}
							lis[index].className = "now";
						};
							
					</script>


				</div>

			</div>

		</div>

		<div class="fetch-coupon-operation"
			style="background-color: white; width: 97%;">
			<div class="lightart-wrap-box  ">
				<div
					class="ltart-flexbox ltart-flexbox-direction-row ltart-flexbox-flexwrap-wrap"
					style="left: 100px; top: 0px; width: 100%; height: 100%; position: relative;">
					<div
						style="width: 1000px; height: 316px; white-space: nowrap; overflow: hidden; position: relative;">
						<div class="ltart-clkable"
							style="left: 0px; top: 0px; width: 1000px; height: 316px; position: absolute;">
							<img class="ltart-clkable"
								src="${pageContext.request.contextPath}/lastig/today_DDp.png"
								style="left: 0px; top: 0px; width: 1000px; height: 102px; overflow: hidden; object-fit: cover; position: absolute;">
							<div style="display: flex; padding-top: 100px;">
								<s:iterator var="p" value="tList">
									<a target="_blank"
										href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
										target="_blank"> <img class="ltart-clkable"
										src="${pageContext.request.contextPath}/<s:property value="#p.bimage"/>"></a>
								</s:iterator>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="width: 100%; padding-top: 0px;"></div>
		<div class="year_goods clearfix"
			style="background-color: rgb(242, 242, 242);">
			<s:iterator var="p" value="iList">
				<a target="_blank"
					href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
					target="_blank"> <img
					src="${pageContext.request.contextPath}/<s:property value="#p.bimage"/>"
					style="display: block;"></a>
			</s:iterator>
		</div>

		<div style="width: 100%; margin-top: 10px;"></div>
		<div class="garment">
			<div class="garment_left" style="width: 100%;">
				<div class="garment_top clearfix">
					<div class="tv">蔬菜水果&nbsp;&nbsp;</div>
				</div>
				<div class="garment_body clearfix"
					style=" dispaly: flex; width: 100%;">
					<div class="garment_body_lift">
						<div class="imgbox">
							<img class="img-slide img" style="width: 370px;"
								src="${pageContext.request.contextPath}/products/15720897208_1347985885.220x220.jpg" alt="">
							<img class="img-slide img" style="width: 370px;"
								src="${pageContext.request.contextPath}/products/19603990789_1347985885.220x220.jpg" alt="">
							<img class="img-slide img" style="width: 370px;"
								src="${pageContext.request.contextPath}/image/7.jpg" alt="">
						</div>
						<script type="text/javascript">
							// index：索引， len：长度
							var index = 0, len;
							// 类似获取一个元素数组
							var imgBox = document
									.getElementsByClassName("img-slide");
							len = imgBox.length;
							imgBox[index].style.display = 'block';
							// 逻辑控制函数
							function slideShow() {
								index++;
								// 防止数组溢出
								if (index >= len)
									index = 0;
								// 遍历每一个元素
								for (var i = 0; i < len; i++) {
									imgBox[i].style.display = 'none';
								}
								// 每次只有一张图片显示
								imgBox[index].style.display = 'block';
							}
							// 定时器，间隔3s切换图片
							setInterval(slideShow, 3000);
						</script>
						<div class="l_box">
							<div class="a1">蔬菜水果</div>
							<div class="a2">今日热销质量保证</div>
						</div>
					</div>
					<div class="garment_body_right" style="width: 800px;">
						<s:iterator var="p" value="fList">
							<div class="goods">
								<div class="a1">
									<s:property value="#p.pname" />
								</div>
								<div class="a2">
									&yen;
									<s:property value="#p.shop_price" />
								</div>
								<div class="a3">
									<a target="_blank"
										href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
										target="_blank"> <img
										src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
										style="display: block;"></a>
								</div>
							</div>
						</s:iterator>
					</div>
				</div>
			</div>
		</div>

		<div class=" guess ">
			<div class=" guess_title ">
				<div class=" a ">热门商品</div>
			</div>
			<div class=" guess_content ">
				<s:iterator var="p" value="hList">
					<div class=" guess_content_box clearfix ">

						<div class=" big_box ">

							<div class=" guess_content_box_img ">
								<a target="_blank"
									href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
									target="_blank"> <img
									src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
									data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg"
									style="display: block;"></a>
							</div>
							<div class=" text ">
								<span><s:property value="#p.pname" /></span>
							</div>
							<div class=" guess_content_price clearfix ">
								<div class=" yen ">
									&yen;<span><s:property value="#p.shop_price" /></span>
								</div>

							</div>
							<div class=" guess_content_food1 clearfix "
								style="margin-right: 10px;">
								<div class=" a "
									style="background-color: red; width: 50px; text-align: center;">最新</div>
							</div>

						</div>

					</div>
				</s:iterator>

			</div>

		</div>
		<div style="margin-top: 2px; width: 140%;"></div>
		<div class=" guess ">
			<div class=" guess_title ">
				<div class=" a ">最新商品</div>
			</div>
			<div class=" guess_content ">
				<s:iterator var="p" value="nList">
					<div class=" guess_content_box clearfix ">

						<div class=" big_box ">

							<div class=" guess_content_box_img ">
								<a target="_blank"
									href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
									target="_blank"> <img
									src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
									data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg"
									style="display: block;"></a>
							</div>
							<div class=" text ">
								<span><s:property value="#p.pdesc" /></span>
							</div>
							<div class=" guess_content_price clearfix ">
								<div class=" yen ">
									&yen;<span><s:property value="#p.shop_price" /></span>
								</div>

							</div>
							<div class=" guess_content_food1 clearfix "
								style="margin-right: 10px;">
								<div class=" a "
									style="background-color: red; width: 50px; text-align: center;">最新</div>
							</div>

						</div>

					</div>
				</s:iterator>

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
			style="height: 160px; width: 100%; background-color: black;">
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
	</div>
</body>
</html>