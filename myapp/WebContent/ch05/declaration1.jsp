<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Declaration Example1</h1>
<%
	String name = team + " Fighting!!!";
%>
<!-- �Ŀ� ����� �ɹ������� ���� -->
<%!
	String team = "korea";
%>
<body>
��µǴ� ����� ? <%=name%>
</body>
</html>