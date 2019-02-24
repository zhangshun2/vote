<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
    <title>参与投票</title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/IconExtension.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/themes/icon.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        $(function () {

            console.log($("#btn11").val());


            /* 得到页面数据,对页面进行加载 */
            $.ajax({
                url: "${pageContext.request.contextPath}/subject/showone",
                type: "post",//get会在浏览器显示具体参数,如果测试参数是否拼接过去用get测试一下
                data: "id=" + $("#btn11").val(),
                dataType: "json",
                success: function (json) {
                    console.log(json);
                    var listoptions = json.voteOptions;
                    console.log(listoptions);
                    var liappend = "";

                    for (var i = 0; i < listoptions.length; i++) {

                        liappend += "<li><input type='checkbox' name='voId'   value='" + listoptions[i].voId + "'/>" + listoptions[i].voOption + "</li>";

                    }
                    $("#p1").text(listoptions.length);
                    $("#p2").text(json.voteItem.length);


                    $("#olp1").append(liappend);
                }
            });

        });
    </script>
</head>
<body>
<jsp:include page="top.jsp"/>
<div id="vote" class="wrap">
    <h2>参与投票</h2>
    <!-- 用来传递页面参数的数据 -->
    <ul class="list">
        <li>
            <h4><s:property value="subject.title"/></h4>
            <span class="info">共有</span> <span id="p1"></span> 个选项，已有 <span id="p2"></span> 个网友参与了投票。</span>
            <form method="post" action="${pageContext.request.contextPath}/vote_success.jsp"  onsubmit="return validate();">
                <input type="hidden" id="btn11" name="vsId" value="${param.id}"/>
                <%-- <s:hidden name="subject.id"></s:hidden> --%>
                <ol id="olp1">

                    <%-- <s:iterator value="subject.options" status="status">
                          <li><input <s:if test="subject.type==2">type="checkbox"</s:if><s:else>type="radio"</s:else> name="options"  value=" "/></li>
                    </s:iterator>	 --%>
                </ol>
                <p class="voteView">
                    <!-- href="vote!view.action?subject.id=<s:property value='subject.id'/> -->
                    <input type="submit" value="投票1">
                    <input type="button" value="查看 " onclick="chakan()">
                </p>
            </form>
        </li>
    </ul>
</div>
<div id="footer" class="wrap">
    百知 &copy; 版权所有
</div>
<link type="text/css" rel="stylesheet" href="js/jqueryui/themes/base/jquery-ui.css"/>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/jqueryui/jquery-ui.js"></script>
<script>
    function chakan(){
        console.log(123)
        location.href="${pageContext.request.contextPath}/index.jsp";
    }



    $(function () {
        $(".voteView").children("button").button({
            icons: {
                primary: "ui-icon-locked"
            }
        }).next().button({
            icons: {
                primary: "ui-icon-locked"
            }
        });
    })

    function validate() {
        var options = $("input:checked").val();
        if (options == null || options == "undefined" || options.length == 0) {

            return false;
        }
        var voId = "";
        for (var i = 0; i < $("input:checked").length; i++) {
            var j = $($("input:checked")[i]).val();
            voId += "&voId=" + j;
        }
        var date = "vsId=" + $("[name=vsId]").val() + voId;
        $.ajax({
            url: "${pageContext.request.contextPath}/item/add",
            type: "post",
            data: date,
            dataType: "json",
            success: function () {
                alert()
                location.href = "${pageContext.request.contextPath}/vote_success.jsp";
            }
        });
        return true;
    }
</script>
</body>
</html>
