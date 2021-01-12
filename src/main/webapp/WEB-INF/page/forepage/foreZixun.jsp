<%--
 前台资讯
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../../foreinclude/foreHander.jsp"%>



<div class="breadcrumb-area pt-15 pb-15">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-container">
                    <nav>
                        <ul>
                            <li
                                    class="parent-page"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
                            <li>信息</li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>

<!--=============================================
=            资讯页面内容         =
=============================================-->

<div class="blog-page-content mb-50">
    <div class="container">
        <div class="row">


            <div class="col-lg-12 order-1">

                <div class="blog-single-post-container mb-30">

                    <!--=======  标题  =======-->
                    <h3 class="post-title">校园资讯</h3>

                    <div class="post-content mb-40">


                        <blockquote>
                            <p>
                                您可发布自己的问题，管理员审核通过后进行展示
                                <button style="float:right" class="btn btn-default"><a href="javascript:;" onclick="fabuzixun();">发布</a></button>
                            </p>

                        </blockquote>

                    </div>
                </div>

                <!--=============================================
                =            评论部分         =
                =============================================-->

                <div class="comment-section mb-md-30 mb-sm-30">


                    <!--=======  评论容器区域  =======-->

                    <div class="comment-container mb-40">
                        <!--=======  单一评论  =======-->
                        <c:forEach items="${list}" var="z">
                        <div class="single-comment">

                            <div class="image">
                                <img src="/images/comment-icon.png" alt="">
                            </div>
                            <div class="content">
                                <h3 class="user">${z.customer.name} <span class="comment-time"><fmt:formatDate value="${z.fabudate}" pattern="yyyy年MM月dd日HH点mm分" /></span></h3>
                                <p class="comment-text">${z.content}.</p>
                            </div>

                        </div>
                        </c:forEach>

                        <!--=======  单个评论的结尾  =======-->
                    </div>
                </div>

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
                    发布资讯！
                </h4>
            </div>
            <!--登陆框中间部分(from表单)-->
            <div class="modal-body">
                <!--评价-->
                <div class="form-group">
                    <label for="contents" class="col-sm-4 control-label">输入信息</label>
                    <div class="col-sm-12">
                        <textarea class="form-control" name="content" id="contents" placeholder="请输入问题..." required="required"></textarea>
                    </div>
                </div>
                <input type="hidden" name="cstid" value="${cst.id}"/>
                <!--登陆按钮-->
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button"  class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button"  class="btn btn-default"  id="modalFabu">发布</button>
                    </div>
                </div>
                <%--</form>--%>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script>
    function fabuzixun(){
        $('#myModal').modal('show');
    }
    $(function () {
        $("#modalFabu").click(function () {
            var content = $("#contents").val();
            $.get(
                "foreZixunadd",
                {"content":content},
                function (result) {
                    if(result=="success"){
                        alert("已提交，请等待管理员审核！");
                        $('#myModal').modal('hide');
                    }
                }
            );
            //get结束
        });
    })
</script>
<!--====  引入页脚 ====-->
<%@ include file="../../foreinclude/foreFooter.jsp"%>