<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ch18.el.Temperature" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Language</title>
</head>
<body>
<h2>�µ��� ��ȭ</h2>
<form method="post" action="temperature.jsp">
	���α׷� ���� : ${Temperature.getInfo()}<p/>
	<!-- param�� ���� ����ϴ� ���� ���� ����� ��Ҹ� ������ �� �ִ� -->
	���� : <input name="temp1" size=2 value="${param.temp1}">��C
	<input type="submit" size=5 value="ȯ��"> 
	ȭ�� : <input name="temp2" size=2 value="${Temperature.getFahrenheit(param.temp1)}" disabled>��F
</form>
</body>
</html>