<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
	String name = "���� ������� ��";
%>
<html>
<body>
<h1>Include Tag Example1</h1>
<jsp:include page="includeTagTop1.jsp"/>
include ActionTag�� Body�Դϴ�.
</body>
</html>