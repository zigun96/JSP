<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- JSP 액션태그 -->
<% request.setCharacterEncoding("utf-8"); %>
<!-- 아이디 , 사용할 클래스, 적용범위 -->
<jsp:useBean id="mybean" class="ch09.SimpleBean" scope="page" />
<!-- 불러올 HTML의 요소들 -->
<jsp:setProperty name="mybean" property="message" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>간단한 빈 프로그래밍</h1>
<br/>
Message: <jsp:getProperty name="mybean" property="message" />
</body>
</html>