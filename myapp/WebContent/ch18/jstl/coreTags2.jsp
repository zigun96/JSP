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
			<c:set var="c1" value="�����" />
		</c:when>
		<c:when test="${param.cl=='blue'}">
			<c:set var="c1" value="�Ķ���" />
		</c:when>
		<c:when test="${param.cl=='orange'}">
			<c:set var="c1" value="��������" />
		</c:when>
		<c:when test="${param.cl=='pink'}">
			<c:set var="c1" value="��ũ��" />
		</c:when>
		<c:otherwise>
			<c:set var="c1" value="��"/>
		</c:otherwise>
	</c:choose>
	���� �����ϴ� ������ <font color="${param.cl}">${c1}</font>�Դϴ�.
</body>
</html>