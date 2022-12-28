<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% String star = request.getParameter("starsign");%>
<jsp:forward="<%=star +".jsp" %>">
<body>

</body>
</html>