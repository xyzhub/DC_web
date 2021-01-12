<%--
 前台主界面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../../foreinclude/foreHander.jsp"%>

<div class="hero-area home-four mb-30">
    <!--=======  滑块容器  =======-->
    <div class="slider-container">

        <div class="slider-style-2">
            <!--=======  滑块项目  =======-->
            <div class="hero-slider-item slider-bg-9">
                <!--=======  滑块内容  =======-->
                <div class="d-flex flex-column justify-content-center align-items-start h-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7 col-xl-6 col-md-7 text-center">
                                <div class="slider-content">
                                    <p>因为用心,所以“从未如此美味”</p>
                                    <h1>美味无法抵挡</h1>
                                    <p>现在下单满100元即可享10元优惠，赶快行动起来吧.</p>
                                    <a href="${pageContext.request.contextPath}/fore/foreDetailUI?id=94"
                                       class="slider-btn">查看详情</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <!--=======  滑块跳转 =======-->

            <div class="hero-slider-item slider-bg-10">
                <!--=======  跳转页面内容  =======-->
                <%--跳转页面--%>
                <div class="d-flex flex-column justify-content-center align-items-start h-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7 col-xl-6 col-md-7 text-center">
                                <div class="slider-content">
                                    <p>新客户享受八折优惠</p>
                                    <h1>腊味双拼煲仔饭</h1>
                                    <p>Claypot rice 新品上市.</p>
                                    <a href="${pageContext.request.contextPath}/fore/foreDetailUI?id=89"
                                       class="slider-btn">查看详情</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <!--=======  滑块跳转  =======-->

            <div class="hero-slider-item slider-bg-11">
                <!--=======  跳转页面内容   =======-->

                <div class="d-flex flex-column justify-content-center align-items-start h-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7 col-xl-6 col-md-7 text-center">
                                <div class="slider-content">
                                    <p>寒冬早餐特惠</p>
                                    <h1>温馨美食</h1>
                                    <p>开心享乐惠，品尝好滋味.</p>
                                    <a href="${pageContext.request.contextPath}/fore/foreDetailUI?id=84"
                                       class="slider-btn">查看详情</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

</div>

<!--=====  滑块结束  ======-->

<!--=============================================
=           三个带有横幅和侧边栏的滑块      =
=============================================-->

<c:forEach items="${categories}" var="category" varStatus="vs">

    <div class="slider-banner-sidebar-three mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  三个滑块横幅侧边栏容器  =======-->
                    <div class="slider-banner-sidebar-three-container">
                        <div class="sidebar-container">
                            <!--=======  章节标题 =======-->
                            <div class="section-title-three">
                                <h3 id="${category.id}">${category.name}</h3>
                            </div>
                            <!--=======  侧边栏  =======-->
                            <div class="sidebar">见多食广,美味自享。</div>
                        </div>
                        <!--=======  横幅  =======-->
                        <div class="slider-banner home-four-banner slider-border banner-bg banner-bg-4">
                            <div class="banner-text h-100"></div>
                        </div>

                        <div class="fl-slider tab-product-slider">
                            <c:forEach items="${category.products}" var="product">
                                <div class="fl-product">
                                    <div class="image">
                                        <a href="${pageContext.request.contextPath}/fore/foreDetailUI?id=${product.id}">
                                            <img src="${pageContext.request.contextPath}/${product.imageurl}" class="img-fluid" alt="">
                                            <img src="${pageContext.request.contextPath}/${product.imageurl}" class="img-fluid" alt="">
                                        </a>

                                    </div>
                                    <div class="content">
                                        <h2 class="product-title"> <a
                                                href="${pageContext.request.contextPath}/fore/foreDetailUI?id=${product.id}">${product.name}</a></h2>
                                        <div class="rating">
                                            <i class="fa fa-star active"></i>
                                            <i class="fa fa-star active"></i>
                                            <i class="fa fa-star active"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <p class="product-price">
                                            <span class="main-price discounted">
                                              <%--  实际价钱加15 --%>
                                                ￥<fmt:formatNumber type="number" value="${product.price+15}" pattern="0.00" maxFractionDigits="2"/>
                                            </span>
                                            <span class="discounted-price">
                                                ￥<fmt:formatNumber type="number" value="${product.price}" pattern="0.00" maxFractionDigits="2"/>
                                            </span>
                                        </p>

                                        <div class="hover-icons">
                                            <ul>
                                                <li><a href="#"  data-tooltip="立即购买" id="nowPayment" onclick="buyNow(${product.id},${product.price});"><i class="icon ion-md-options"></i></a></li>
                                                <li>
                                                    <a href="#" data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="添加到购物车"
                                                       onclick="Values('${product.id}','${product.name}','${product.price}','${product.imageurl}','${product.miaoshu}');">
                                                        <i class="icon ion-md-cart"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <!--=======  食物详情页结束  =======-->
                        </div>

                    </div>
                    <!--=======  三个滑块横幅侧栏容器结束  =======-->
                </div>
            </div>
        </div>
    </div>
