<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String cookieName = "";
	String id = "";
	/* 클라이언트가 보낸 쿠키 정보 읽기 */
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		/* 배열의 형태로 쿠키값을 가져옴 */
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("idKey")) {
				cookieName = cookies[i].getName();
				id = cookies[i].getValue();
			}
		}
		if (!id.equals("")) {
%>
<script>
	alert("로그인 되었습니다.");
	location.href="cookieLoginOK.jsp";
</script>
<%
	}
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 로그인</title>
<link href="../ch09/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h2 align="center">Cookie 로그인</h2>
	<form method="post" action="cookieLoginProc.jsp">
		<table width="300" border="1" align="center" bgcolor=a6cec0>
			<tr bordercolor="#ffff66">
				<td colspan="2" align="center"><b>Log in</b></td>
			</tr>
			<tr>
				<td width="47%" align="center">ID</td>
				<td width="53%" align="center"><input name="id"></td>
			</tr>
			<tr>
				<td align="center">PWD</td>
				<td align="center"><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="login">
				<input type="reset" value="reset">
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>