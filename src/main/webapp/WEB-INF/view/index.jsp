<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../../js/jquery-2.1.1.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/formconfirm.js"></script>
    <script src="../../js/province.js"></script>
    <script src="../../js/equipment.js"></script>
    <script src="../../js/sub.js"></script>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">


    <style>
        #div1 {
            width: 19.92%;
            height: 100%;
            float: left;
            background-color: #a6e1ec;
            overflow-y: scroll;
        }

        #div2 {
            width: 80.5%;
            height: 30%;
            float: right;
            position: absolute;
            /*绝对定位*/
            left: 300.2px;
            top: 0px;
            background-color: #a6e1ec;
        }

        #div3 {
            width: 30%;
            height: 68%;
            float: left;
            position: absolute;
            top: 230.58px;
            left: 302.2px;
            background-color: #a6e1ec;
            overflow-y: scroll;
            /*下拉框*/
        }

        #div4 {
            width: 50.5%;
            height: 68%;
            float: right;
            position: absolute;
            top: 230.58px;
            left: 758.76px;
            background-color: #a6e1ec;

        }

        #div6 {
            width: 1235px;
            height: 14px;
            position: absolute;
            top: 215.97px;
            left: 301.11px;

        }
        .equ{
            float: right;
        }

    </style>
    <script>
        $(function(){

                $("#equit").click(function(){
                    if(confirm("确认退出吗")){
                        location.href="Login.do"
                    }

                })


        })

    </script>
</head>

<body>

<div id="div1">

    <table>
        <thead style="background-color: #a6e1ec">
        <h4>组织结构</h4>
        <hr>
        </thead>
        <tbody>
        <tr>
            <td width="auto"><span id="country">国家电网</span>
                <input type="button" value="+" data-toggle="modal" data-target="#myModal">
            </td>
        </tr>
        <tr id="context1">
        </tr>
        </tbody>
    </table>
</div>
<div id="divtop"></div>
<%--第二块div--%>
<div id="div2">

    <table>
        <thead>网省信息 <button id="equit" class="equ">退出</button></thead>
        <tbody>
        <tr>
            <td>网省名称:</td>
            <td><input id="provincename" readonly></td>
        </tr>
        <tr>
            <td>上述单位:</td>
            <td><input value="国家电网" id="chinaelec" readonly></td>
        </tr>
        <tr>
            <td>单位描述:</td>
            <td><input id="proar" readonly></td>
        </tr>
        <tr>
            <td>用电量:</td>
            <td><input id="elenum" readonly></td>
        </tr>
        </tbody>
    </table>

</div>
<div style="background-color: #1b6d85" id="div6"></div>
<%--第三块div--%>
<div id="div3">
    <input type=hidden id="hid">
    <table class="table table-auto">
        <thead>
        <div><h5>设备管理</h5> </div>
        <tr>
            <td>
                <input type="button" class="btn btn-success" value="新建" data-toggle="modal" id="Modal">
            </td>
            <td>
                <button type="button" class="btn bg-success" id="editer" onclick="editer(this)">编辑</button>
                <%--<button type="button" class="btn bg-success" id="editer2" onclick="editer2()">确认编辑</button>--%>
            </td>
            <td>
                <button type="button" class="btn btn-danger" id="delsub" onclick="delsub(this)">删除</button>
            </td>
        </tr>
        <tr>
            <td>变电站名称:</td>
            <td><input id="selectsub"></td>
            <td>
                <button type="button" onclick="selectsub()">查询</button>
            </td>
        </tr>
        <tr>
            <td>
                <button type="button" onclick="shuaxin()">重置</button>
            </td>
            <td></td>
            <td></td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>变电站名称</td>
        </tr>
        <tr id="biandian">

        </tr>
        </tbody>
    </table>
