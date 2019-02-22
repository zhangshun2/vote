<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
<jsp:include page="top.jsp"/>
<div id="message" class="box wrap">
    <h2>提示信息</h2>
    <div class="content">
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;恭喜：操作成功！<a href="index.jsp">返回查看投票列表&gt;&gt;</a></p>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
