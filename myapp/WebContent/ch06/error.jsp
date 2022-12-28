<%@ page language="java" contentType="text/html; charset=EUC-KR"
    isErrorPage="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>에러 페이지</h1>
다음과 같은 예외가 발생하였습니다.<p/>
<%=exception.getMessage()%> 개발자 연락처 :010-9265-1726

</body>
</html>