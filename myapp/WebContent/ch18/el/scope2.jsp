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
<!-- 동일한 변수 명이 하나일 때, 앞에 Scope.을 생략 할 수 있다. -->
msg(pageScope로 받은 값) : <b>${pageScope.msg}</b><br/>
msg(requestScope로 받은 값) : <b>${requestScope.msg}</b></p>
1에서 10까지의 합(request로 받은 값) : <b><%=request.getAttribute("sum") %></b><br/>
1에서 10까지의 합(requestScope로 받은 값) : <b>${requestScope.sum}</b><p/>
</body>
</html>