<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Language</title>
</head>
<body>
<h2>EL�� Empty</h2>
name �Ӽ��� ���� : <b>${empty param.name}</b><br/>
<!-- name�� �Ӽ����� �Ѱ��� -->
<a href="empty.jsp?name=rorod">name���� �ִ� ��û</a> ||
<!-- �ƹ��͵� �� �Ѱ��� -->
<a href="empty.jsp">name���� ���� ��û</a>
</body>
</html>