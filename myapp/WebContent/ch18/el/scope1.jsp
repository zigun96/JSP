<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setAttribute("msg", "분명히 꿈은 이루어진다.");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 Scope1</h2>
<%
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	/* 메모리에 할당 후 "sum"으로 저장 */
	request.setAttribute("sum", new Integer(sum));
%>
<jsp:forward page="scope2.jsp"/>
</body>
</html>