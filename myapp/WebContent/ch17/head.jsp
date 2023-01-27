<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	String id = (String) session.getAttribute("idKey");
	String cPath = request.getContextPath();
	String url = "../ch14/member.jsp";
	String label = "회원가입";
		if(id!=null) {
			url = "../ch14/memberUpdate.jsp";
			label = "회원수정";
		}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>head</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table width="1280" border="0" cellpadding="0" cellspacing="0">
		<tr>
	<td colspan="5">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
	<td height="50">
<a href="<%=cPath%>/ch17/index.jsp" target="_parent" onFocus="this.blur();">
<img src="images/logo.png" border=0></a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="20">
					<td colspan="5">&nbsp;</td>
				</tr>
				<tr>
				<td width="250">&nbsp;</td>
			<td><font size="3"><a href="<%=url%>" target="content"><b><%=label%></b></a></font></td>
				<td><font size="3"><a href="../ch15_1/list.jsp" target="content"><b>게시판</b></a></font></td>
		<td><font size="3"><a href="../ch16/pollList.jsp" target="content"><b>설문조사</b></a></font></td>
		<%if(id!=null) {%>
			<td><font size="3"><a href="../ch14/selfInfo.jsp" target="content"><b>자기 정보조회</b></a></font></td>
		<% } %> 
		
				</tr>
	</table>
</body>
</html>