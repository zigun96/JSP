<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<%	String language = request.getParameter("Language");
	switch (language) {
	case "korean":%>
		<jsp:include page="includeKorean.jsp"/>
		<%break;
	case "english":%>
		<jsp:include page="includeEnglish.jsp"/>
		<%break;
	}
	%>
</html>