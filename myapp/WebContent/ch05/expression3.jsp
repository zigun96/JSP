<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%!
// 선언문의 맴버변수는 초기값 미설정시, 자동으로 '0'으로 초기화가 진행된다
	int n1;
	int n2;
	public int multiple(int a, int b) {
		return a + b;
	}
%>
<%
	n1 = 10;
	n2 = 20;
%>
<h2><%
// 스크립트릿에서의 출력은 out.println() 메서드를 통해 출력해야 한다
	out.println("선언문, 스크립트릿, 표현식, 주석문 사용 예제");
%></h2><p>
표현식을 이용 출력 : <%=multiple(n1, n2)%><p> 
<%
	out.println("스크립트릿 이용 출력 : " + multiple(n1, n2));
%>
</html>