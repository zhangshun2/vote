<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>


<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/IconExtension.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/themes/icon.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>


    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
<table id="mygrid" class="easyui-datagrid"
       data-options="url:'${pageContext.request.contextPath}/subject/showall',fitColumns:true,singleSelect:true">
    <thead>
    <tr>
        <th data-options="field:'title',width:100">编码</th>
        <th data-options="field:'people',width:100">名称</th>
        <th data-options="field:'count',width:100,align:'right'">价格</th>
    </tr>
    </thead>
</table>
</body>
</html>
