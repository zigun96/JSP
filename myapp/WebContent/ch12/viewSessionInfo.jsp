<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션사용예제</title>
</head>
<body>
<%
	/* 배열같은 인터페이스(Enumeration) 객체 */
	Enumeration en = session.getAttributeNames();
	while(en.hasMoreElements()) {
		String name = (String)en.nextElement();
		String value = (String)session.getAttribute(name);
		out.println("session name : " + name + "<br/>");
		out.println("session value : " + value + "<br/>");
	}
%>
</body>
</html>