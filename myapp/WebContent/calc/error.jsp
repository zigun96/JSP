<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>에러 출력</h1>
<%! String errorName; %>
<%
	request.setCharacterEncoding("UTF-8");
	errorName = exception.getClass().getName();
%>
에러 메세지 : 
<%	if (errorName.equals("java.lang.ArithmeticException")) {
		out.println("입력 범위 오류");
		out.println("0으로 나눌 수 없습니다 !! \n");
	} else if (errorName.equals("java.lang.NumberFormatException")) {
		out.println("입력 타입 오류");
		out.println("정수만 입력하세요 !! \n");
	}
%>
<br/>
에러 클래스 : <%= exception.getMessage() %>
</body>
</html>