<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 箫声巷陌
  Date: 2021-05-26
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form class="form-inline" method="post" action="${pageContext.request.contextPath}/patient/selPatientByName">
    <div class="form-group"><input name="name"  class="form-control" placeholder="请输入姓名"></div> <input type="submit" class="btn btn-primary btn-sm" value="🔍">
</form>
<a class="btn btn-danger btn-sm" id="addPatient" data-toggle="modal" data-target="#myModal" style="float: right">➕😷</a>
<a class="btn btn-info btn-sm" href="${pageContext.request.contextPath}/patient/selPatient">所有患者</a>
<a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/patient/selPatient1">急诊部</a>
<a class="btn btn-primary btn-sm" href="${pageContext.request.contextPath}/patient/selPatient2">门诊部</a>
<a class="btn btn-warning btn-sm" href="${pageContext.request.contextPath}/patient/selPatient3">住院部</a>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    添加患者
                </h4>
            </div>
                <div class="modal-body">
                    <form method="post" action="${pageContext.request.contextPath}/patient/addPatient" id="fom">
                        <table class="table table-bordered">
                            <tr>
                                <td><input type="button" class="btn btn-default" value="患者姓名"></td>
                                <td><input type="text" class="form-control" id="name" name="name"></td>
                                <td><input type="button" style="color: red;width: 100%" id="name_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="证件号"></td>
                                <td><input type="text" class="form-control" id="idnum" name="idnum"></td>
                                <td><input type="button" style="color: red;width: 100%" id="idnum_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="年龄"></td>
                                <td><input type="text" class="form-control" id="age" name="age"></td>
                                <td><input type="button" style="color: red;width: 100%" id="age_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="性别"></td>
                                <td><input type="text" class="form-control" id="sex" name="sex"></td>
                                <td><input type="button" style="color: red;width: 100%" id="sex_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="联系电话"></td>
                                <td><input type="text" class="form-control" id="phone" name="phone"></td>
                                <td><input type="button" style="color: red;width: 100%" id="phone_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="就诊部门"></td>
                                <td>
                                    <select class="form-control" name="deptid" id="dept">
                                    </select>
                                </td>
                                <td><input type="button" style="color: red;width: 100%" id="dept_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="就诊科室"></td>
                                <td>
                                    <select class="form-control" name="departid" id="depart">
                                    </select>
                                </td>
                                <td><input type="button" style="color: red;width: 100%" id="depart_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="负责医生"></td>
                                <td><select class="form-control" name="docid" id="doc">
                                </select></td>
                                <td><input type="button" style="color: red;width: 100%" id="doc_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr>
                                <td><input type="button" class="btn btn-default" value="病症描述"></td>
                                <td><input type="text" class="form-control" id="intro" name="intro"></td>
                                <td><input type="button" style="color: red;width: 100%" id="intro_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr class="zy">
                                <td><input type="button" class="btn btn-default" value="房间号"></td>
                                <td>
                                    <select class="form-control" name="roomid" id="room" id="room">
                                    </select>
                                </td>
                                <td><input type="button" style="color: red;width: 100%" id="room_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                            <tr class="zy">
                                <td><input type="button" class="btn btn-default" value="床位号"></td>
                                <td>
                                    <select class="form-control" name="bedid" id="bed">
                                    </select>
                                </td>
                                <td><input type="button" style="color: red;width: 100%" id="bed_msg" class="btn btn-default" value="不能为空"></td>
                            </tr>
                        </table>
                        <input type="button" style="color: red;width: 100%" id="tj_msg" class="btn btn-default" value="不能为空"><br/>
                        <br/>
                        <input type="button" id="tj" class="btn btn-primary" value="添加">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
        </div>
    </div>
