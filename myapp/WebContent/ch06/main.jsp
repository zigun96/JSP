<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    
%>
<!DOCTYPE html>
<html>
<%@include file="main-top.jsp" %><p/>
<h1>ȥ�� �غ���</h1>
<h2>JSP������ �ǽ� - page, include, error page</h2>
<h2>-Top�� �ð��� Bottom�� ���۱� �������� include�� �ϼ�</h2>
<h2>-Top�������� �ð��� ���۱� ǥ�ô� page �Ӽ����� �ϼ�</h2>
<h2>-Main���� ���� �߻��� errorPage�� isErrorPage �Ӽ����� �ϼ�</h2>
<h2>-���� �� 4��(main.jsp, main-top.jsp, main-bottom.jsp, )</h2>
<form action="inputOK.jsp">���� �Է�: <input name="number"><button type="submit">Ȯ��</button></form>
<%@include file="main-bottom.jsp" %><p/>
</body>
</html>