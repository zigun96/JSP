<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	pageContext.setAttribute("siteName", "itmaster.co.kr");
	request.setAttribute("siteName", "JSPStudy.co.kr");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 기본문법1</h2>
<!-- 범위가 더 작은 객체가 우선시 됨 -->
<p>사이트명: <strong>${siteName}</strong></p>
<p>request scope : <strong>${requestScope.siteName}</strong></p>
<%= request.getHeader("host") %><br/>
<%= request.getHeader("User-Agent") %>
</body>
</html>