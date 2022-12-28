<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	pageContext.setAttribute("msg", "꿈은 이루어진다.");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 Scope1</h2>
msg(pageScope로 받은값) : <b>${pageScope.msg}</b><p/>
1에서 10까지의 합(request로 받은 값) : <b><%=request.getAttribute("sum") %></b><br/>
1에서 10까지의 합(requestScope로 받은 값) : <b>${requestScope.sum}</b><p/>
</body>
</html>