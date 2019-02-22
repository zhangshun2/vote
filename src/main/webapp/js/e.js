function getSearch() {
    $(".gridSearch").click(function () {
        var v = $(this).parent().find(".autoComplete").val();
        alert(v);
    });
}

function getTree() {
    $("#mytree").tree({
        url: "getTree.action",
        animate: true,
        onDblClick: function (node) {
            $(this).tree("toggle", node.target);
        },
        onClick: function (node) {
            if (node.id == 113) {
                act(2);
            } else if (node.id == 112) {
                act(1);
            } else if (node.id == 111) {
                act(0);
            }
        }

    });
}

function act(n) {
    $("#tabs").tabs("option", "active", n);
}

function indexGrid() {
    $('#mygrid').datagrid({
        url: 'subject/showall',
        rownumbers: true,
        iconCls: 'icon-search',
        pagination: true,//显示底部分页栏
        pageSize: 10,//默认每页记录数，pagination参数为true时才有效
        pageList: [5, 10, 15], //显示列表记录数的下拉框选项，pagination参数为true时才有效
        fitColumns: true,//自适应宽度，防止水平滚动
        striped: true,//隔行变色
        columns: [[
            {field: 'viId', title: 'id', hidden: 'true'},
            {field: 'title', title: '投票标题', width: 300},
            {field: 'count', title: '选项数', align: 'right'},
            {field: 'people', title: '投票人数', align: 'right'},
            {
                field: 'opr', title: '操作', align: 'center', formatter: function () {
                    return "<a  style='color:red;'>参加投票</a>";
                }
            }
        ]],
        onClickCell: function (index, field, v) {
            if (field == "opr") {
                console.log($(this).datagrid("getRows")[index].viId)
                var id = $(this).datagrid("getRows")[index].viId;
                window.location.href = "vote.jsp?id=" + id;
            }
        }
    });
}

function manageGrid() {
    $('#manageGrid').datagrid({
        url: 'subject/select?name=' + $("#manageKeywords").val(),
        rownumbers: true,
        iconCls: 'icon-search',
        pagination: true,//显示底部分页栏
        pageSize: 10,//默认每页记录数，pagination参数为true时才有效
        pageList: [5, 10, 15], //显示列表记录数的下拉框选项，pagination参数为true时才有效
        fitColumns: true,//自适应宽度，防止水平滚动
        striped: true,//隔行变色
        columns: [[
            {field: 'viId', title: 'id', hidden: 'true'},
            {field: 'title', title: '投票标题', width: 300},
            {field: 'count', title: '选项数', align: 'right'},
            {field: 'people', title: '投票人数', align: 'right'},
            {
                field: 'opr', title: '操作', align: 'center', formatter: function () {
                    return "<a  style='color:red;'>参加投票</a>";
                }
            }
        ]],
        onClickCell: function (index, field, v) {
            if (field == "update") {
                var id = $(this).datagrid("getRows")[index].id;
                window.location.href = "subject!read.action?subject.id=" + id;
            }
        },
        loadMsg: "..."
    });
}