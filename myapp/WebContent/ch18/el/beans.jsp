<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="bean" class="ch18.el.ELBean"/>
<!-- �ҷ��� Class�� setter ȣ�� -->
<jsp:setProperty name="bean" property="siteName"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Language</title>
</head>
<body>
<h2>El�� beans</h2>
<strong>����׼� �±�</strong><br/>
<!-- �ҷ��� Class�� getter ȣ�� -->
����Ʈ�� : <jsp:getProperty name="bean" property="siteName"/><p/>
<strong>EL Beans</strong><br/>
����Ʈ�� : ${bean.siteName}
</body>
</html>