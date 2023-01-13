<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인되어있는 세션 무효화 -->
<% session.invalidate(); %>
<script>
	alert("로그아웃 되었습니다.");
	location.href="sessionLogin.jsp";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>