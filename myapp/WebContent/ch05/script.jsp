<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<title>JSP��ũ��Ʈ Example</title>
<body>
<h1>Script Example</h1>
<%!
String declaration = "Declaration";
%>
<%!
	// ����
	public String decMethod() {
		return declaration;
	}
%>
<%
	// ��ũ��Ʈ��
	String scriptlet = "Scriptlet";
	String comment = "Comment";
	out.println("���尴ü�� �̿��� ��� : " + declaration +"<p>");
%>
<%	// ǥ����  %>
������ ���1: <%=declaration %><p>
������ ���2: <%=decMethod() %><p>
��ũ��Ʈ���� ��� : <%=scriptlet %><p>

<!-- JSP�ּ��κ� -->
<!-- ������ �±״� �״�� �� -->
<!-- JSP �ּ� 1: <%=comment%> --><p>

<%-- ��µ����� �ʴ� �ּ� --%>
<%-- JSP �ּ� 2: <%=comment %> --%>
<%  
	// �ּ���
	/* �ּ�
	(������ �ּ�)
	*/
%>
<%// �ּ�(���� �ּ�)%>
</body>
</html>