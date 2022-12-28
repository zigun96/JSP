<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Drive</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>
<body>
	<form method="post" enctype="multipart/form-data">
		<input type="file" name="file" />
		<button type="submit">upload</button>
	</form>
	<ul>
		<c:forEach var="item" items="${fileList}">
			<li><a href="../upload/${item}" target="_blank">${item}</a>
				<form method="post" enctype="application/x-www-form-urlencoded">
					<input type="hidden" name="_method" value="DELETE" />
					<input type="hidden" name="fname" value="${item}" />
					<button class="fa-solid fa-trash-can"></button>
				</form>
			</li>
		</c:forEach>
	</ul>
</body>
</html>