<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	String number = request.getParameter("number");
	
	if (gender.equals("man")) {
		gender = "남자";
	} else {
		gender = "여자";
	}
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Request Example1</h1>
성명 : <%=name %><p/>
학번 : <%=studentNum %><p/>
성별 : <%=gender %><p/>
학과 : <%=major %><p/>
연락처 : <%=number %><p/>
</body>
</html>