<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body bgcolor="gray">
	<h2>Core Tags2</h2>
	<c:if test="${param.id != null}">
		<b>${param.id}</b>
	</c:if>
	<c:if test="${param.id == ''}">
		<b>Guest</b>
	</c:if>
	<c:choose>
		<c:when test="${param.cl=='yellow'}">
			<c:set var="c1" value="노란색" />
		</c:when>
		<c:when test="${param.cl=='blue'}">
			<c:set var="c1" value="파란색" />
		</c:when>
		<c:when test="${param.cl=='orange'}">
			<c:set var="c1" value="오렌지색" />
		</c:when>
		<c:when test="${param.cl=='pink'}">
			<c:set var="c1" value="핑크색" />
		</c:when>
		<c:otherwise>
			<c:set var="c1" value="블랙"/>
		</c:otherwise>
	</c:choose>
	님이 좋아하는 색상은 <font color="${param.cl}">${c1}</font>입니다.
</body>
</html>