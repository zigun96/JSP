<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
	String str1[] = {"제육덮밥", "오징어덮밥","순두부찌개","돈까스"};
	String str2 = "잔치국수, 비빔국수, 우동, 라면";
%>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h2>Core Tags3</h2>
<c:set var="arr" value="<%=str1 %>"/>
<c:forEach var="i" begin="0" step="1" end="3">
	${i}<br>
</c:forEach>
<ul>
	<c:forEach var="item" items="${arr}">
		<li>${item}</li>
	</c:forEach>
</ul>

<hr align="left" width="220" />
<c:set var="s" value="<%=str2 %>" />
<c:forTokens var="st" items="${s}" delims=", ;">
	<b>${st}&nbsp;</b>
	</c:forTokens>
</body>
</html>