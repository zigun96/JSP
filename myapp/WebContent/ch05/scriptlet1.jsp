<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Scriptlet Example1</h1>
<%!
// �ɹ�����, �Ϲ� �ż��� ���� ����
	int one;
	String msgOne;
%>
<%
// �������� ���� ����
	int two = 31;
	String msgTwo = "Scriptlet Example";
%>
<body>
<%= two + " : " + msgTwo %><br/>
<%  /* ���� �ּ� �������� �޼��� 
	jsp ������ java ���Ϸ� ��ȯ �Ǳ� ���� �����̴�.*/
%>

<%=application.getRealPath("/") %>
</body>
</html>