<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 箫声巷陌
  Date: 2021-06-07
  Time: 15:15
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
<form class="form-inline" method="post" action="${pageContext.request.contextPath}/patient/selPatHisByName">
    <div class="form-group"><input name="name"  class="form-control" placeholder="请输入姓名"></div> <input type="submit" class="btn btn-primary btn-sm" value="🔍">
</form>
<c:if test="${not empty patients}">
    <table class="table table-bordered  table-hover table-condensed">
        <thead>
        <tr>
            <th>编号</th>
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
            <th>出院时间</th>
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
                <td>${p.dept}</td>
                <td>${p.depart}</td>
                <td>${p.doc}</td>
                <td>${p.intro}</td>
                <td>${p.startime}</td>
                <td>${p.room}</td>
                <td>${p.bed}</td>
                <td>${p.endtime}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
