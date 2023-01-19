<%@page contentType="application; charset=EUC-KR"%>
<jsp:useBean id="bMgr" class="ch15_1.BoardMgr" />
<%
	  bMgr.downLoad(request, response, out, pageContext);
%>