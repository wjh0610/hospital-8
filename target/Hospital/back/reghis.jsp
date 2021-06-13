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
<form class="form-inline" method="post" action="${pageContext.request.contextPath}/patient/selRegHisByIdnum">
    <div class="form-group"><input name="idnum"  class="form-control" placeholder="请输入证件号"></div> <input type="submit" class="btn btn-primary btn-sm" value="🔍">
</form>
<c:if test="${not empty regs}">
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
            <th>预约时间</th>
            <th>病症描述</th>
            <th>就医时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${regs}" var="p">
            <tr>
                <td>${p.rid}</td>
                <td>${p.name}</td>
                <td>${p.sex}</td>
                <td>${p.age}</td>
                <td>${p.idnum}</td>
                <td>${p.phone}</td>
                <td>${p.deptid}</td>
                <td>${p.departid}</td>
                <td>${p.docid}</td>
                <td>${p.rdate}</td>
                <td>${p.intro}</td>
                <td>${p.jydate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
