<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
<h2>Core Tags6</h2>
<c:catch var="ex">
<%
	int arr[] = {1, 2, 3};
	int sum = arr[0] + arr[1] + arr[2] + arr[3];
%>
</c:catch>
${ex}
</body>
</html>