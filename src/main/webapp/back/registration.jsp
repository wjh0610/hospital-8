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
<c:if test="${empty regs}">
    <button class="btn btn-block btn-default btn-info disabled active" type="button">当前没有预约信息</button>
</c:if>
<c:if test="${not empty regs}">
    <table class="table table-bordered">
        <caption>患者信息</caption>
        <thead>
        <tr>
            <th>患者编号</th>
            <th>患者姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>证件号</th>
            <th>联系电话</th>
            <th>预约部门</th>
            <th>预约科室</th>
            <th>预约医生</th>
            <th>预约时间</th>
            <th>病症描述</th>
            <th>办理</th>
        </tr>
        </thead>
        <tbody>
    <c:forEach items="${regs}" var="r">
        <tr>
            <td>${r.rid}</td>
            <td>${r.name}</td>
            <td>${r.sex}</td>
            <td>${r.age}</td>
            <td>${r.idnum}</td>
            <td>${r.phone}</td>
            <td>${r.hosdept.name}</td>
            <td>${r.departments.name}</td>
            <td>${r.doctor.name}</td>
            <td>${r.rdate}</td>
            <td>${r.intro}</td>
            <td>
                <button id="upd" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2">
                    就医
                </button>
            </td>
        </tr>
    </c:forEach>
        </tbody>
    </table>
  </c:if>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel2">
                    患者信息
                </h4>
            </div>
            <div class="modal-body">
                <form method="post" action="${pageContext.request.contextPath}/patient/updReg" id="fom2">
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
                            <input id="dept" name="dept" style="display: none">
                            <input id="depart" name="depart" style="display: none">
                            <input id="doc" name="doc" style="display: none">
                            <td><input type="button" style="color: red;width: 100%" id="depart2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="负责医生"></td>
                            <td><select class="form-control" name="docid" id="doc2">
                            </select></td>
                            <td><input type="button" style="color: red;width: 100%" id="doc2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="预约时间"></td>
                            <td><input type="text" class="form-control" id="rdate" name="rdate" readonly></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn btn-default" value="病症描述"></td>
                            <td><input type="text" class="form-control" id="intro2" name="intro"></td>
                        </tr>
                        <tr class="zy">
                            <td><input type="button" class="btn btn-default" value="房间号"></td>
                            <td>
                                <select class="form-control" name="roomid" id="room2">
                                </select>
                            </td>
                            <td><input type="button" style="color: red;width: 100%" id="room2_msg" class="btn btn-default" value="不能为空"></td>
                        </tr>
                        <tr class="zy">
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
    function ifnull(txt) {
        return /^\s+$/.test(txt) || txt=="";
    }

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
        $("#dept").val($(this).parents("td").prev().prev().prev().prev().prev().text());
        $("#depart").val($(this).parents("td").prev().prev().prev().prev().text());
        $("#doc").val($(this).parents("td").prev().prev().prev().text());
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
            url:"${pageContext.request.contextPath}/patient/selRegByIdnum",
            data:{idnum:$(this).parents("td").prev().prev().prev().prev().prev().prev().prev().text()},
            dataType:"json",
            success:function (data) {
                $("#name2").val(data.name);
                $("#sex2").val(data.sex);
                $("#age2").val(data.age);
                $("#idnum2").val(data.idnum);
                $("#phone2").val(data.phone);
                $("#rdate").val(data.rdate);
                $("#intro2").val(data.intro);
                $("#oldbed").val(data.bedid);
            }
        })
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
        $("#dept2").change(function () {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/patient/selDepartmentsByDeptid",
                data: {deptid:$("#dept2").val()},
                dataType:"json",
                success:function (data) {
                    if ($("#dept2").val()==3){
                        $(".zy").show();
                    }else {
                        $(".zy").hide();
                    }
                    $("#depart2").text("");
                    $("#doc2").text("");
                    $("#depart2").append("<option value=''>"+"请选择"+"</option>");
                    $("#doc2").append("<option value=''>"+"请选择"+"</option>");
                    $.each(data,function (index) {
                        $("#depart2").append("<option value='"+data[index].departid+"'>"+data[index].name+"</option>");
                    })
                }
            });
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
                });
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
    });
</script>