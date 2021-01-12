<%--
商品详情页面
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
                            <li class="parent-page"><a href="${pageContext.request.contextPath}/fore/foreIndex">首页</a></li>
                            <li class="parent-page"><a href="#">商品</a></li>
                            <li>详细信息</li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>



<!--=============================================
=           单一产品内容区域        =
=============================================-->

<div class="single-product-content-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-6 col-xs-12 mb-xxs-25 mb-xs-25 mb-sm-25">
                <!-- 单个图标 -->
                <div class="product-image-slider fl-product-image-slider fl3-product-image-slider">
                    <!--餐品大图展示区域 -->
                    <div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list" id="myTabContent">
                        <div class="tab-pane fade show active" id="single-slide-1" role="tabpanel" aria-labelledby="single-slide-tab-1">
                            <!--单一餐品图片-->
                            <div class="single-product-img img-full">
                                <img src="${pageContext.request.contextPath}/${product.imageurl}" class="img-fluid" alt="">
                                <a href="${pageContext.request.contextPath}/${product.imageurl}" class="big-image-popup"><i class="fa fa-search-plus"></i></a>
                            </div>

                        </div>
                    </div>
                    <!--产品大图结束-->

                    <!--产品小图滑块开始区域-->
                    <div class="product-small-image-list fl-product-small-image-list fl3-product-small-image-list">
                        <div class="nav small-image-slider fl3-small-image-slider" role="tablist">
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-1" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/a.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-2" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/b.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-3" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/c.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-4" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/d.jpg" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-5" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/e.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
                <!--产品小滑块结束 -->
            </div>

            <div class="col-lg-6 col-md-6 col-xs-12">
                <!-- 产品视图说明 -->
                <div class="product-feature-details">
                    <h2 class="product-title mb-15">${product.name}</h2>

                    <div class="rating d-inline-block mb-15">
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star"></i>
                    </div>

                    <p class="d-inline-block ml-10 review-link">
                        <a href="#">
                            <c:if test="${rs==null}">(0 customer review)</c:if>
                            <c:if test="${rs!=null}">(${rs} customer review)</c:if>
                        </a>
                    </p>

                    <h2 class="product-price mb-0">
                        <span class="main-price discounted">￥${product.price+15}</span>
                        <span class="discounted-price"> ￥${product.price}</span>
                    </h2>

                    <p class="product-description mb-20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所有食品来源已严格把关，无食品安全问题，请您放心食用，赶快行动起来吧！
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;卖家承诺，如果有任何食品安全问题，无条件全额退款！
                    </p>

                    <div class="cart-buttons mb-20">
                        <span class="quantity-title mr-10">数量: </span>
                        <div class="pro-qty mb-20">
                            <input type="text" value="1" id="num">
                        </div>
                        <div class="add-to-cart-btn d-block">
                            <a href="#" class="fl-btn" id="add_cart"><i class="fa fa-shopping-cart"></i> 添加购物车</a>
                        </div>
                    </div>

                    <p class="wishlist-link mb-20 pb-15">
                        <a href="javascript:;" id="nowPayment"> <i class="icon ion-md-options"></i> 立即购买</a>
                    </p>

                    <div class="category-list-container mb-20">
                        <span>商家: </span>
                        <ul>
                            <li><a href="#">${product.user.name}</a>,</li>
                        </ul>
                    </div>

                    <div class="social-share-buttons">
                        <h3>分享该商品</h3>
                        <ul>
                            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a class="pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- 产品快速浏览说明结束 -->
            </div>
        </div>
    </div>
</div>

<!--=====  单一商品结束 ======-->

<!--=======  餐品描述评价区域   =======-->

<div class="product-description-review-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!--=======  餐品描述评价区域容器 =======-->

                <div class="tab-slider-wrapper product-description-review-container">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="description-tab" data-toggle="tab" href="#product-description" role="tab"
                               aria-selected="true">描述</a>
                            <a class="nav-item nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab"
                               aria-selected="false">评价</a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="product-description" role="tabpanel" aria-labelledby="description-tab">
                            <!--=======  餐品描述  =======-->
                            <div class="product-description">
                                <p>商家所在地：${product.user.address}</p>
                                <p>人气：${product.zan}</p>
                                <p>销量：${product.number}</p>
                                <p>销量：${product.number}</p>
                                <p>商品描述：${product.miaoshu}</p>
                            </div>

                            <!--=======  结束  =======-->
                        </div>
                        <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                            <!--=======  评论内容区域  =======-->
                        <c:if test="${reviews.size()==0}">
                            <div class="product-ratting-wrap">
                                <div class="ratting-list">
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <span>(0)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(0)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(0)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(0)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(0)</span>
                                    </div>
                                </div>
                                <div class="rattings-wrapper">
                                        <div class="sin-rattings">
                                            <div class="ratting-author">
                                                <h3>该商品暂无评论！</h3>
                                            </div>

                                        </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${reviews.size()>0}">
                            <div class="product-ratting-wrap">
                                <div class="ratting-list">
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <span>(5)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(3)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(1)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(0)</span>
                                    </div>
                                    <div class="sin-list float-left">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(0)</span>
                                    </div>
                                </div>
                                <c:forEach items="${reviews}" var="review">
                                <div class="rattings-wrapper">

                                    <div class="sin-rattings">
                                        <div class="ratting-author">
                                            <h3>${review.customer.name}</h3>
                                            <div class="ratting-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <span>(5)</span>
                                            </div>
                                        </div>
                                        <p>${review.content}</p>
                                    </div>


                                </div>
                                </c:forEach>
                            </div>
                        </c:if>
                            <!--=======  评论内容区域结束  =======-->
                        </div>
                    </div>
                </div>

                <!--=======  产品说明评价容器结束 =======-->
            </div>
        </div>
    </div>