</div>
<c:if test="${not empty patients}">
    <table class="table table-bordered  table-hover table-condensed">
        <thead>
        <tr>
            <th>患者编号</th>
            <th>患者姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>证件号</th>
            <th>联系电话</th>
            <th>就诊部门</th>
            <th>就诊科室</th>
            <th>负责医生</th>
            <th>病症描述</th>
            <th>住院时间</th>
            <th>房间</th>
            <th>床位</th>
            <th>办理</th>
        </tr>
        </thead>
        <tbody>
    <c:forEach items="${patients}" var="p">
        <tr>
            <td>${p.patientid}</td>
            <td>${p.name}</td>
            <td>${p.sex}</td>
            <td>${p.age}</td>
            <td>${p.idnum}</td>
            <td>${p.phone}</td>
            <td>${p.hosdept.name}</td>
            <td>${p.departments.name}</td>
            <td>${p.doctor.name}</td>
            <td>${p.intro}</td>
            <td>${p.startime}</td>
            <td>${p.hosroom.name}</td>
            <td>${p.hosbed.name}</td>
            <td>
                <button id="upd" class="btn btn-info btn-xs" data-toggle="modal" data-target="#myModal2">
                    🖊
                </button>
                <button id="yao" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal3">
                    💊
                </button>
                <button id="cy" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal4">
                    🏃‍
                </button>
            </td>
        </tr>
    </c:forEach>
        </tbody>
    </table>
  </c:if>
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel4">
                    个人信息
                </h4>
            </div>
            <div class="modal-body">
                <form method="post" action="${pageContext.request.contextPath}/patient/delPatient" id="fom4">
                    <table class="table table-bordered">
                        <tr>
                            <td><input type="button" class="btn btn-default" value="患者姓名"></td>
                            <td><input type="text" class="form-control" id="name4" name="name" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="患者性别"></td>
                            <td><input type="text" class="form-control" id="sex4" name="sex" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="患者年龄"></td>
                            <td><input type="text" class="form-control" id="age4" name="age" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="证件号"></td>
                            <td><input type="text" class="form-control" id="idnum4" name="idnum" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="联系电话"></td>
                            <td><input type="text" class="form-control" id="phone4" name="phone" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="就诊部门"></td>
                            <td>
                                <input readonly class="form-control" name="dept" id="dept4"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="就诊科室"></td>
                            <td>
                                <input readonly class="form-control" name="depart" id="depart4"> </td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="负责医生"></td>
                            <td><input readonly class="form-control" name="doc" id="doc4"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="病症描述"></td>
                            <td><input type="text" class="form-control" id="intro4" name="intro" readonly></td>
                        </tr>
                        <tr class="zy3">
                            <td><input type="button" class="btn btn-default" value="住院时间"></td>
                            <td><input readonly class="form-control" id="start4" name="startime"></td>
                        </tr>
                        <tr class="zy3">
                            <td><input type="button" class="btn btn-default" value="房间号"></td>
                            <td>
                                <input class="form-control" name="room" id="room4" readonly>
                            </td>
                        </tr>
                        <tr class="zy3">
                            <td><input type="button" class="btn btn-default" value="床位号"></td>
                            <td>
                                <input class="form-control" name="bed" id="bed4" readonly>
                                <input id="oldbed4" name="oldbedid" style="display: none">
                            </td>
                        </tr>
                    </table>
