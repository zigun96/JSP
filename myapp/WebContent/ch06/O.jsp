<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Forward Tag Example2</h1>
<%=name %>님의 혈액형은
<b><%=bloodType %></b>형이고<p/>
정확한 판단력을 가진 합리주의자입니다.
</body>
</html>