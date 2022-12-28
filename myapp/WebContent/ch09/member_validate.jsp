<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>회원가입</title>
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
			<td colspan="3"><font color="#000000"><b>회원가입</b></font></td>
		</tr>
		<tr>
			<td width="100">아이디</td>
			<td width="200"><input name="id" size="15"></td>
			<td width="200">아이디를 적어주세요.</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" size="15"></td>
			<td>비밀번호를 적어주세요.</td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="repwd" size="15"></td>
			<td>비밀번호를 확인합니다.</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name" size="15" required></td>
			<td>고객실명을 적어주세요.</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input name="birthday" size="27"></td>
			<td>생년월일을 적어주세요.</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input name="email" size="20"></td>
			<td>이메일을 적어주세요.</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input name="number" size="14"></td>
			<td>전화번호를 적어주세요.</td>
		</tr>
		<tr>
		<td colspan="3" align="center">
		<input type="button" value="회원가입" onclick="inputCheck()">&nbsp;
		<input type="reset" value="다시쓰기">
		</td>
		</tr>
	</form>
	</table>
</td>
</tr>
</table>
</body>
</html>