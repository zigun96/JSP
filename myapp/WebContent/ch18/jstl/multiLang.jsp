<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%-- <fmt:setLocale value='${param.Language}'/> --%>
<fmt:setLocale value='<%=request.getParameter("Language")%>'/>
<fmt:bundle basename="resourceBundle.goods">
<title>상품등록</title>
</head>
<body>
<a href="?Language=kr">한국어</a> | <a href="?Language=en">English</a> | <a href="?Language=jp">日本語</a>
<h1><fmt:message key="title"/></h1>
<form name="newProduct" method="post">
<label><fmt:message key="productId"/></label>
<input type="text" name="productId"><br/>
<label><fmt:message key="pname"/></label>
<input type="text" name="pname"><br/>
<label><fmt:message key="unitPrice"/></label>
<input type="text" name="unitPrice"><br/>
</form>
</fmt:bundle>
</body>
</html>