<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<h1>Declaration Example2</h1>
<%!
	int one;
	int two = 1;
	public int plusMethod() {
		return one + two;
	}
	 String msg;
	int three;
%>
<body>
<!-- 맴버변수는 초기값을 설정하지 않을 경우 자동으로 초기화가 일어난다 -->
초기화 하지 않은 변수의 값은 ? <%=one %><p>

<!--  return값이 있는 plusMethod()는 직접 표현식으로 표현할 수 있다 -->
one 와 two의 합은 ? <%=plusMethod() %><p>
String msg의 값은 ? <%=msg %><p>
int three의 값은 ? <%=three %>
</body>
</html>