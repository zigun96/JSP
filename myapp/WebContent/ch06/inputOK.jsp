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
<h2>���� �Է�</h2>
<h2>�Է°�: <%=number %></h2>

</body>
</html>