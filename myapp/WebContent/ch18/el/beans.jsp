<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="bean" class="ch18.el.ELBean"/>
<!-- 불러온 Class의 setter 호출 -->
<jsp:setProperty name="bean" property="siteName"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Language</title>
</head>
<body>
<h2>El의 beans</h2>
<strong>빈즈액션 태그</strong><br/>
<!-- 불러온 Class의 getter 호출 -->
사이트명 : <jsp:getProperty name="bean" property="siteName"/><p/>
<strong>EL Beans</strong><br/>
사이트명 : ${bean.siteName}
</body>
</html>