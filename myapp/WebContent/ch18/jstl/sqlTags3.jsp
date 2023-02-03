<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGIN</title>
</head>
<body>
<h1>JSP로 로그인 성공</h1>
<sql:query var="data" dataSource="${db}">
	select name from tblmember where id=? and pwd=?
	<sql:param value="${param.id}"/>
	<sql:param value="${param.pwd}"/>
</sql:query>
<c:if test="${data.rowCount eq 1}">
<c:forEach var="member" items="${data.rows}">
환영합니다, ${member['name']}님!!
</c:forEach>
</c:if>
<c:if test="${data.rowCount eq 0}">
<c:redirect url="loginJSTL.html"/>
</c:if>
</body>
</html>