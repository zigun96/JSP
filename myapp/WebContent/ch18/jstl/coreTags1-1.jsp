<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
<h2>Core Tags1</h2>
<c:set var="str1" value="JAVA의 JSTL" scope="page"/>
<c:set var="str2" value="null" scope="page"/>
<c:set var="str3" value="JSPStudy" scope="page"/>
<c:set var="str4" value="JSTL" scope="session"/>
<c:set var="str5" value="한국어" scope="page"/>

-<c:out value="${str1}" default="기본출력값"/><br/>
-<c:out value="${str2}" default="기본출력값"/><br/>
-<c:out value="${str3}" default="기본출력값"/><br/>
-<c:out value="${str4}" default="기본출력값"/><br/>
-<c:out value="${str5}" default="기본출력값"/><br/>

<c:remove var="str4"/>
-${str3}의 ${str4} ...
<c:set var="s" value="str4" scope="page"/>
<font color="green"><b>${s}</b></font>
</body>
</html>