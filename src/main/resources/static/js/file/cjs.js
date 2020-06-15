/**
 * activiti相关demo管理初始化
 */
   var c = function () {

/*$("#login").click(function () {

    $.ajax({
        type: 'POST',
        url: "http://localhost:8099/mailInfoApi/insertMailInfo",
        async: false,
        //data: {"bid": value},
        dataType: 'json',
        success: function (data) {
           // alert(data);
            //window.location.href = "AddUserInfo.html";  //打开界面
            //window.location.href = "http://localhost:8078/mailInfoApi/insertMailInfo";  //打开后台路径
            var useName = $("#userName").val();
            if(data[0].USER_NAME==useName){
                window.location.href = "/demo/templates/AddUserInfo.html"
            }else{
                alert("用户名密码错误!");
            }
        },
        error: function (data) {

        }
    });
});*/



   }();




layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function(){
    //layer.msg('Hello World');
    $("#login").click(function () {
        $.ajax({
            type: 'POST',
            url: "http://localhost:8099/mailInfoApi/insertMailInfo",
            async: false,
            //data: {"bid": value},
            dataType: 'json',
            success: function (data) {
                // alert(data);
                //window.location.href = "AddUserInfo.html";  //打开界面
                //window.location.href = "http://localhost:8078/mailInfoApi/insertMailInfo";  //打开后台路径
                var useName = $("#userName").val();
                var psssWord = $("#password").val();
                if(data[0].USER_NAME==useName && data[0].PASSWORD ==psssWord){
                    window.location.href = "/demo/templates/navi.html"
                }else{
                    layer.msg("用户名密码错误!");
                }
            },
            error: function (data) {

            }
        });
    });
    $("#reset").click(function () {
        $("#userName").val("");
        $("#password").val("");
    })

});