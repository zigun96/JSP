<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ������</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<script src="validate.js"></script>
</head>
<body bgcolor="#FFFFFF">
	<table width="80%" align="center" border="0" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#F5F5F5">
		<table width="90%" border="1" cellspacing="0" cellpadding="2" align="center">
		<form name="regForm" method="post" action="registerProc.jsp">
		<tr align="center" bgcolor="#B0E0E6">
			<td colspan="3"><font color="#000000"><b>ȸ������</b></font></td>
		</tr>
		<tr>
			<td width="100">���̵�</td>
			<td width="200"><input name="id" size="15"></td>
			<td width="200">���̵� �����ּ���.</td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="pwd" size="15"></td>
			<td>��й�ȣ�� �����ּ���.</td>
		</tr>
		<tr>
			<td>��й�ȣ Ȯ��</td>
			<td><input type="password" name="repwd" size="15"></td>
			<td>��й�ȣ�� Ȯ���մϴ�.</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input name="name" size="15" required></td>
			<td>���Ǹ��� �����ּ���.</td>
		</tr>
		<tr>
			<td>�������</td>
			<td><input name="birthday" size="27"></td>
			<td>��������� �����ּ���.</td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td><input name="email" size="20"></td>
			<td>�̸����� �����ּ���.</td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input name="number" size="14"></td>
			<td>��ȭ��ȣ�� �����ּ���.</td>
		</tr>
		<tr>
		<td colspan="3" align="center">
		<input type="button" value="ȸ������" onclick="inputCheck()">&nbsp;
		<input type="reset" value="�ٽþ���">
		</td>
		</tr>
	</form>
	</table>
</td>
</tr>
</table>
</body>
</html>