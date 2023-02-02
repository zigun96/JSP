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
	Core �±� set���� ���� num�� �����մϴ�.<p/>
	<strong>����</strong>: <fmt:formatNumber value="${num }" type="number"/><br/>
	<!-- groupingUsed: ���ڸ� ���� comma(,)�� �־��ش�. -->
	<strong>�ۼ�Ʈ</strong>: <fmt:formatNumber value="${num }" type="percent" groupingUsed="true"/><br/>
	<!-- currency: ��ȭ currencySymbol: �ɺ� -->
	<strong>�޷�</strong>: <fmt:formatNumber value="${num }" type="currency" /><br/>
	<!-- pattern: ������ �Ҽ��ڸ� ǥ�� -->
	<strong>����</strong>: <fmt:formatNumber value="${num }" pattern="0.0000" groupingUsed="false"/><p/>
	
	<!-- �Ǽ����� �����κи� �Ľ��Ͽ�(�� �������) ����(i)�� ���ڴ�. -->
	<fmt:parseNumber var="i" integerOnly="true" value="123.456"/>
	<strong>�Ľ� �� JSTL�� ���</strong> : <c:out value="${i}"/><br/>
	<strong>�Ľ� �� EL�� ���</strong> : ${i}<p/>
	
	<c:set var="r" value="999-444"/>
	<strong>�Ľ� �� ������</strong> : ${r }<br/>
	<!-- ���� Ÿ������ �Ľ� -->
	<fmt:parseNumber value="${r }" type="number" var="num"/>
	<strong>�Ľ� �� ������</strong> : ${num } 
	
</body>
</html>