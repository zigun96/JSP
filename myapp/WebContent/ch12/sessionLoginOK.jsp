<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("idKey");
	if (id == null) {
%>
<script>
	alert("로그인 되지 않았습니다.");
	location.href = "sessionLogin.jsp";
</script>
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple Login</title>
<link href="../ch09/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#ffffff" topmagin="100">
	<table width="688" border="1" align="center" bordercolor="#660000"
		bgcolor=a6cec0 cellpadding="1" cellspacing="1">
		<tr bordercolor="#ffff66">
			<td height="190" colspan="7">
				<table width="75%" border="1" align="center" cellspacing="1"
					cellpadding="1">
					<tr bordercolor="#ffff99">
						<td height="190" colspan="7">
							<table width="50%" border="1" align="center" cellspacing="0"
								cellpadding="0">
								<tr bordercolor="#ffff66">
									<td colspan="2"><div align="center">Log On Page</div></td>
								</tr>
								<tr>
									<td><div align="center">
											<a href="sessionLoginOK.jsp"><strong><%=id%></strong></a> 님이 로그인 하셨습니다.
										</div></td>
									<td><div align="center">
											<a href="sessionLogout.jsp"><strong>LOG OUT</strong></a>
										</div></td>
								</tr>
								<tr>
									<td><a href="usingJDBCBean.jsp"><div align="center"><strong>전체조회</strong></div></a></td>
									<td><a href="usingJDBCBean2.jsp"><div align="center"><strong>본인정보조회</strong></div></a></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
</body>
</html>