<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="../calc/error.jsp"%>
<jsp:useBean id="calc" class="ch09.CalcBean" />
<jsp:setProperty property="*" name="calc" />
<% if (request.getMethod().equals("POST")) calc.calculate(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자바빈즈 계산기</h1><hr/>
<form method="post">
<input name="num1" size="10">
<select name="op">
	<option value="+">+</option>
	<option value="-">-</option>
	<option value="x" >x</option>
	<option value="/">/</option>
</select> 
<input name="num2" size="10">
<input type="submit" value="계산">
<input type="reset" value="다시입력">
</form>
<h2>계산 결과: <jsp:getProperty name="calc" property="result" /></h2>
</body>
</html>