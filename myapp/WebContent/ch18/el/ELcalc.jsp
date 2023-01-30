<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="../../ch06/error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ELcalc</title>
</head>
<body>
<h2>계산기</h2>
<form action="ELcalc.jsp" method="post">
	<input type="text" name="exp1" size=5 value="${param.exp1}">
	<select name="exp2">
		<option value="+">+</option>
		<option value="-">-</option>
		<option value="*">x</option>
		<option value="/">/</option>
	</select>
	<input type="text" name="exp3" size=5 value="${param.exp3}">
	=
<%
	String op = request.getParameter("exp2");
	if(op == null) op = "+";
	else {
		/* switch문으로 조건에 따른 input 생성 */
		switch(op){
			case "+": %><input type="text" name="exp4" size=5 value="${param.exp1 + param.exp3}"><% break;
			case "-": %><input type="text" name="exp4" size=5 value="${param.exp1 - param.exp3}"><% break;
			case "*": %><input type="text" name="exp4" size=5 value="${param.exp1 * param.exp3}"><% break;
			case "/": %><input type="text" name="exp4" size=5 value="${param.exp1 / param.exp3}"><% break;
			
			default: %> 연산자 오류!!
	<% }
	}%>
	
	<input type="submit" size=5 value="계산">
</form>
</body>
</html>