</c:forEach>


<!--=============================================
=            页面底部宣传滑块区域         =
=============================================-->

<div class="brand-logo-slider home-four-brand-slider mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!--======= 横幅滑块容器 =======-->

                <div class="brand-logo-slider-container">
                    <!--=======  单一横幅设置  =======-->

                    <div class="single-brand">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/brands/a.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  单一横幅结束  =======-->

                    <!--=======  单一横幅设置  =======-->

                    <div class="single-brand">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/brands/b.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  单一横幅结束  =======-->

                    <!--=======  单一横幅设置  =======-->

                    <div class="single-brand">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/brands/c.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  单一横幅结束  =======-->

                    <!--=======  单一横幅设置  =======-->
                    <div class="single-brand">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/brands/d.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  单一横幅结束  =======-->

                    <!--=======  单一横幅设置  =======-->

                    <div class="single-brand">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/brands/a.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  单一横幅结束  =======-->

                    <!--=======  单一横幅设置  =======-->

                    <div class="single-brand">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/brands/c.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  单一横幅结束  =======-->

                    <!--=======  单一横幅设置  =======-->
                    <div class="single-brand">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/brands/b.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  单一横幅结束  =======-->
                </div>

            </div>
        </div>
    </div>
</div>

<!--=============================================
=            首页选择食物快速查看弹窗         =
=============================================-->

<div class="modal fade quick-view-modal-container" aria-hidden="true" id="quick-view-modal-container" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <input type="hidden" id="onproduct" name="onproduct" value="">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-xs-12 mb-xxs-25 mb-xs-25 mb-sm-25">
                        <!-- 单一产品图片设置 -->
                        <div class="product-image-slider fl-product-image-slider fl3-product-image-slider quickview-product-image-slider">
                            <!--产品大图设置 -->
                            <div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list quickview-product-large-image-list" id="myTabContent2">
                                <div class="tab-pane fade show active" id="single-slide-1-q" role="tabpanel" aria-labelledby="single-slide-tab-1-q">
                                    <!--单个图片开始-->
                                    <div class="single-product-img img-full">
                                        <img id="proImg" src="${pageContext.request.contextPath}" class="img-fluid" alt="">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 col-xs-12">
                        <!--产品快速浏览说明 -->
                        <div class="product-feature-details">
                            <h2 class="product-title mb-15" id="proName"></h2>

                            <h2 class="product-price mb-15">
                                <span class="main-price discounted" id="proPrice1"></span>
                                <span class="discounted-price" id="proPrice"></span>
                            </h2>

                            <p class="product-description mb-20" id="miaoshu"></p>
                            <div class="cart-buttons mb-20">
                                <div class="pro-qty mr-10">
                                    <input type="text" value="1" id="nums">
                                </div>
                                <div class="add-to-cart-btn">
                                    <a href="#" id="add_cart" class="fl-btn"><i class="fa fa-shopping-cart"></i> 添加购物车</a>
                                </div>
                            </div>


                            <div class="social-share-buttons">
                                <h3>分享</h3>
                                <ul>
                                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a class="pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 结束 -->
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>




<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>
<script type="text/javascript">
    var this_pro_price;
    var this_pro_id;
    //点击立即购买执行渲染参数
    function Values(id,name,price,imageUrl,miaoshu) {
        this_pro_price = price;
        this_pro_id = id;
        $("#proName").html(name);
        $("#miaoshu").html(miaoshu);
        $("#proPrice").html('￥'+price);
        var proPrice1 = price +15;
        $("#proPrice1").html('￥'+proPrice1);
        $("#proImg").attr("src",'/'+imageUrl);
    }

    //立即购买
    function buyNow(id,price){
        //ajax判断是否登陆
        $.get(
            "foreIsLogin",
            function(result) {
                if (result=="true"){ //首页立即购买默认只买一件
                    var totalPrice = 1*price;
                    location.href= "forebuyone?pid="+id+"&number=1"+"&totalPrice="+totalPrice;
                }else {  //未登录
                    alert("请先登陆!")
                }
            }
        );//登陆结束
    }

    $(document).ready(function(){
        //添加到购物车
        $("#add_cart").click(function () {
            var number = $("#nums").val();
            var totalPrice = number*this_pro_price;
            $.get(
                "foreAddCart",
                {pid:this_pro_id,number:number,totalPrice:totalPrice},
                function(data){
                    if(data=="success"){
                        alert("添加购物车成功");
                    }else{
                        alert("请先登陆！！！");
                    }
                }
            );//添加购物车结束
        });
    });
</script>
<%--引入页脚--%>
<%@ include file="../../foreinclude/foreFooter.jsp"%>


