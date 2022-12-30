<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Forward Tag Example2</h1>
<%=name %>님의 혈액형은
<b><%=bloodType %></b>형이고<p/>
 대체로 자기에게서 발견할 수 없는 성격의 소유자에게 관심을 가지고 때로는 동경 합니다.<br/>
 판에 박은 듯한 사람, 뻔뻔스러운 사람, 사람의 기분을 개의치 않는 신경 둔한 사람을 싫어 합니다.<br/>
 음성적인 사람을 싫어 하고, 명랑하고 화제가 많고, 농담을 잘하는 사람을 좋아 합니다.</body>
</html>