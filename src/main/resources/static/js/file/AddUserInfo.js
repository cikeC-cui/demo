/**
 * 增加人员信息
 */
layui.use(['form','laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function(){

        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            $.ajax({
                type: 'POST',
                url: "http://localhost:8099/mailInfoApi/addInfo",
                async: false,
                data: JSON.stringify(data.field),
                contentType: 'application/json;charset=UTF-8',
                dataType: "json",
                success: function (data) {
                    alert("成功!");
                    alert(data);
                },
                error: function (data) {

                }
            });
        });
});