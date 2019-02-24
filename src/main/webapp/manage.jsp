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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/easyui/themes/icon.css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/e.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {

            $("#manageSearch").click(function () {
                var keywords = $('#manageKeywords').val();
                $('#manageGrid').datagrid('load', {keywords: keywords});
            });

            $('#manageGrid').datagrid({
                url: '${pageContext.request.contextPath}/weihu/showAll',
                columns: [[
                    {field: 'ck', checkbox: true},
                    {field: 'id', title: 'id', hidden: true},
                    {field: 'title', title: '投票标题', width: 300},
                    {field: 'optionNum', title: '选项数', align: 'right', width: 150},
                    {field: 'toupiaoNum', title: '投票人数', align: 'right', width: 150},
                    {
                        field: 'update',
                        title: '操作',
                        width: 100,
                        align: 'center',
                        formatter: function (value, row, index) {

                            return "<a herf='#' style='color:#b368ff;' class='update'>修改</a><a herf='#' style='color:red;' class='delete'>删除</a>";
                        }
                    }
                ]],
                onLoadSuccess: function () {
                    $('.update').linkbutton({
                        plain: true,
                        onClick: function () {
                            $("#update").dialog({
                                closed: false
                            });
                            var v = $(this).parent().parent().parent().children().children().eq(1).text();
                            $("#update").form("load", "${pageContext.request.contextPath}/weihu/selectById?id=" + v);
                        }
                    });
                    $('.delete').linkbutton({
                        plain: true,
                        onClick: function () {
                            var v = $(this).parent().parent().parent().children().children().eq(1).text();
                            $.ajax({
                                url: "${pageContext.request.contextPath}/weihu/delete",
                                type: "post",
                                data: "id=" + v,
                                dataType: "json",
                                success: function (obj) {
                                    $("#manageGrid").datagrid('reload')
                                    $.messager.show({
                                        title: '删除信息',
                                        msg: obj.msg,
                                    })
                                }
                            })
                        }
                    })
                },
                pagination: true,
                pageList: [5, 10, 15],
                pageSize: 5,
                striped: true,
            });

            $("#div>a:contains(确定)").linkbutton({
                plain: true,
                onClick: function () {
                    $("#update").form("submit", {
                        url: "${pageContext.request.contextPath}/weihu/update"
                    });
                    $("#update").dialog({
                        closed: true
                    });
                }
            });

            $("#update").dialog({
                buttons: "#div",
                closed: true
            });

            $(".form_update").textbox({
                width: 160,
                required: true,
            });

            $("#manageKeywords").textbox();
            $("#manageSearch").linkbutton({
                iconCls: 'icon-search',
                onClick: function () {
                    var v = $(this).prev().prev().val();

                    $('#manageGrid').datagrid({
                        url: "${pageContext.request.contextPath}/weihu/search?title=" + v,
                        columns: [[
                            {field: 'ck', checkbox: true},
                            {field: 'id', title: 'id', hidden: true},
                            {field: 'title', title: '投票标题', width: 300},
                            {field: 'optionNum', title: '选项数', align: 'right', width: 150},
                            {field: 'toupiaoNum', title: '投票人数', align: 'right', width: 150},
                            {
                                field: 'update',
                                title: '操作',
                                width: 100,
                                align: 'center',
                                formatter: function (value, row, index) {

                                    return "<a herf='#' style='color:#b368ff;' class='update'>修改</a><a herf='#' style='color:red;' class='delete'>删除</a>";
                                }
                            }
                        ]],
                        onLoadSuccess: function () {
                            $('.update').linkbutton({
                                plain: true,
                                onClick: function () {
                                    $("#update").dialog({
                                        closed: false
                                    });
                                    var v = $(this).parent().parent().parent().children().children().eq(1).text();
                                    $("#update").form("load", "${pageContext.request.contextPath}/weihu/selectById?id=" + v);
                                }
                            });
                            $('.delete').linkbutton({
                                plain: true,
                                onClick: function () {
                                    var v = $(this).parent().parent().parent().children().children().eq(1).text();
                                    $.ajax({
                                        url: "${pageContext.request.contextPath}/weihu/delete",
                                        type: "post",
                                        data: "id=" + v,
                                        dataType: "json",
                                        success: function (obj) {
                                            $("#manageGrid").datagrid('reload')
                                            $.messager.show({
                                                title: '删除信息',
                                                msg: obj.msg,
                                            })
                                        }
                                    })
                                }
                            })
                        },
                        pagination: true,
                        pageList: [5, 10, 15],
                        pageSize: 5,
                        striped: true,
                    });
                }
            })

        });

    </script>
</head>
<body>

<div class="info">
    <div class="search">
        <input class="autoComplete" id="manageKeywords" type="text" name="keywords" value="">
        <a href="#" id="manageSearch" class="gridSearch" name="search">搜索</a>
    </div>
</div>
<table id="manageGrid" class="easyui-datagrid"/>

<form id="update">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" class="form_update" readonly="readonly" name="id"></td>
        </tr>
        <tr>
            <td>投票标题</td>
            <td><input type="text" class="form_update" name="title"></td>
        </tr>
        <tr>
            <td>选项数</td>
            <td><input type="text" class="form_update" name="toupiaoNum"></td>
        </tr>
        <tr>
            <td>投票人数</td>
            <td><input type="text" class="form_update" name="optionNum"></td>
        </tr>
    </table>
</form>

<div id="div">
    <a href="#">确定</a>
</div>
</body>
</html>
