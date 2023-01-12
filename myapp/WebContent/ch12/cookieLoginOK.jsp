<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("idKey")) {
				id = cookies[i].getValue();
			}
		}
		if (id.equals("")) {
%>
<script>
	alert("로그인 되지 않았습니다.");
	location.href = "cookieLogin.jsp";
</script>
<%
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 로그인</title>
<ling href="../ch09/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h2 align="center">Cookie 로그인</h2>
	<table width="300" border="1" align="center" bgcolor="a6cec0">
		<tr bordercolor="#ffff66">
			<td colspan="2" align="center"><b>Log On Page</b></td>
		</tr>
		<tr>
			<td align="center"><b><%=id%></b>님이 로그인 하셨습니다.</td>
			<td align="center"><a href="cookieLogout.jsp">로그아웃</a></td>
		</tr>
	</table>
</body>
</html>