</div>
<%--第四块div--%>
<div id="div4">
    <table STYLE="align-content: center" class="table table-auto">
        <thead>
        <tr>
            <td>
                <button type="button" class="btn btn-success" id="addequ" data-toggle="modal">
                    新建
                </button>
            </td>
            <td>
                <button type="button" class="btn btn-success" id="confirme" onclick="ediequ(this)">编辑</button>
                <button type="button" class="btn bg-success" id="ediequ" onclick='confirmequ(this)'>确认修改</button>
            </td>
            <td>
                <button type="button" class="btn btn-danger" id="delequ" onclick="delequ(this)">删除</button>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>设备名称</td>
            <td><input size="20px" id="equip1">
                <input type="hidden" id="selectinputid">
            </td>
            <td>设备类型:<select id="equip2">
                <option value="">请选择:</option>
                <option>放电</option>
                <option>开关</option>
                <option>刀闸</option>
            </select></td>
            <td>是否维修:<select id="equip3">
                <option value="">请选择:</option>
                <option>是</option>
                <option>否</option>
            </select></td>
        </tr>
        <tr>
            <td>是否在用:<select id="equip4">
                <option value="">请选择:</option>
                <option>是</option>
                <option>否</option>
            </select>
            </td>
            <td>
                <button class="btn btn-success" onclick="selectequ(this)">查询</button>
            </td>
            <td>
                <button class="btn btn-success" onclick="shuaxin2()">重置</button>
            </td>
            <td></td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>设备名称</td>
            <td>设备类型</td>
            <td>是否在用</td>
            <td>是否维修</td>
        </tr>
        </tbody>
        <tfoot id="equid">

        </tfoot>

    </table>
</div>
<!-- 添加电省模态框 -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog ">
        <div class="modal-content">
            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title">增加电力公司</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form>
                    <table height="300px">
                        <tr>
                            <td><input type="hidden" name="kno"></td>
                        </tr>
                        <tr>
                            <td align="right" width="100px">网省名称：</td>
                            <td width="250px"><input name="proname" id="proname" class="form-control">
                                <span id="proname1"></span></td>
                            <td width="200px">
                                <div id="show1"></div>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">上级单位：</td>
                            <td><input name="parproid" id="parproid" class="form-control" readonly value="国家电网"></td>
                            <td>
                                <div id="show2"></div>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">用电描述：</td>
                            <td><input name="proartdesc" id="proartdesc" class="form-control"><span
                                    id="proartdesc1"></span></td>
                            <td>
                                <div id="show3"></div>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">用电量：</td>
                            <td><input name="powercon" id="powercon" class="form-control"><span id="powercon1"></span>
                            </td>
                            <td>
                                <div id="show4"></div>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button onclick="addProvince()" class="btn btn-info">确认添加</button>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
            </div>

        </div>
    </div>
</div>


<!-- 添加电厂模态框 -->
<div class="modal fade" id="myModal2">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title">增加变电站</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <table height="300px">
                    <tr>
                        <td><input type="hidden" name="kno"></td>
                    </tr>
                    <tr>
                        <td align="right" width="100px">变电站名称：</td>
                        <td width="250px"><input name="w_substationmc" id="w_substationmc" class="form-control"></td>
                        <td width="200px">
                            <div id="s1"></div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button type="submit" class="btn btn-info" onclick="addsub()">确认添加</button>
                        </td>
                        <td></td>
                    </tr>
                </table>
                </form>
                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>

            </div>
        </div>
    </div>
</div>

<%--添加设备模态框--%>
<div class="modal fade" id="myModal3">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title">增加新设备</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <table height="300px">
                    <tr>
                        <td><input type="hidden" name="kno"></td>
                    </tr>
                    <tr>
                        <td align="right" width="100px">设备名称：</td>
                        <td width="250px"><input name="mc" id="mc" class="form-control"><span id="mc1"></span></td>
                        <td width="200px">
                            <div id="equ1"></div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="100px">安装日期：</td>
                        <td width="250px"><input name="azrq" id="azrq" class="form-control" type="date"></td>
                        <td width="200px">
                            <div id="equ2"></div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="100px">设备类型：</td>
                        <td width="250px">
                            <select name="sblx" id="sblx">
                                <option value=""> 请选择:</option>
                                <option>放电</option>
                                <option>开关</option>
                                <option>刀闸</option>
                            </select>
                            <%--   <input name="sblx" id="sblx" class="form-control"></td>--%>
                        <td width="200px">
                            <div id="equ3"></div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="100px">是否维修：</td>
                        <td width="250px">
                            <select name="sfzy" id="sfzy">
                                <option value="">请选择:</option>
                                <option>是</option>
                                <option>否</option>
                            </select>
                        <td width="200px">
                            <div id="equ4"></div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="100px">是否在用：</td>
                        <td width="250px">
                            <select name="sfwx" id="sfwx">
                                <option value="">请选择:</option>
                                <option>是</option>
                                <option>否</option>
                            </select>
                        <td width="200px">
                            <div id="equ6"></div>
                        </td>
                    </tr>
                    <tr hidden>
                        <td width="250px">
                            <select name="sysm" id="sysm">
                            </select>

                        <td width="200px">
                            <div id="equ7"></div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button type="submit" class="btn btn-info" onclick="addequ()">确认添加</button>
                        </td>
                        <td></td>
                    </tr>
                </table>
                </form>
                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
