<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<jsp:include page="comm/comm_jQueryUI_js.jsp"/>
<script type="text/javascript" src="js/j.js"></script>
<div id="index" class="content wrap">
    <div class="addVote">
        <jsp:include page="top.jsp"/>
        <h2>修改投票</h2>
        <div id="message" class="box wrap">
            <div class="content">
                <div class="vote-content">
                    <form action="modifySubject.action" name="" onsubmit="return validate();">
                        <s:hidden name="subject.id" id="id"></s:hidden>
                        <dl>
                            <dt>投票内容：</dt>
                            <dd>
                                <s:textfield name="subject.title" title="填入投票内容" cssClass="input-text"
                                             id="voteTitle"></s:textfield>
                            </dd>
                            <dt>投票类型：</dt>
                            <dd>
                                <input type="radio" name="subject.type" value="1"
                                       <s:if test="subject.type==1">checked=checked</s:if>/>单选
                                <input type="radio" name="subject.type" value="2"
                                       <s:if test="subject.type==2">checked=checked</s:if>/>多选
                            </dd>
                            <dt>投票选项：</dt>
                            <dd id="voteoptions">
                                <s:if test="subject.options!=null&&subject.options.size>1">
                                    <s:iterator value="subject.options" status="status">
                                        <p>
                                            <input name="options" class="input-text"
                                                   value="<s:property value='name'/>"/>
                                        </p>
                                    </s:iterator>
                                </s:if><s:elseif test="subject.options!=null && subject.options.size==1">
                                <s:iterator value="subject.options" status="status">
                                    <p>
                                        <input name="options" class="input-text" value="<s:property value='name'/>"/>
                                    </p>
                                </s:iterator>
                                <p><input type="text" name="options" class="input-text"/></p>
                            </s:elseif><s:else>
                                <p><input type="text" class="input-text" name="options"/></p>
                                <p><input type="text" class="input-text" name="options"/></p>
                            </s:else>
                            </dd>
                            <dt></dt>
                            <dd class="button">
                                <input type="image" src="images/button_submit.gif"/>
                                <a id="addOption" href="javascript:void(0);">增加选项</a>
                                <a href="subject!list.action">取消操作</a>
                            </dd>
                        </dl>
                    </form>
                </div>
            </div>
        </div>
        <div id="dialog-message" title="警告" style="height:80px;width:130px;display:none">
            <p>投票内容不能为空</p>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</div>
<script>

    $("#voteTitle").blur(function () {
        var voteTitle = $(this).val();
        validateTitle(voteTitle);
    });

    $("#addOption").click(function () {
        var $p = $('<p></p>');
        var $text = $('<input type="text" class="input-text" name="options" />');
        var $del = $('<input type="button" value="删除"/>');
        $del.click(function () {
            $(this).parent().remove();
        });
        $p.append($text).append($del);
        $("#voteoptions").append($p);
    });

    function validate() {
        var voteTitle = $('#voteTitle').val();

        return validateTitle(voteTitle);

    }

    function validateTitle(v) {
        if (null == v || '' == v) {
            $("#dialog-message").dialog({
                modal: true,
                buttons: {
                    Ok: function () {
                        $(this).dialog("close");
                    }
                }
            });
            return false;
        }
        return true;
    }

    /*
     * 后续可以考虑使用ajax发送数据提交，并根据返回结果决定下一步的操作
     */
    /*
    function update(){
            if(validate()){
                    var id = $("#id").val();
                    var title = $("#voteTitle").val();
                    var type =  $("input[name='subject.type']").val();
                    var options = "";
                            $("input[name='options']").each(function(){
                                    options+= $(this).val()+",";
                    });
                    var data ="subject.id="+id+"&subject.title="+title+"&subject.type="+type+"&options="+options;
                    $.ajax({
                            url:'modifySubject.action',
                            data:data,
                            success:function(result){
                                    alert(result);
                                    window.location.href="subject!list.action";
                            },
                            error: function() {
                                    alert("ajax执行失败");
                            }
                    });
            }
    }
    */
</script>
