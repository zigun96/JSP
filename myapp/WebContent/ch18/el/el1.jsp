<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<%
	request.setAttribute("siteName", "JSPStudy.co.kr");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 기본문법1</h2>
<p>사이트명: <strong>${siteName}</strong></p>
</body>
</html>