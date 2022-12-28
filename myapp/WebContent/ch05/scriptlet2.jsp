<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Scriptlet Example2</h1>
<%
	float f = 2.3f;
	int i = Math.round(f);
	// java.util.Date를 임포트해온것과 같다
	java.util.Date date = new java.util.Date();
%>
실수 f의 반올림값은? <%=i %><p>
현재의 날짜와 시간은? <%=date.toString() %>

</html>