<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/j.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jqueryui/jquery.ui.resizable.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/IconExtension.css">
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath}/themes/icon.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
<div class="addVote">
    <h2>发布新投票</h2>
    <div class="vote-content">
        <form id="formgo" method="post" action="${pageContext.request.contextPath}/subject/add">
            <dl>
                <dt>投票内容：</dt>
                <dd>
                    <input id="voteTitle" type="text" class="input-text" name="vsTitle" value="" title="填入投票内容"/>
                    <span style="color:red;">*</span>
                </dd>
                <dt>投票类型：</dt>
                <dd>
                    <input type="radio" name="vsType" value="1" checked=checked/>单选
                    <input type="radio" name="vsType" value="2"/>多选
                </dd>
                <dt>投票选项：</dt>
                <dd id="voteoptions">
                    <p><input id="voteOption1" type="text" class="input-text" name="options[0].voOption"/><span
                            style="color:red;">*</span></p>
                    <p><input id="voteOption2" type="text" class="input-text" name="options[1].voOption"/><span
                            style="color:red;">*</span></p>
                </dd>
                <dt></dt>
                <dd class="button">
                    <a id="btn1">确定</a>
                    <a id="addOption" href="javascript:void(0);">增加选项</a>
                    <a href="${pageContext.request.contextPath}/index.jsp">取消操作</a>
                </dd>
            </dl>
        </form>
    </div>
</div>
<div id="dialog-message" title="警告" style="height:80px;width:130px;display:none">
    <p>投票内容不能为空</p>
</div>
<script>
    $("#voteTitle").validatebox({
        required: true,
    });
    $("#voteOption1").validatebox({
        required: true,
    });
    $("#voteOption2").validatebox({
        required: true,
    });

    var number = 2;

    $("#voteTitle").blur(function () {
        var v = $(this).val();
        validateTitle(v);
    });
    $("#addOption").click(function () {
        var $p = $('<p></p>');
        var $text = $("<input type='text' class='input-text' name='options[" + number + "].voOption' />");
        console.log(number);
        number = number + 1;
        var $del = $('<input type="button" value="删除"/>');
        $del.click(function () {
            $(this).parent().remove();
        });
        $p.append($text).append($del);
        $("#voteoptions").append($p);
    });

    /*function validate() {
        var voteTitle = $('#voteTitle').val();

        return validateTitle(voteTitle);

    }*/

    function validateTitle(v) {
        if (null == v || '' == v) {
            /*$("#dialog-message").dialog({
                modal: true,
                buttons: {
                    Ok: function () {
                        $(this).dialog("close");
                    }
                }
            });*/
            //alert("投票内容不能为空！");
            return false;
        }
        return true;
    }


    /* 实现具体的功能 */
    /* 懒加载 */
    $(function () {


        /* 添加具体的信息 */
        /* 点击添加按钮提交 */

        $("#btn1").linkbutton({
            onClick: function () {
                var votet = $("#voteTitle").val();
                var voteOption1 = $("#voteOption1").val();
                var voteOption2 = $("#voteOption2").val();
                if (votet == null || '' == votet || voteOption1 == null || voteOption1 == '' || voteOption2 == null || voteOption2 == '') {
                    $.messager.show({
                        title: "操作提示：",
                        msg: "必填项不能为空",
                        showSpeed: 500,
                        timeout: 1000,
                    });
                } else {
                    $("#formgo").form("submit");
                    location.href = "${pageContext.request.contextPath}/add_success.jsp";
                }
            }
        });


    });
</script>
