<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
    response.setContentType("text/html;charset=UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>投票列表</title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <jsp:include page="comm/comm_jQueryUI_js.jsp"/>
    <script type="text/javascript" src="js/j.js"></script>
    <jsp:include page="comm/comm_easyUI_js.jsp"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/IconExtension.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/themes/icon.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>

    <%--
    --%>
    <script type="text/javascript" charset="UTF-8" src="js/e.js"></script>
    <script type="text/javascript">
        $(function () {
            getTree();
            indexGrid();
            $("#gridSearch").click(function () {
            });
        });
    </script>
</head>
<body>
<jsp:include page="top.jsp"/>
<div id="index" class="content wrap">
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">返回列表</a></li>
            <li><a href="#tabs-2">发布新投票</a></li>
            <li><a href="manage.jsp">维护</a></li>
            <li style="float:right;margin:5px 10px 0 0">您好，${sessionScope.user.vuUserName}</li>
        </ul>
        <div id="tabs-1">
            <div class="info">
                <div class="search">
                    <input id="keywords" class="autoComplete" type="text" name="keywords" value=""/>
                    <input id="gridSearch" class="gridSearch" type="button" name="search" value="搜索"/>
                </div>
            </div>
            <!-- 	<table id="mygrid" class="easyui-datagrid">
                <thead>
                                            <tr>
                                                <th data-options="field:'title'">编码</th>
                                                <th data-options="field:'people'">名称</th>
                                                <th data-options="field:'count'">价格</th>
                                            </tr>
                </thead>

                    </table> -->

            <table id="mygrid">
            </table>

        </div>
        <div id="tabs-2">
            <jsp:include page="add.jsp"/>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>