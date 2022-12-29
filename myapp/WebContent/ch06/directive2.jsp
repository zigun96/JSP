<%@ page
	language="java"
	contentType="text/html;charset=EUC-KR"
    session="true"
    buffer="16kb"
    autoFlush="true"
    isThreadSafe="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Directive Example2</h1>
<%
	java.util.Date date = new java.util.Date();
%>
 현재의 날짜와 시간은?<p/>
<%=date.toLocaleString()%>
</body>
</html>