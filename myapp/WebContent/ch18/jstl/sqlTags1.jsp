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
	<!-- �±� �ȿ� ����� sql���� ����ǰ� �� ������� var="lists"������ ������ -->
	<sql:query var="lists" dataSource="${db}">
		select id, name from tblMember
	</sql:query>
	
	<!-- var="lists" ���� ���� ������ forEach �ݺ����� ���� ����� -->
	<c:forEach var="member" items="${lists.rows}">
		${member}<br/>
	</c:forEach> 
</body>
</html>