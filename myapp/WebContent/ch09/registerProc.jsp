<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="regBean" class="ch09.MemberBean" scope="page"/>
<jsp:setProperty name="regBean" property="*"/>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ Ȯ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF">
	<table width="80%" align="center" border="0" cellspacing="0" cellpadding="5">
	<tr>
	<td align="center" valign="middle" bgcolor="#F5F5F5">
		<table width="90%" border="1" cellspacing="0" cellpadding="2" align="center">
		<form name="regForm" method="post" action="memberInsert.jsp">
		<tr align="center" bgcolor="#B0E0E6">
			<td colspan="3"><font color="#000000"><b>
			<jsp:getProperty name="regBean" property="name" />
			ȸ������ �ۼ��Ͻ� �����Դϴ�. Ȯ���� �ּ���</b></font></td>
			</tr>
			<tr>
			<td width="24%">���̵�</td>
			<td width="41%"><jsp:getProperty name="regBean" property="id"/></td>
			</tr>
			<tr>
			<td>��й�ȣ</td>
			<td><jsp:getProperty name="regBean" property="pwd"/></td>
			</tr>
			<tr>
			<td>�������</td>
			<td><jsp:getProperty name="regBean" property="birthday"/></td>
			</tr>
			<tr>
			<td>�̸���</td>
			<td><jsp:getProperty name="regBean" property="email"/></td>
			</tr>
			<tr>
			<td>��ȭ��ȣ</td>
			<td><jsp:getProperty name="regBean" property="number"/></td>
			</tr>
			<tr>
			<td colspan="2" align="center">
			<input type="button" value="Ȯ�οϷ�">&nbsp;
			<input type="button" value="�ٽþ���" onClick="history.back()">
			</td>
			</tr>
		</form>
		</table>
	</td>
	</tr>
	</table>
</body>
</html>