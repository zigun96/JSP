<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
<h2>SQL Tags2</h2>

<!-- 첫 번째 param => name, 두 번째 param => id -->
<sql:update dataSource="${db}">
	update tblMember set name=? where id=?
	<sql:param value="${'animal'}"/>
	<sql:param value="${'dd'}"/>
</sql:update>
업데이트를 하였습니다.<br/>
<a href="sqlTags1.jsp">SELECT</a>
</body>
</html>