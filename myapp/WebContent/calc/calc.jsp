<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<%request.setCharacterEncoding("UTF-8"); %>
<%!
	int num1;
	int num2;
	int result = 0;
	String oper;
%>
<%
	num1 = Integer.parseInt(request.getParameter("num1"));
	num2 = Integer.parseInt(request.getParameter("num2"));
	oper = request.getParameter("oper");
	
	switch(oper) {
		case "+":
        	 result = num1 + num2;
        	 break;
      	case "-":
        	 result = num1 - num2;
        	 break;
        case "*":
        	 result = num1 * num2;
         	break;
        case "/":
        	 result = num1 / num2;
        	 break;
        	 }
%>

<head>
<meta charset="UTF-8">
<title>JSP 계산기</title>
</head>
<body>
<h1>JSP 계산기</h1><br/>
<hr/>
<h1>계산결과: <%= num1 + " " + oper + " " + num2 + " = " + result %></h1>
</body>
</html>