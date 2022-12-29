<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<h1>If-else Example</h1>
<%!
	String msg;
%>
<%
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	/**
	if (color.equals("darkcyan")){
	msg = "푸른색";
	
	} else if (color.equals("red")) {
	msg = "붉은색";
	
	} else if (color.equals("orange")) {
	msg = "오렌지색";
	
	} else {
		color="white";
		msg = "기타색";
	}
	*/
	switch(color){
	case "darkcyan":
		msg = "푸른색";
		break;
		
	case "red":
		msg = "붉은색";
		break;
		
	case "orange":
		msg = "오렌지색";
		break;
		
	default:
		color = "white";
		msg = "기타색";
		break;
	}
%>
<body bgcolor=<%=color %>>
<b><%=name%></b>님이 좋아하는 색깔은 <b><%=msg%></b>입니다.
</body>
</html>