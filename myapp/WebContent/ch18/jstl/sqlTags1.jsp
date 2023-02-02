<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource
	url="jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=EUC_KR"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="1234" var="db"
	scope="application"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
<h2>SQL Tags1</h2>
	<!-- 태그 안에 선언된 sql문이 실행되고 그 결과값을 var="lists"변수에 저장함 -->
	<sql:query var="lists" dataSource="${db}">
		select id, name from tblMember
	</sql:query>
	
	<!-- var="lists" 변수 안의 값들을 forEach 반복문을 통해 출력함 -->
	<c:forEach var="member" items="${lists.rows}">
		${member}<br/>
	</c:forEach> 
</body>
</html>