<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<fmt:setLocale value="ko_kr" />
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
<h2>Formattiong Tags2</h2>

<c:set var="num" value="123456789"/>
	Core 태그 set으로 변수 num을 선언합니다.<p/>
	<strong>숫자</strong>: <fmt:formatNumber value="${num }" type="number"/><br/>
	<!-- groupingUsed: 세자리 마다 comma(,)를 넣어준다. -->
	<strong>퍼센트</strong>: <fmt:formatNumber value="${num }" type="percent" groupingUsed="true"/><br/>
	<!-- currency: 통화 currencySymbol: 심볼 -->
	<strong>달러</strong>: <fmt:formatNumber value="${num }" type="currency" /><br/>
	<!-- pattern: 정수와 소수자리 표현 -->
	<strong>패턴</strong>: <fmt:formatNumber value="${num }" pattern="0.0000" groupingUsed="false"/><p/>
	
	<!-- 실수값을 정수부분만 파싱하여(그 결과값을) 변수(i)로 쓰겠다. -->
	<fmt:parseNumber var="i" integerOnly="true" value="123.456"/>
	<strong>파싱 후 JSTL로 출력</strong> : <c:out value="${i}"/><br/>
	<strong>파싱 후 EL로 출력</strong> : ${i}<p/>
	
	<c:set var="r" value="999-444"/>
	<strong>파싱 전 데이터</strong> : ${r }<br/>
	<!-- 숫자 타입으로 파싱 -->
	<fmt:parseNumber value="${r }" type="number" var="num"/>
	<strong>파싱 후 데이터</strong> : ${num } 
	
</body>
</html>