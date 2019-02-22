<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/black/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/IconExtension.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/datagrid-detailview.js"></script>

    <script type="text/javascript">
        console.log("===");
        $(function () {

            $('#dl').linkbutton({
                iconCls: 'icon-search',
                onClick: function () {
                    console.log($("#name1").val());
                    console.log($("#psd1").val());
                    $.ajax({
                        url: "${pageContext.request.contextPath}/user/regist",
                        type: "post",//get会在浏览器显示具体参数,如果测试参数是否拼接过去用get测试一下
                        data: "vuUserName=" + $("#name1").val() + "&vuPassword=" + $("#psd1").val(),
                        dataType: "json",
                        success: function (json) {
                            console.log("map=" + json.key);
                            var pa = json.key;
                            if (pa == "yes") {
                                alert(json.key);
                                console.log(json);
                                location.href = "${pageContext.request.contextPath}/index.jsp";
                            } else {
                                location.href = "${pageContext.request.contextPath}/register.jsp";
                            }
                        }
                    });
                }
            });

        });
    </script>
</head>
<body>
<div id="header" class="wrap">
    <img src="images/logo.gif"/>
</div>
<div id="navbar" class="wrap">
    <div class="search">i

    </div>
</div>
<div id="register" class="box">
    <h2>新用户注册</h2>
    <div class="content">

        <dl>

            <dt>用户名：</dt>
            <dd><input type="text" id="name1" class="input-text" name="vuUserName" value=""/></dd>
            <dt>密码：</dt>
            <dd><input type="password" id="psd1" class="input-text" name="vuPassword" value=""/></dd>
            <dt>确认密码：</dt>
            <dd><input type="password" class="input-text" name="confirmPassword" value=""/></dd>
            <dt></dt>
            <dd><a id="dl">确认注册</a></dd>
        </dl>

        <div class="error"></div>
        <div class="error"></div>
    </div>
</div>
<div id="footer" class="wrap">
    百知 &copy; 版权所有
</div>
</body>
</html>
