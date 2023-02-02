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
<h2>온도계 변화</h2>
<form method="post" action="temperature.jsp">
	프로그램 정보 : ${Temperature.getInfo()}<p/>
	<!-- param은 따로 등록하는 과정 없이 선언된 요소면 가져올 수 있다 -->
	섭씨 : <input name="temp1" size=2 value="${param.temp1}">˚C
	<input type="submit" size=5 value="환산"> 
	화씨 : <input name="temp2" size=2 value="${Temperature.getFahrenheit(param.temp1)}" disabled>˚F
</form>
</body>
</html>