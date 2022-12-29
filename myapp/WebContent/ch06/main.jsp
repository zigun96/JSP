<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    
%>
<!DOCTYPE html>
<html>
<%@include file="main-top.jsp" %><p/>
<h1>혼자 해보기</h1>
<h2>JSP지시자 실습 - page, include, error page</h2>
<h2>-Top의 시간과 Bottom의 저작권 페이지는 include로 완성</h2>
<h2>-Top페이지의 시간과 저작권 표시는 page 속성으로 완성</h2>
<h2>-Main에서 오류 발생시 errorPage와 isErrorPage 속성으로 완성</h2>
<h2>-파일 총 4개(main.jsp, main-top.jsp, main-bottom.jsp, )</h2>
<form action="inputOK.jsp">정수 입력: <input name="number"><button type="submit">확인</button></form>
<%@include file="main-bottom.jsp" %><p/>
</body>
</html>