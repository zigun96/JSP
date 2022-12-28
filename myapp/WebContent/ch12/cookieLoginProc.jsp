<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="regMgr" class="ch12.RegisterMgr"/>
<!DOCTYPE html>
<%
	String id="";
	String pwd="";
	if(request.getParameter("id") != null)
		id = request.getParameter("id");
	if(request.getParameter("pwd") != null)
		pwd = request.getParameter("pwd");
	if(regMgr.loginRegister(id, pwd)){
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);		
%>
<script>
	alert("로그인 되었습니다.");
	location.href = "cookieLoginOK.jsp";
</script>
<% } else { %>
<script>
	alert("아이디 또는 비밀번호 확인 후 로그인 해주시길 바랍니다.");
	location.href="cookieLogin.jsp";
</script>
<%}%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>