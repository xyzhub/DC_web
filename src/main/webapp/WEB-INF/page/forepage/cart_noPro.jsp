<%--
  空购物车
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp"%>
<style type="text/css">
    #mydiv{width: 100%;height: 170px;}
    #mycart{width:450px;heiget:140px;margin: 135px auto;font-size: 25px}
</style>
<div id="mydiv" class="checkout-title">
    <div id="mycart">购物车空空如也,<a href="${pageContext.request.contextPath}/fore/foreIndex" style="color: red">去购物》</a></div>
</div>
<%@ include file="../../foreinclude/foreFooter.jsp"%>
