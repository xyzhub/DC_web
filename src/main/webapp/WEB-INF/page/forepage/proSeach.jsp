<%--
 搜索
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
                            <li>搜索</li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>



<!--=============================================
=           商店页面内容         =
=============================================-->

<div class="shop-page-content mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 order-1 order-lg-2">


                <!--======= 店铺标题设置  =======-->

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
                            <!--=======  按下拉排序  =======-->

                            <div class="sort-by-dropdown d-flex align-items-center mb-xs-10">

                            </div>

                            <!--=======  排序结束下拉列表 =======-->

                            <p class="result-show-message">搜索结果${total}条</p>
                        </div>
                    </div>
                </div>

                <!--=======  商店商品展示区域设置  =======-->
                <div class="shop-product-wrap list row mb-30 no-gutters">
                <c:forEach items="${products}" var="p">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <!--=======  餐品网格状  =======-->

                        <!--=======  单个商品  =======-->

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

                        <!--=======  单个商品设置结束  =======-->

                        <!--=======  网格视图产品结束  =======-->

                        <!--=======  列表查看商品  =======-->

                        <div class="fl-product shop-list-view-product">
                            <div class="image">
                                <a href="${pageContext.request.contextPath}/fore/foreDetailUI?id=${p.id}">
                                    <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid" alt="" width="50px" height="50px">
                                    <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid" alt="" width="50px" height="50px">
                                </a>
                            </div>
                            <div class="content" style="padding-top: 55px">
                                <h2 class="product-title"> <a href="foreDetailUI?id=${p.id}">${p.name}</a></h2>
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

                        <!--=======  列表查看视图产品结束  =======-->
                    </div>
                </c:forEach>


                </div>

                <!--=======  店内商品展示区结束  =======-->

                <!--=======  分页区域设置  =======-->

                <div class="pagination-area ">
                    <ul>
                        <div class="pagination-area ">
                            <ul>
                                <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
                                    <a  href="?start=0">
                                        <span aria-hidden="true">首页</span>
                                    </a>
                                </li>
                                <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">
                                    <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                                        <a href="?start=${status.index*page.count}"
                                           <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
                                        >${status.count}</a>
                                    </li>
                                </c:forEach>

                                <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
                                    <a href="?start=${page.last}">
                                        <span aria-hidden="true">末页</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </ul>
                </div>

                <!--=======  分页结束 =======-->
            </div>
        </div>
    </div>
</div>

<!--=====  引入页脚  ======-->
<%@ include file="../../foreinclude/foreFooter.jsp"%>
