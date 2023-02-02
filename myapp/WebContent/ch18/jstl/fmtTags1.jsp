<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
	<h2>
	Formatting Tags1</h2>
	<fmt:setLocale value="ko_kr" />
	<fmt:requestEncoding value="EUC-KR" />
	request name : <%=request.getParameter("name")%><br />
	<form method="post">
	el name : <input type="text" name="name"> <input type="submit">
	</form>
</body>
</html>