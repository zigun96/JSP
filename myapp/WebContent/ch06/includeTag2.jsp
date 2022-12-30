<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
	String siteName = request.getParameter("siteName");
%>
<html>
<body>
<h1>Include Tag Example2</h1>
<jsp:include page="includeTagTop2.jsp">
<jsp:param name="siteName" value="JSPStudy.co.kr"/>
</jsp:include>
include ActionTag의 Body입니다.<br/>
<b><%=siteName %></b>
<hr/>
</body>
</html>