<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Scriptlet Example1</h1>
<%!
// 맴버변수, 일반 매서드 선언 가능
	int one;
	String msgOne;
%>
<%
// 지역변수 선언 가능
	int two = 31;
	String msgTwo = "Scriptlet Example";
%>
<body>
<%= two + " : " + msgTwo %><br/>
<%  /* 실제 주소 가져오는 메서드 
	jsp 파일이 java 파일로 변환 되기 전의 파일이다.*/
%>

<%=application.getRealPath("/") %>
</body>
</html>