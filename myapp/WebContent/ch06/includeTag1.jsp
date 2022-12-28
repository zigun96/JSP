<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
	String name = "전혀 상관없는 값";
%>
<html>
<body>
<h1>Include Tag Example1</h1>
<jsp:include page="includeTagTop1.jsp"/>
include ActionTag의 Body입니다.
</body>
</html>