<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%!
// ������ �ɹ������� �ʱⰪ �̼�����, �ڵ����� '0'���� �ʱ�ȭ�� ����ȴ�
	int n1;
	int n2;
	public int multiple(int a, int b) {
		return a + b;
	}
%>
<%
	n1 = 10;
	n2 = 20;
%>
<h2><%
// ��ũ��Ʈ�������� ����� out.println() �޼��带 ���� ����ؾ� �Ѵ�
	out.println("����, ��ũ��Ʈ��, ǥ����, �ּ��� ��� ����");
%></h2><p>
ǥ������ �̿� ��� : <%=multiple(n1, n2)%><p> 
<%
	out.println("��ũ��Ʈ�� �̿� ��� : " + multiple(n1, n2));
%>
</html>