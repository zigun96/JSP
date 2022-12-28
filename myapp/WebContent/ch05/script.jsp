<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<title>JSP스크립트 Example</title>
<body>
<h1>Script Example</h1>
<%!
String declaration = "Declaration";
%>
<%!
	// 선언문
	public String decMethod() {
		return declaration;
	}
%>
<%
	// 스크립트릿
	String scriptlet = "Scriptlet";
	String comment = "Comment";
	out.println("내장객체를 이용한 출력 : " + declaration +"<p>");
%>
<%	// 표현식  %>
선언문의 출력1: <%=declaration %><p>
선언문의 출력2: <%=decMethod() %><p>
스크립트릿의 출력 : <%=scriptlet %><p>

<!-- JSP주석부분 -->
<!-- 변수와 태그는 그대로 들어감 -->
<!-- JSP 주석 1: <%=comment%> --><p>

<%-- 출력되지도 않는 주석 --%>
<%-- JSP 주석 2: <%=comment %> --%>
<%  
	// 주석문
	/* 주석
	(여러줄 주석)
	*/
%>
<%// 주석(한줄 주석)%>
</body>
</html>