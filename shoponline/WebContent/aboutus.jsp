<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>关于我们</title>
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
    </style>
</head>

<body>
    <div class="div">
        <h2 class="title">关于我们</h2>
        <h3>一、简介</h3>
        <div class="div1">
               网上商城，是一个购物网站。是一种全新打造的B2C(Business-to-Consumer，商业零售)。其整合数千家品牌商、生产商，为商家和消费者之间提供一站式解决方案。提供100%品质保证的商品，7天无理由退货的售后服务，以及购物积分返现等优质服务。
        </div>
        <h3>二、服务项目</h3>
        <div class="div1">网上商城为个人的信息提供了保护功能，用户能够在注册激活的状态下才能查看自己的购物情况，保障了用户的隐私。
        </div>
        <h3>三、网上商城</h3>
        <div class="div1">
              网上商城最新开启的B2C服务，服务的主要对象为大型卖家和部分品牌卖家或者授权卖家，主要服务对象包含了教育商城、摩托罗拉、耐克、阿迪达斯等世界知名品牌的代理商和经销商，将商城的品牌价值和品牌意识提高到了新的水平，也进一步稳固了因质量问题和信誉问题而动摇的市场，并且在一定程度上让利给广大的买家，促进了在线商品的多样发展。<br>区别于国内其他大型综合B2C购物平台，网上商城享超过9800万会员，为网购消费者提供快捷、安全、方便的购物体验。提供100%品质保证的商品，7天无理由退货的售后服务，提供购物发票以及购物现金积分等优质服务。同时网上商城在战略中也逐渐成长为网上网重要的一环，成为了网上网的主要服务之一，同时网上商城作为主打的服务品牌也越来越受到广大买家的关注和支持，在新一轮的网上购物博弈中，凭借网上商城打破了之前的低迷态势，正式走出了自己的B2C之路。
        </div>
        <h3>四、信用评价</h3>
        <div class="div1">
            网上信用评价体系由：心、钻石、皇冠三部分构成，并成等级提升，目的是为诚信交易提供参考。并在此过成功保障买家利益，督促卖家诚信交易。<br>这是全网购物保障计划中一条重要措施。此前，网上商城已启动2000万购物保障基金及购买机票六重保障。店铺评价页面升级后，消费者可参考参数更多，并且不限于交易完成后的评价，买家将能够知悉卖家诸多维度的信息，网购将因更公开透明而安全、放心。<br>升级后的评价体系将在以往的评价列表基础上，加上店铺相关信息，包括是否参加消费者保障计划;对消费者有何种承诺;受到处罚的情况。对于已经加入消保的卖家，显示信息包括：该店铺已加入网上网消费者保障服务及对买家的承诺等。对于因为违规被清退出消保的卖家，在被清退后30天之内，将显示：该店铺已被清退出网上消费者保障服务。
        </div>
        <h3>五、商城规则</h3>
        <div class="div1">
            根据协议约定，商家不得销售假货及非原厂正品商品，一旦发现有出售假货及非原厂正品商品，则网上商城有权立即终止协议。<br>网上“商城正品保障”是网上商城商家必须承担的服务内容。具体为，当买家使用支付宝服务购买商家的商品，若买家认定已购得的商品为假货，则有权在交易成功后14 天内按本规则及其他公示规则的规定向网上商城发起针对该商家的投诉，并申请“正品保障”赔付，可以申请的赔付金额以《中华人民共和国产品质量法》、《中华人民共和国消费者权益保护法》及其他法规、部门规章和国家强制性标准规定的该类商品售假赔付金额(含投诉商品回邮邮费)为限。
        </div>
        <h3>六、卖家义务及处理办法</h3>
        <div class="div1">
            1、在网上商城受理买家的“正品保障”赔付申请后，商家需积极配合，并根据网上的要求在规定时间内提供相关证明;<br>2、若商家能有效证明其商品为原厂正品商品，则商城将退回买家“正品保障”赔付申请;<br>3、若商家在规定时间内不能提供相关证明或提供的相关证明明显无效，则商城有权通知支付宝公司自商家的支付宝账户直接划扣商家保证金退还买家的相应款项，并退还买家相应积分;同时，商城有权根据约定终止与商家之间的协议。
        </div>

        <div class="div2">
			<ul>
				<a href="${pageContext.request.contextPath}/service.jsp">服务声明</a>
				<a style="color:blue" href="${pageContext.request.contextPath}/aboutus.jsp">关于我们</a>
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