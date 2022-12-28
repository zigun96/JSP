<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Declaration Example1</h1>
<%
	String name = team + " Fighting!!!";
%>
<!-- 후에 선언된 맴버변수가 쓰임 -->
<%!
	String team = "korea";
%>
<body>
출력되는 결과는 ? <%=name%>
</body>
</html>