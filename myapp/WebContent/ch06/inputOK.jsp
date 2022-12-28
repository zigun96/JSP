<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
	int number = Integer.parseInt(request.getParameter("number"));
%>
<body>
<h2>정상 입력</h2>
<h2>입력값: <%=number %></h2>

</body>
</html>