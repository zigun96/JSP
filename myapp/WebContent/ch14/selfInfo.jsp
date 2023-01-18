<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*, ch14.*"%>
<%!	String gender;%>
<%	String id = (String)session.getAttribute("idKey");%>

<!-- 자바 빈 연결 -->
<jsp:useBean id="regMgr" class="ch14.MemberMgr" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자신 정보 조회</title>
<!-- 스타일 연결 -->
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#ffffff">
	<h2>자신 정보 조회</h2>
	<h3>회원정보</h3>
	<table bgcolor="a6cec0" bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PASSWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>GENDER</strong></td>
			<td><strong>BIRTHDAY</strong></td>
			<td><strong>EMAIL</strong></td>
			<td><strong>ZIPCODE</strong></td>
			<td><strong>ADDRESS</strong></td>
			<td><strong>HOBBY</strong></td>
			<td><strong>JOB</strong></td>
			<td><strong>NATION</strong></td>
		</tr>
		<%
			MemberBean vlist = regMgr.getMember(id);
			if("1".equals(vlist.getGender())) {
				gender = "남자";
			} else {
				gender = "여자";
			}
		%>
		<tr>
			<td><%=vlist.getId()%></td>
			<td><%=vlist.getPwd()%></td>
			<td><%=vlist.getName()%></td>
			<td><%=gender%></td>
			<td><%=vlist.getBirthday()%></td>
			<td><%=vlist.getEmail()%></td>
			<td><%=vlist.getZipcode()%></td>
			<td><%=vlist.getAddress()%></td>
			<%
			String output = "";
			String[] hobby = vlist.getHobby();
			String[] inHobby = {"인터넷", "여행", "게임", "영화", "운동"};
			if("1".equals(hobby[0])) output += inHobby[0];
			for(int i = 1; i < hobby.length; i++){
				if("1".equals(hobby[i])){
					output += " / "+ inHobby[i];
				}
			}
			%>
			<td><%=output %></td>
			<td><%=vlist.getJob()%></td>
			<td><%=vlist.getNation()%></td>
		</tr>
	</table>
	<br />
</body>
</html>