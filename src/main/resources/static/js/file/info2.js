/**
 * 项目录入管理初始化
 */
var Info2 = {
    id: "CeccProjectBaseInfoTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1,
    pageSize:20,
    pageNumber:1
};

layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function(){
       var layer = layui.layer
        ,table = layui.table
        ,$ = layui.jquery;

    /**
     * 初始化表格的列
     */
    Info2.initColumn = function () {
        return [
            {checkbox:true, halign:'center',align:"center",width: 50},
            {title: '项目ID(主键)', field: 'PASSWORD', align: 'center',halign:'center',visible:false},
            {title: '用户ID', field: 'USER_ID', align: 'center',halign:'center'},
            {title: '用户名', field: 'USER_NAME', align: 'center',halign:'center'},
            {title: '是否启用', field: 'IF_USE', align: 'center',halign:'center' ,formatter: function (value, row, index){
                if(value == "1"){
                    return "<span id='span' style='color: red'>是</span>"}}
            }
        ];
    };


    $(function () {
        var defaultColunms = Info2.initColumn();

        $('#CeccProjectBaseInfoTable').bootstrapTable({
            dataType:"json",
            url:'http://localhost:8099/mailInfoApi/infoList',
            pagination:true,
            pageList:[10,15,20,50,100],
            striped:true,
            pageSize:20,
            queryParams:queryParams,
            queryParamsType:'',
            columns: defaultColunms,
            height:$("body").height() - $(".layui-form").outerHeight(true) - 26,
            sidePagination:"server",
            onPageChange:function(number, size){CeccProjectBaseInfo.pageNumber = number ; CeccProjectBaseInfo.pageSize = size}
        });

        function queryParams(t){
            var temp = {
                pageSize: t.pageSize,
                pageNumber: t.pageNumber,
                condition : "1"
            };
            return temp;
        }
    });

    /**
     * 点击添加人员信息
     */
    Info2.add = function () {
        //alert("1");
        var index = layer.open({
            type: 2,
            title: '添加项目录入',
            area: ['850px', '520px'], //宽高
            fix: false, //不固定
            maxmin: false,
            content: '/demo/templates/AddUserInfo.html'
        });
        this.layerIndex = index;
    };



});