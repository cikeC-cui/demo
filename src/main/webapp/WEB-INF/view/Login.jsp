<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>登录界面</title>

    <script src="js/jquery-2.1.1.js"></script>
<style>
    body {
/*
        background: url(/images/3.jpg) no-repeat;
*/
        background-size: cover;
        font-size: 16px;
    }


</style>

</head>
<body>

<div align="center">
    <form  method="post" class="form-horizontal"
                                 id="login_form">
        <table align="center">
            <tr>
                <td><h3>登陆</h3></td>
            </tr>
            <tr>

                <td>账&nbsp;号:<input name="kname" placeholder="请输入用户名---" id="msg1"></td>
            </tr>
            <tr>
                <td>密&nbsp;码:<input type="password" name="password" placeholder="请输入密码---" id="msg2"><span
                        id="msg"></span></td>
            </tr>
            <tr>
                <td><input type="button" value="确定" class="btn btn-success" id="mybtn">


                    <input type="reset" value="取消" class="btn btn-info">
                </td>
            </tr>

        </table>

    </form>
</div>
<script>

    $(function(){
        $("#mybtn").click(function(){
            var s1=$("#msg1").val()
            var s2=$("#msg2").val()
            if(s1=="cui"&&s2=="123"){
                 location.href="index.do"
            }else {
                alert("用户名密码错误")
            }
        })
    })
 </script>

</body>
</html>
