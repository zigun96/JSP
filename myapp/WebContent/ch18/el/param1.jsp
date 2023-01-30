<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("id", "test");
	request.setAttribute("pwd", "1234");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 param1</h2>
<!-- param.id와 param["id"]는 동일한 표현 -->
id : ${param.id}<br/>
pass : ${param["pwd"]}<br/>
<hr>
<!-- param은 html input 혹은 form에 넣은 데이터를 가져옴 -->
request.getParam id : <%=request.getParameter("id") %><br/>
request.getParam pwd : <%=request.getParameter("pwd") %><br/>
<hr>
<!-- getParameter와 getAttribute는 다른 용도 -->
request.getAttri id : <%=request.getAttribute("id") %><br/>
request.getAttri pwd : <%=request.getAttribute("pwd") %><br/>
<!-- <a href="param2.jsp">param2</a> -->
<jsp:forward page="param2.jsp"/>
</body>
</html>