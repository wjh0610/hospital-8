<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<body>
<h2>Hello World!</h2>
<a href="${pageContext.request.contextPath}/patient/selPatient">病人管理</a>
<a href="${pageContext.request.contextPath}/patient/selReg">预约管理</a>
<a href="${pageContext.request.contextPath}/patient/selPatHis">患者记录</a>
<a href="${pageContext.request.contextPath}/patient/selRegHis">预约记录</a>
<a href="${pageContext.request.contextPath}/patient/selPreHis">开药记录</a>
</body>
</html>
