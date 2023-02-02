<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<h2>Formatting Tags4</h2>
	<!-- 프로퍼티 가져오기 -->
	<fmt:setBundle var="note" basename="ch18.jstl.note" />
	<br />
	<!-- key="country"에 해당되는 value 가져오기 -->
	<fmt:message bundle="${note}" key="country" />
	<br />
	<!-- key="siteName"에 해당되는 value 가져오기 -->
	<fmt:message bundle="${note}" key="siteName" />
	<br />
	<!-- key="message"에 해당되는 value 가져오기 -->
	<fmt:message bundle="${note}" key="message">
		<fmt:param value="${param.message}" />
	</fmt:message>
</body>
</html>