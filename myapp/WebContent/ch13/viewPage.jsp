<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>
<%
	String saveFolder = "C:/upload";
	String encType = "utf-8";
	int maxSize = 5 * 1024 * 1024;
	try {
		/* MultipartRequest 객체 생성 */
		MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encType, new DefaultFileRenamePolicy());
		/* 가져온 모든 매개변수 이름을 params에 저장 */
		Enumeration params = multi.getParameterNames();
		
		/* 저장된 요소가 있을 시 수행 */
		while (params.hasMoreElements()) {
			/* 저장된 요소의 이름 문자열로 저장 */
			String name = (String) params.nextElement();
			/* 매개변수의 값을 불러와 문자열로 저장 */
			String value = multi.getParameter(name);
			out.println(name + " = " + value + "<br/>");
		}
		/* 아직 파일 이름이 있는지 확인 */
		Enumeration files = multi.getFileNames();
		
		while (files.hasMoreElements()) {
			String name = (String) files.nextElement();
			
			String filename = multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			
			File f = multi.getFile(name);
			
			out.println("파라미터 이름 : " + name + "<br/>");
			out.println("실제 파일 이름 : " + original + "<br/>");
			out.println("저장된 파일 이름 : " + filename + "<br/>");
			out.println("파일 타입 : " + type + "<br/>");
			if ( f != null ) {
				out.println("크기 : " + f.length() + "바이트");
				out.println("<br>");
			}
		}
	} catch(IOException ioe) {
		System.out.println(ioe);
	} catch(Exception ex) {
		System.out.println(ex);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>