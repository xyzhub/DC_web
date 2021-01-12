<%--
 后台登录
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>校园点餐系统后台登陆</title>

    <style type="text/css">
        *{padding:0px;margin:0px;}
        body{font-family:Arial, Helvetica, sans-serif;background:url(${pageContext.request.contextPath}/images/login_sysbg.png);font-size:12px;}
        img{border:0;}
        .lg{width:468px;height:468px;margin:100px auto}
        .lg_top{ height:200px;width:468px;}
        .lg_main{width:400px;height:180px;margin:0 25px;}
        .lg_m_1{width:290px;height:100px;padding:60px 55px 20px 55px;}
        .ur{height:37px;line-height:37px;border:1px;color:#FF0000;width:236px;margin:4px 28px;background:url(${pageContext.request.contextPath}/images/user.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
        .pw{height:37px;line-height:37px;border:1px;color:#FF0000;width:236px;margin:4px 28px;background:url(${pageContext.request.contextPath}/images/password.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
        .bn{width:90px;height:30px; border:0;margin-left:110px;display:block;font-size:18px;color:#000000;background:url(${pageContext.request.contextPath}/images/login_bg1.png);font-family:Arial, Helvetica, sans-serif;font-weight:bolder;cursor:pointer;}
        .lg_foot{height:80px;width:330px;padding: 6px 68px 0 68px;}
    </style>

</head>

<body>

<div class="lg">
<%--    跳转到LoginController验证--%>
    <form action="${pageContext.request.contextPath}/login" method="POST">
        <div class="lg_top"></div>
        <div class="lg_main">
            <div class="lg_m_1">
                ${error}
                <input name="name" id="name" placeholder="用户名" value="" class="ur" />
                <input name="password" id="password" placeholder="密码" type="password" value="" class="pw" />

            </div>
        </div>
        <div class="lg_foot">
            <input type="submit" value="登录" class="bn" /></div>
    </form>
</div>

</body>
</html>