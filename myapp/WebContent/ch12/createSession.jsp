<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션사용예제(세션생성)</title>
</head>
<body>
<%
	String id = "jaegeon";
	String pwd = "0920";
	
	session.setAttribute("idKey", id);
	session.setAttribute("pwdKey", pwd);
	/* session.setMaxInactiveInterval(10); */
%>
세션이 생성되었습니다.<br/>
<a href="viewSessionInfo.jsp">세션정보를 확인하는 페이지로 이동</a>
</body>
</html>