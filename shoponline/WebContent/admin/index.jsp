<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>网上商城管理中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath }/css/general.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
  background-image: url("../images/city.jpg");
  background-repeat:no-repeat;
 background-size:cover;/*让图片背景基于容器大小伸缩*/
 background-attachment:fixed;/* 当内容高度大于图片高度时，背景图像的位置相对于viewport的固定 */
}
#container{
margin-left: 550px;
margin-top: 100px;
font-size: 16px;
width: 270px;
height:240px;
border:1px solid #d9d9d9;
border-radius: 4px;
box-shadow: 0 1px 6px #ccc;
background-color: rgb(205,205,205);
padding-top:80px;
padding-left:10px;

}
button{
    background-color: rgb(39,130,150);
    border-radius: 2px;
    margin-left: 27px;
    border: none;
    width: 200px;
    height: 30px;
}
input{
   border: 0;
   height: 20px;
}
input:focus
{
   outline: none;
}
</style>
</head>
<body>
<div id="container">
    <form method="post" action="${pageContext.request.contextPath }/adminUser_login.action" target="_parent" name='theForm' onsubmit="return validate()">
        <div>
            <span>管理员密码:</span>
            <input type="text" name="username"></input>
        </div>
        <div style="margin-top: 10px;margin-bottom: 25px;">
            <span>管理员密码:</span>
            <input type="password" name="password"></input>
        </div >
         <button>进入后台系统</button>
    </form>
</div>
<script language="JavaScript">
  document.forms['theForm'].elements['username'].focus();
  /**
   * 检查表单输入的内容
   */
  function validate()
  {
    var validator = new Validator('theForm');
    validator.required('username', user_name_empty);
    if (document.forms['theForm'].elements['captcha'])
    {
      validator.required('captcha', captcha_empty);
    }
    return validator.passed();
  }
</script>
</body>