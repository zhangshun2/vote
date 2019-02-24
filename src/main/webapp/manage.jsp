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
    <title>管理投票</title>
    <script type="text/javascript" src="js/e.js"></script>
    <script type="text/javascript">
        /* $(function () {
             manageGrid();
             $("#manageSearch").click(function () {
                 var keywords = $('#manageKeywords').val();
                 $('#manageGrid').datagrid('load', {keywords: keywords});
             });
         });*/

    </script>
</head>
<body>
<div class="info">
    <div class="search">
        <input class="autoComplete" id="manageKeywords" type="text" name="keywords" value=""/>
        <input id="manageSearch" class="gridSearch" type="button" name="search" value="搜索" onclick="manageGrid()"/>
    </div>
</div>
<table id="manageGrid" class="easyui-datagrid"></table>
</body>
</html>
