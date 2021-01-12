<%--
前台会员登录
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../../foreinclude/foreHander.jsp"%>


<div class="breadcrumb-area pt-15 pb-15">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!--=======  容器  =======-->

                <div class="breadcrumb-container">
                    <nav>
                        <ul>
                            <li
                                    class="parent-page"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
                            <li>登录</li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>


<!--=============================================
=           登录注册页面内容         =
=============================================-->

<div class="page-section mb-50">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-3 col-xs-12">


            </div>
            <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
                <!-- 登录表单-->
                <form action="${pageContext.request.contextPath}/fore/foreLogin" method="post" class="loginForm">

                    <div class="login-form">
                        <div class="loginErrorMessageDiv">
                            <div class="alert alert-danger">
                                <span class="errorMessage">${msg}</span>
                            </div>
                        </div>
                        <h4 class="login-title">登录</h4>

                        <div class="row">
                            <div class="col-md-12 col-12 mb-20">
                                <label>用户名</label>
                                <input name="name" id="name" class="mb-0" type="name" placeholder="请输入用户名">
                            </div>
                            <div class="col-12 mb-20">
                                <label>密码</label>
                                <input name="password" id="password" class="mb-0" type="password" placeholder="请输入密码">
                            </div>

                            <div class="col-md-12">
                                <button type="submit" class="register-button mt-0">登陆</button>
                            </div>

                        </div>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("div.loginErrorMessageDiv").hide();
        //验证不能为空
        $("form.loginForm").submit(function(){
            if(0==$("#name").val().length||0==$("#password").val().length){
                $("span.errorMessage").html("账号或密码不能为空");
                $("div.loginErrorMessageDiv").show();
                return false;
            }
            return true;
        });
        if("${msg}"=="true"){
            $("span.errorMessage").html("账号或密码错误");
            $("div.loginErrorMessageDiv").show();
        }
    })
</script>
<!--=============================================
=          引入页脚         =
=============================================-->
<%@ include file="../../foreinclude/foreFooter.jsp"%>
