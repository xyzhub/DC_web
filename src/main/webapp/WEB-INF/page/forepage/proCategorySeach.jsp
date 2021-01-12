<%--
  商品类别搜索
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp"%>


<div class="breadcrumb-area pt-15 pb-15">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">


                <div class="breadcrumb-container">
                    <nav>
                        <ul>
                            <li class="parent-page"><a href="${pageContext.request.contextPath}/fore/foreIndex">首页
                            </a></li>
                            <li>${category.name}</li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>


<!--=============================================
=            商店页面内容         =
=============================================-->

<div class="shop-page-content mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 order-1 order-lg-2">


                <!--=======  店铺标题  =======-->

                <div class="shop-header mb-30">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12 d-flex align-items-center">
                            <!--=======  查看模式  =======-->
                            <div class="view-mode-icons mb-xs-10">
                                <a href="#" data-target="grid"><i class="icon ion-md-apps"></i></a>
                                <a class="active"  href="#" data-target="list"><i class="icon ion-ios-list"></i></a>
                            </div>


                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-12 d-flex flex-column flex-sm-row justify-content-between align-items-left align-items-sm-center">
                            <!--=======  下拉排序  =======-->

                            <div class="sort-by-dropdown d-flex align-items-center mb-xs-10">

                            </div>

                            <!--=======  搜索结果  =======-->

                            <p class="result-show-message">搜索结果${proSize}条</p>
                        </div>
                    </div>
                </div>

                <!--=======  店铺商品展示区域  =======-->
                <div class="shop-product-wrap list row mb-30 no-gutters">
                    <c:forEach items="${products}" var="p">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <!--=======  网格视图展示  =======-->

                            <!--=======  单一商品展示  =======-->

                            <div class="fl-product shop-grid-view-product">
                                <div class="image">
                                    <a href="${pageContext.request.contextPath}/fore/foreDetailUI?id=${p.id}">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid" alt="">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid" alt="">
                                    </a>
                                </div>
                                <div class="content">
                                    <h2 class="product-title"> <a
                                            href="${pageContext.request.contextPath}/fore/foreDetailUI?id=${p.id}">${p.name}</a></h2>
                                    <div class="rating">
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <p class="product-price">
                                        <span class="main-price discounted">￥${p.price+15}</span>
                                        <span class="discounted-price">￥${p.price}</span>
                                    </p>

                                </div>
                            </div>


                            <!--=======  列表查看商品  =======-->

                            <div class="fl-product shop-list-view-product">
                                <div class="image">
                                    <a href="${pageContext.request.contextPath}/fore/foreDetailUI?id=${p.id}">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid" alt="" width="50px" height="50px">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid" alt="" width="50px" height="50px">
                                    </a>
                                </div>
                                <div class="content" style="padding-top: 55px">
                                    <h2 class="product-title"> <a
                                            href="${pageContext.request.contextPath}/fore/foreDetailUI?id=${p.id}">${p.name}</a></h2>
                                    <div class="rating">
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <br/>
                                    <p>${p.miaoshu}</p>
                                    <p class="product-price">
                                        <span class="main-price discounted">￥${p.price+15}</span>
                                        <span class="discounted-price">￥${p.price}</span>
                                    </p>
                                </div>
                            </div>

                        </div>
                    </c:forEach>

                </div>

            </div>
        </div>
    </div>
</div>

<!--=====  引入页脚  ======-->
<%@ include file="../../foreinclude/foreFooter.jsp"%>
