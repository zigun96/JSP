<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 param2</h2>

	name : ${param['name']}<br/>
	hobby : ${paramValues.hobby[0]}&nbsp;
			${paramValues.hobby[1]}&nbsp;
			${paramValues.hobby[2]}&nbsp;
			${paramValues.hobby[3]}&nbsp;
			${paramValues.hobby[4]}
</body>
</html>