<%--                    <table style="width: 100%" class="table table-bordered">--%>
<%--                        <caption>开药记录</caption>--%>
<%--                        <thead>--%>
<%--                            <tr>--%>
<%--                                <th style="width: 10%">患者姓名</th>--%>
<%--                                <th style="width: 10%">证件号</th>--%>
<%--                                <th style="width: 10%">联系电话</th>--%>
<%--                                <th style="width: 10%">负责医生</th>--%>
<%--                                <th style="width: 10%">药品类型</th>--%>
<%--                                <th style="width: 10%">药品名称</th>--%>
<%--                                <th style="width: 10%">价格</th>--%>
<%--                                <th style="width: 10%">数量</th>--%>
<%--                                <th style="width: 10%">总价</th>--%>
<%--                                <th style="width: 10%">开药时间</th>--%>
<%--                            </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody id="tbd">--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
                    <br/>
                    <input type="button" class="btn btn-primary" id="cy2" value="出院">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel3">
                    开药
                </h4>
            </div>
            <div class="modal-body">
                <form method="post" action="${pageContext.request.contextPath}/patient/addPre" id="fom3">
                    <input value="1" name="dept" style="display: none">
                    <table class="table table-bordered">
                        <tr>
                            <td><input type="button" class="btn btn-default" value="患者姓名"></td>
                            <td><input type="text" class="form-control" id="name3" name="name" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="证件号"></td>
                            <td><input type="text" class="form-control" id="idnum3" name="idnum" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="联系电话"></td>
                            <td><input type="text" class="form-control" id="phone3" name="phone" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="负责医生"></td>
                            <td><input type="text" class="form-control" id="doc3" name="doctor" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="药品类型"></td>
                            <td>
                                <select class="form-control" name="mtype" id="mtype">
                                </select>
                                <input style="display:none" class="form-control" name="mtype2" id="mtype2">
                            </td>

                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="药品名称"></td>
                            <td>
                                <select class="form-control" name="mname" id="mname">
                                </select>
                            </td>
                         </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="库存"></td>
                            <td><input type="number" class="form-control" id="num" name="num" min="0" readonly>
                                <input type="text" value="" id="num2" style="display: none"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="价格"></td>
                            <td><input type="text" class="form-control" id="oprice" name="oprice" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="数量"></td>
                            <td><input type="number" class="form-control" id="snum" name="snum" min="0" value="0"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="总价"></td>
                            <td><input type="text" class="form-control" id="zj" name="zj"></td>
                        </tr>
                    </table>
                    <br/>
                    <input type="button" class="btn btn-primary" id="ky" value="开药">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel2">
                    修改
                </h4>
            </div>
            <div class="modal-body">
                <form method="post" action="${pageContext.request.contextPath}/patient/updPatient" id="fom2">
                    <table class="table table-bordered">
                        <tr>
                            <td><input type="button" class="btn btn-default" value="患者姓名"></td>
                            <td><input type="text" class="form-control" id="name2" name="name"></td>
                         </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="证件号"></td>
                            <td><input type="text" class="form-control" id="idnum2" name="idnum"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="年龄"></td>
                            <td><input type="text" class="form-control" id="age2" name="age"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="性别"></td>
                            <td><input type="text" class="form-control" id="sex2" name="sex"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="联系电话"></td>
                            <td><input type="text" class="form-control" id="phone2" name="phone"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="就诊部门"></td>
                            <td>
                                <select class="form-control" name="deptid" id="dept2">
                                </select>
                            </td>
                            <td><input type="button" style="color: red;width: 100%" id="dept2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="就诊科室"></td>
                            <td>
                                <select class="form-control" name="departid" id="depart2">
                                </select>
                            </td>
                            <td><input type="button" style="color: red;width: 100%" id="depart2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="负责医生"></td>
                            <td><select class="form-control" name="docid" id="doc2">
                            </select></td>
                            <td><input type="button" style="color: red;width: 100%" id="doc2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="病症描述"></td>
                            <td><input type="text" class="form-control" id="intro2" name="intro"></td>
                        </tr>
                        <tr class="zy2">
                            <td><input type="button" class="btn btn-default" value="住院时间"></td>
                            <td><input readonly class="form-control" id="start2" name="startime"></td>
                        </tr>
                        <tr class="zy2">
                            <td><input type="button" class="btn btn-default" value="房间号"></td>
                            <td>
                                <select class="form-control" name="roomid" id="room2">
                                </select>
                            </td>
                            <td><input type="button" style="color: red;width: 100%" id="room2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                        <tr class="zy2">
                            <td><input type="button" class="btn btn-default" value="床位号"></td>
                            <td>
                                <select class="form-control" name="bedid" id="bed2">
                                </select>
                                <input id="oldbed" name="oldbedid" style="display: none">
                            </td>
                            <td><input type="button" style="color: red;width: 100%" id="bed2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                    </table>
                    <input type="button" style="color: red;width: 100%" id="xg_msg" class="btn btn-default" value="不能为空"><br/>
                    <br/>
                    <input type="button" class="btn btn-primary" id="xg" value="修改">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消
                </button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script>
    $(".zy").hide();
    $(".zy2").hide();
    $("table").on("click","#cy",function () {
        // $("#tbd").html("");
        $("#dept4").val($(this).parents("td").prev().prev().prev().prev().prev().prev().prev().text());
        $("#depart4").val($(this).parents("td").prev().prev().prev().prev().prev().prev().text());
        $("#doc4").val($(this).parents("td").prev().prev().prev().prev().prev().text());
        $("#room4").val($(this).parents("td").prev().prev().text());
        $("#bed4").val($(this).parents("td").prev().text());
        if (!($(this).parents("td").prev().prev().prev().prev().prev().prev().prev().text()=="住院部门")){
            $(".zy3").hide();
        }else {
            $(".zy3").show();
        }
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/patient/selPatientByIdnum",
            data:{idnum:$(this).parents("td").prev().prev().prev().prev().prev().prev().prev().prev().prev().text()},
            dataType:"json",
            success:function (data) {
                $("#name4").val(data.name);
                $("#sex4").val(data.sex);
                $("#age4").val(data.age);
                $("#idnum4").val(data.idnum);
                $("#phone4").val(data.phone);
                $("#intro4").val(data.intro);
                $("#start4").val(data.startime);
                $("#oldbed4").val(data.bedid);
            }
        })
        <%--$.ajax({--%>
        <%--    type:"post",--%>
        <%--    url:"${pageContext.request.contextPath}/patient/selPreByIdnum",--%>
        <%--    data:{idnum:$(this).parents("td").prev().prev().prev().prev().prev().prev().prev().prev().prev().text()},--%>
        <%--    dataType:"json",--%>
        <%--    success:function (data) {--%>
        <%--        $.each(data,function (index) {--%>
        <%--            var str="<tr><td>"+data[index].name+"</td><td>"+data[index].idnum+"</td><td>"+data[index].phone+"</td>" +--%>
        <%--                "<td>"+data[index].doctor+"</td><td>"+data[index].mtype+"</td><td>"+data[index].mname+"</td>" +--%>
        <%--                "<td>"+data[index].oprice+"</td><td>"+data[index].snum+"</td><td>"+data[index].zj+"</td>" +--%>
        <%--                "<td>"+data[index].kydate+"</td></tr>"--%>
        <%--            $("#tbd").append(str)--%>
        <%--            // $("#kyname").text(data[index].name);--%>
        <%--            // $("#kyidnum").text(data[index].idnum);--%>
        <%--            // $("#kyphone").text(data[index].phone);--%>
        <%--            // $("#kydoctor").text(data[index].doctor);--%>
        <%--            // $("#kymtype").text(data[index].mtype);--%>
        <%--            // $("#kymname").text(data[index].mname);--%>
        <%--            // $("#kyoprice").text(data[index].oprice);--%>
        <%--            // $("#kysnum").text(data[index].snum);--%>
        <%--            // $("#kyzj").text(data[index].zj);--%>
        <%--            // $("#kydate").text(data[index].kydate);--%>
        <%--        })--%>
        <%--    }--%>
        <%--})--%>
        $("#cy2").click(function () {
            $("#fom4").submit();
        })
    })
    $("table").on("click","#yao",function () {
        $("#mtype").text("");
        $("#mtype").append("<option value=''>"+"请选择"+"</option>");
        $("#mname").text("");
        $("#mname").append("<option value=''>"+"请选择"+"</option>");
        $("#mtype2").text("");
        $("#mtype2").append("<option value=''>"+"请选择"+"</option>");
        $("#name3").val($(this).parents("td").prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().text());
        $("#idnum3").val($(this).parents("td").prev().prev().prev().prev().prev().prev().prev().prev().prev().text());
        $("#phone3").val($(this).parents("td").prev().prev().prev().prev().prev().prev().prev().prev().text());
        $("#doc3").val($(this).parents("td").prev().prev().prev().prev().prev().text());
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/patient/selMedType",
            dataType:"json",
            success:function (data) {
                $.each(data,function (index) {
                    $("#mtype").append("<option value='"+data[index].id+"'>"+data[index].name+"</option>");
                })
            }
        });
        $("#mtype").change(function () {
            $("#mtype2").val($("#mtype").find("option:selected").text());
            $("#mname").text("");
            $("#mname").append("<option value=''>"+"请选择"+"</option>");
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selMedByType",
                data: {mtype:$("#mtype").val()},
                dataType:"json",
                success:function (data) {
                    $("#mname").text("");
                    $("#mname").append("<option value=''>"+"请选择"+"</option>");
                    $.each(data,function (index) {
                        $("#mname").append("<option value='"+data[index].mname+"'>"+data[index].mname+"</option>");
                    })
                }
            });
            $("#mname").change(function () {
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/patient/selMedByMname",
                    data: {mname:$("#mname").val()},
                    dataType:"json",
                    success:function (data) {
                        $.each(data,function (index) {
                            $("#num").val(data[index].num);
                            $("#oprice").val(data[index].oprice);
                            $("#num2").val(data[index].num);
                        })
                    }
                });
            });
        });
        $("#snum").change(function () {
            if($("#snum").val()>parseInt($("#num2").val())){
                $("#snum").val(parseInt($("#num2").val()));
            }
            $("#zj").val($("#oprice").val()*$("#snum").val());
            $("#num").val(parseInt($("#num2").val())-parseInt($("#snum").val()));
        });
    })
    $("#ky").click(function () {
        if ($("#zj").val()=="" | $("#zj").val()==0){
            alert("请正确选择药物")
        }else {
            $("#fom3").submit();
        }

    })
    function ifnull(txt) {
        return /^\s+$/.test(txt) || txt=="";
    }
    $("#name").blur(function () {
        $("#name_msg").val("");
        if(ifnull($(this).val())){
            $("#name_msg").val("不能为空");
        }else {
            var reg=/^[\u4e00-\u9fa5]{0,}$/;
            if(!reg.test($(this).val())){
                $("#name_msg").val("格式不正确");
            }
        }
    });
    $("#idnum").blur(function () {
        $("#idnum_msg").val("");
        $("#age_msg").val("");
        $("#sex_msg").val("");
        if(ifnull($(this).val())){
            $("#idnum_msg").val("不能为空");
        }else {
            var reg=/^\d{15}|\d{18}$/;
            if(!reg.test($(this).val())){
                $("#idnum_msg").val("格式不正确");
            }
        }
    });
    $("#phone").blur(function () {
        $("#phone_msg").val("");
        if(ifnull($(this).val())){
            $("#phone_msg").val("不能为空");
        }else {
            var reg=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
            if(!reg.test($(this).val())){
                $("#phone_msg").val("格式不正确");
            }
        }
    });
    $("#dept").blur(function () {
        $("#dept_msg").val("");
        if(ifnull($(this).val())){
            $("#dept_msg").val("不能为空");
        }
    });
    $("#depart").blur(function () {
        $("#depart_msg").val("");
        if(ifnull($(this).val())){
            $("#depart_msg").val("不能为空");
        }
    });
    $("#doc").blur(function () {
        $("#doc_msg").val("");
        if(ifnull($(this).val())){
            $("#doc_msg").val("不能为空");
        }
    });
    $("#intro").blur(function () {
        $("#intro_msg").val("");
        if(ifnull($(this).val())){
            $("#intro_msg").val("不能为空");
        }
    });
    $("#room").blur(function () {
        $("#room_msg").val("");
        if(ifnull($(this).val())){
            $("#room_msg").val("不能为空");
        }
    });
    $("#bed").blur(function () {
        $("#bed_msg").val("");
        if(ifnull($(this).val())){
            $("#bed_msg").val("不能为空");
        }
    });

    $("#tj_msg").mouseover(function () {
        if(!($("#name_msg").val()=="" & $("#idnum_msg").val()=="" &
            $("#age_msg").val()=="" &  $("#sex_msg").val()=="" &
            $("#phone_msg").val()==""  &  $("#dept_msg").val()=="" &
            $("#depart_msg").val()=="" & $("#doc_msg").val()=="" &
            $("#intro_msg").val()=="" & $("#room_msg").val()=="" &
            $("#bed_msg").val()=="") ){
            $("#tj_msg").val("无法成功办理！请完善信息");
        }else {
            $("#tj_msg").val("可办理");
            $("#tj").click(function () {
                $("#fom").submit();
            })
        }
    });
    $("#dept2").blur(function () {
        $("#dept2_msg").val("");
        if(ifnull($(this).val())){
            $("#dept2_msg").val("不能为空");
        }
    });
    $("#depart2").blur(function () {
        $("#depart2_msg").val("");
        if(ifnull($(this).val())){
            $("#depart2_msg").val("不能为空");
        }
    });
    $("#doc2").blur(function () {
        $("#doc2_msg").val("");
        if(ifnull($(this).val())){
            $("#doc2_msg").val("不能为空");
        }
    });
    $("#room2").blur(function () {
        $("#room2_msg").val("");
        if(ifnull($(this).val())){
            $("#room2_msg").val("不能为空");
        }
    });
    $("#bed2").blur(function () {
        $("#bed2_msg").val("");
        if(ifnull($(this).val())){
            $("#bed2_msg").val("不能为空");
        }
    });
    $("#xg_msg").mouseover(function () {
        if ($("#dept2").val()==3){
            if(!($("#dept2_msg").val()=="" &
                $("#depart2_msg").val()=="" &
                $("#doc2_msg").val()=="" &
                $("#room2_msg").val()=="" &
                $("#bed2_msg").val()=="") ){
                $("#xg_msg").val("无法成功办理！请完善信息");
            }else {
                $("#xg_msg").val("可办理");
                $("#xg").click(function () {
                    $("#fom2").submit();
                })
            }
        }else {
            if(!($("#dept2_msg").val()=="" &
                $("#depart2_msg").val()=="" &
                $("#doc2_msg").val()=="") ){
                $("#xg_msg").val("无法成功办理！请完善信息");
            }else {
                $("#xg_msg").val("可办理");
                $("#xg").click(function () {
                    $("#fom2").submit();
                })
            }
        }
    });
    $(function () {
        $("#idnum").blur(function () {
            var idnum=$(this).val();
            var age=idnum.substring(6,10)+"-"+idnum.substring(10,12)+"-"+idnum.substring(12,14);
            var sex="";
            if(parseInt((idnum).substring(17,1))%2==0){
                sex="女";
            }else {
                sex="男";
            }
            $("#sex").val(sex);
            var date=new Date();
            var year=date.getFullYear();
            var month=date.getMonth()+1;
            var day=date.getDate();
            var age=year-idnum.substring(6,10)-1;
            if(idnum.substring(10,12)<month || idnum.substring(10,12)==month && idnum.substring(12,14)<=day){
                age++;
            }
            $("#age").val(age)
        })
        $("#idnum2").blur(function () {
            var idnum=$(this).val();
            var age=idnum.substring(6,10)+"-"+idnum.substring(10,12)+"-"+idnum.substring(12,14);
            var sex="";
            if(parseInt((idnum).substring(17,1))%2==0){
                sex="女";
            }else {
                sex="男";
            }
            $("#sex2").val(sex);
            var date=new Date();
            var year=date.getFullYear();
            var month=date.getMonth()+1;
            var day=date.getDate();
            var age=year-idnum.substring(6,10)-1;
            if(idnum.substring(10,12)<month || idnum.substring(10,12)==month && idnum.substring(12,14)<=day){
                age++;
            }
            $("#age2").val(age)
        })
    });
    $("table").on("click","#upd",function () {
        if (!($(this).parents("td").prev().prev().prev().prev().prev().prev().prev().text()=="住院部门")){
            $(".zy2").hide();
        }else {
            $(".zy2").show();
        }
        $("#dept2").text("");
        $("#depart2").text("");
        $("#doc2").text("");
        $("#room2").text("");
        $("#bed2").text("");
        $("#bed2").append("<option value=''>"+"请选择"+"</option>");
        $("#room2").append("<option value=''>"+"请选择"+"</option>");
        $("#dept2").append("<option value=''>"+"请选择"+"</option>");
        $("#depart2").append("<option value=''>"+"请选择"+"</option>");
        $("#doc2").append("<option value=''>"+"请选择"+"</option>");
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/patient/selPatientByIdnum",
            data:{idnum:$(this).parents("td").prev().prev().prev().prev().prev().prev().prev().prev().prev().text()},
            dataType:"json",
            success:function (data) {
               $("#name2").val(data.name);
               $("#sex2").val(data.sex);
               $("#age2").val(data.age);
               $("#idnum2").val(data.idnum);
                $("#phone2").val(data.phone);
                $("#intro2").val(data.intro);
                $("#start2").val(data.startime);
                $("#oldbed").val(data.bedid);
            }
        })
        if ($(this).parents("td").prev().prev().prev().prev().prev().prev().prev().text()=="住院部门"){
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selHosdept3",
                dataType:"json",
                success:function (data) {
                    $.each(data,function (index) {
                        $("#dept2").append("<option value='"+data[index].deptid+"'>"+data[index].name+"</option>");
                    })
                }
            })
        }else {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selHosdept",
                dataType:"json",
                success:function (data) {
                    $.each(data,function (index) {
                        $("#dept2").append("<option value='"+data[index].deptid+"'>"+data[index].name+"</option>");
                    })
                }
            })
        }
        $("#dept2").change(function () {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selDepartmentsByDeptid",
                data: {deptid:$("#dept2").val()},
                dataType:"json",
                success:function (data) {
                    if ($("#dept2").val()==3){
                        $(".zy2").show();
                    }else {
                        $(".zy2").hide();
                        $("#room2_msg").val("");
                        $("#bed2_msg").val("");
                    }
                    $("#depart2").text("");
                    $("#doc2").text("");
                    $("#depart2").append("<option value=''>"+"请选择"+"</option>");
                    $("#doc2").append("<option value=''>"+"请选择"+"</option>");
                    $.each(data,function (index) {
                        $("#depart2").append("<option value='"+data[index].departid+"'>"+data[index].name+"</option>");
                    })
                }
            })
            $("#depart2").change(function () {
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/patient/selDoctorByDepartid",
                    data: {departid:$("#depart2").val()},
                    dataType:"json",
                    success:function (data) {
                        $("#doc2").text("");
                        $("#doc2").append("<option value=''>"+"请选择"+"</option>");
                        $.each(data,function (index) {
                            $("#doc2").append("<option value='"+data[index].docid+"'>"+data[index].name+"</option>");
                        })
                    }
                })
            })
        })
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/patient/selRoomByStatus",
            dataType:"json",
            success:function (data) {
                $.each(data,function (index) {
                    $("#room2").append("<option value='"+data[index].roomid+"'>"+data[index].name+"</option>");
                })
            }
        })
        $("#room2").change(function () {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selBedByRoomid",
                data: {roomid:$("#room2").val()},
                dataType:"json",
                success:function (data) {
                    $("#bed2").text("");
                    $("#bed2").append("<option value=''>"+"请选择"+"</option>");
                    $.each(data,function (index) {
                        $("#bed2").append("<option value='"+data[index].bedid+"'>"+data[index].name+"</option>");
                    })
                }
            })
        })
    })
    $("#addPatient").click(function () {
        $("#dept").text("");
        $("#depart").text("");
        $("#doc").text("");
        $("#room").text("");
        $("#bed").text("");
        $("#bed").append("<option value=''>"+"请选择"+"</option>");
        $("#room").append("<option value=''>"+"请选择"+"</option>");
        $("#dept").append("<option value=''>"+"请选择"+"</option>");
        $("#depart").append("<option value=''>"+"请选择"+"</option>");
        $("#doc").append("<option value=''>"+"请选择"+"</option>");
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/patient/selHosdept",
            dataType:"json",
            success:function (data) {
                $.each(data,function (index) {
                    $("#dept").append("<option value='"+data[index].deptid+"'>"+data[index].name+"</option>");
                })
            }
        })
        $("#dept").change(function () {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selDepartmentsByDeptid",
                data: {deptid:$("#dept").val()},
                dataType:"json",
                success:function (data) {
                    if ($("#dept").val()==3){
                        $(".zy").show();
                    }else {
                        $(".zy").hide();
                        $("#room_msg").val("");
                        $("#bed_msg").val("");
                    }
                    $("#depart").text("");
                    $("#doc").text("");
                    $("#depart").append("<option value=''>"+"请选择"+"</option>");
                    $("#doc").append("<option value=''>"+"请选择"+"</option>");
                    $.each(data,function (index) {
                         $("#depart").append("<option value='"+data[index].departid+"'>"+data[index].name+"</option>");
                    })
                }
            })
            $("#depart").change(function () {
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/patient/selDoctorByDepartid",
                    data: {departid:$("#depart").val()},
                    dataType:"json",
                    success:function (data) {
                        $("#doc").text("");
                        $("#doc").append("<option value=''>"+"请选择"+"</option>");
                        $.each(data,function (index) {
                            $("#doc").append("<option value='"+data[index].docid+"'>"+data[index].name+"</option>");
                        })
                    }
                })
             })
        })
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/patient/selRoomByStatus",
            dataType:"json",
            success:function (data) {
                $.each(data,function (index) {
                    $("#room").append("<option value='"+data[index].roomid+"'>"+data[index].name+"</option>");
                })
            }
        })
        $("#room").change(function () {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selBedByRoomid",
                data: {roomid:$("#room").val()},
                dataType:"json",
                success:function (data) {
                    $("#bed").text("");
                    $("#bed").append("<option value=''>"+"请选择"+"</option>");
                    $.each(data,function (index) {
                        $("#bed").append("<option value='"+data[index].bedid+"'>"+data[index].name+"</option>");
                    })
                }
            });

        });
    });
</script>