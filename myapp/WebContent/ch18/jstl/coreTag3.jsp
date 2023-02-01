<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String str1[] = { "simba", "rorod", "tina", "poli" };
	String str2 = "JAVA, JSP; Spring, Android";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
	<h2>Core Tags3</h2>
	<!-- 기본적인 시스템을 이용해 만든 것을 커스텀한 곳에선 당연히 사용할 수 있다 -->
	<c:set var="arr" value="<%=str1%>" />
	<c:forEach var="roo1" items="${arr}" begin="0" step="1" end="3">
	${roo1}<br />
	</c:forEach>
	<hr align="left" width="220" />
	<c:set var="s" value="<%=str2%>" />
	<!-- delims=",;" 둘 다 포함 되어 있어야 하나의 토큰으로 봄 -->
	<c:forTokens var="roo2" items="${s}" delims=",;">
		<b>${roo2} </b>
	</c:forTokens>
</body>
</html>