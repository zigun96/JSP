<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String name="JSPStudy";
	String bloodType = request.getParameter("bloodType");
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Forward Tag Example2</h1>
<jsp:forward page='<%=bloodType + ".jsp" %>'>
	<jsp:param name="name" value="<%=name %>"/>
</jsp:forward>
</body>
</html>