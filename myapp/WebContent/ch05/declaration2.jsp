<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Declaration Example2</h1>
<%!
	int one;
	int two = 1;
	public int plusMethod() {
		return one + two;
	}
	 String msg;
	int three;
%>
<body>
<!-- �ɹ������� �ʱⰪ�� �������� ���� ��� �ڵ����� �ʱ�ȭ�� �Ͼ�� -->
�ʱ�ȭ ���� ���� ������ ���� ? <%=one %><p>

<!--  return���� �ִ� plusMethod()�� ���� ǥ�������� ǥ���� �� �ִ� -->
one �� two�� ���� ? <%=plusMethod() %><p>
String msg�� ���� ? <%=msg %><p>
int three�� ���� ? <%=three %>
</body>
</html>