<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 Empty</h2>
name 속성값 유무 : <b>${empty param.name}</b><br/>
<!-- name의 속성값을 넘겨줌 -->
<a href="empty.jsp?name=rorod">name값이 있는 요청</a> ||
<!-- 아무것도 안 넘겨줌 -->
<a href="empty.jsp">name값이 없는 요청</a>
</body>
</html>