</div>

<!--======= 产品说明评价区域结束  =======-->

<!--=============================================
=            相关餐品滑块区域         =
=============================================-->

<div class="related-product-slider-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!--=======  章节标题  =======-->

                <div class="section-title">
                    <h2>为您推荐</h2>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <!--=======  标签产品滑块区域  =======-->
                <div class="fl-slider tab-product-slider">
                    <!--=======  单个商品  =======-->
                    <c:forEach items="${fivePro}" var="pf">
                    <div class="fl-product">
                        <div class="image">
                            <a href="foreDetailUI?id=${pf.id}">
                                <img src="${pageContext.request.contextPath}/${pf.imageurl}" class="img-fluid" alt="">
                                <img src="${pageContext.request.contextPath}/${pf.imageurl}" class="img-fluid" alt="">
                            </a>

                        </div>
                        <div class="content">
                            <h2 class="product-title"> <a href="foreDetailUI?id=${pf.id}">${pf.name}</a></h2>
                            <div class="rating">
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p class="product-price">
                                <span class="main-price discounted">￥${pf.price+15.1}</span>
                                <span class="discounted-price">￥${pf.price}</span>
                            </p>
                        </div>
                    </div>
                    </c:forEach>
                    <!--=======  单个商品区域结束  =======-->
                </div>
                <!--=======  标签产品滑块结束  =======-->
            </div>
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  id="myModal" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!--登陆框头部-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    ×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    欢迎登陆！
                </h4>
            </div>
            <!--登陆框中间部分(from表单)-->
            <div class="modal-body">
               <%-- <form class="form-horizontal">--%>
                   <div class="loginErrorMessageDiv">
                       <div class="alert alert-danger" >
                           <span class="errorMessage"></span>
                       </div>
                   </div>
                    <!--用户框-->
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="name" id="name" placeholder="请输入用户名" required="required">
                        </div>
                    </div>
                    <!--密码框-->
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label" >密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" required="required">
                        </div>
                    </div>
                    <!--登陆按钮-->
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-default" id="modalLogin">登录</button>
                        </div>
                    </div>
                <%--</form>--%>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("div.loginErrorMessageDiv").hide();//隐藏小窗口登录框
        var number;
        //立即购买按钮
        $("#nowPayment").click(function(){
            //ajax判断是否登陆
            $.get(
                "foreIsLogin",
                function(result) {
                    if (result=="true"){ //
                        number = $("#num").val();
                        var totalPrice = number*${product.price};
                        location.href= "forebuyone?pid=${product.id}&number="+number+"&totalPrice="+totalPrice;
                    }else {  //未登录
                        $('#myModal').modal('show')
                    }
                }
            );//登陆结束
        });
        //添加到购物车
        $("#add_cart").click(function () {
            $.get(
                "foreIsLogin",
                function(result) {
                    if (result=="true"){ //已登录则加入购物车
                        //ajax添加到购物车
                        number = $("#num").val();
                        var totalPrice = number*${product.price};
                        $.get(
                            "foreAddCart",
                            {pid:${product.id},number:number,totalPrice:totalPrice},
                            function(data){
                                if(data=="success"){
                                    alert("添加购物车成功");
                                }else{
                                    alert("添加购物车失败");
                                }
                            }
                        );//添加购物车结束
                    }else {  //未登录
                        $('#myModal').modal('show')
                    }
                }
            );//登陆结束
        });
        //弹出窗口登陆
        $("#modalLogin").click(function () {
            var name = $("#name").val();
            var password = $("#password").val();

            if(0==name.length||0==password.length){
                $("span.errorMessage").html("请输入账号密码");
                $("div.loginErrorMessageDiv").show();
                return false;
            }

            $.get(
                "foreMtLogin",
                {name:name,password:password},
                function (result) {
                    if("true"==result){
                        location.reload();
                    }else{
                        $("span.errorMessage").html("账号或密码错误");
                        $("div.loginErrorMessageDiv").show();
                    }
                }
            );
        });

    });
</script>
<!--=====  引入页脚  ======-->
<%@ include file="../../foreinclude/foreFooter.jsp"%>