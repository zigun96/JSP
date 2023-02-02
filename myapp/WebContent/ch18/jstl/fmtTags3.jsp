<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
<h2>Formattiong Tags3</h2>

<!-- Date 객체 생성 및 주소 저장 -->
<c:set var="dayTime" value="<%=new Date() %>"/>
<!-- type="date": date만 출력 -->
<fmt:formatDate value="${dayTime}" type="date" dateStyle="full"/><br/>
<!-- type="time": time만 출력 -->
<fmt:formatDate value="${dayTime}" type="time" /><p/>

<fmt:timeZone value="Europe/london">
<strong>Europe/london</strong> : <br/> 
<fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full"/><br/>
</fmt:timeZone>

<fmt:setTimeZone value="America/New_York"/>
<strong>America/New_York</strong> : <br/>
<fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full"/><br/>
</body>
</html>