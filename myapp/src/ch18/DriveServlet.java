package ch18;

import java.io.File;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/ch18/driveServlet")
public class DriveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String uploadPath;
	
	@Override
	public void init() throws ServletException {
		super.init();
		// 업로드 폴더 지정
		uploadPath = getServletContext().getRealPath("WEB-INF/upload");
		/*지정된 업로드 패스 콘솔 출력*/
		System.out.println(uploadPath);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*파일로 업로드 패스 생성 및 배열 변환 후 문자열로 저장*/
		String[] fileList = new File(uploadPath).list();
		/*키 : 값 추가*/
		request.setAttribute("fileList", fileList);
		
		/*drive.jsp 가져와서 연결*/
		RequestDispatcher dispatcher = request.getRequestDispatcher("./drive.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();
		filePart.write(new File(uploadPath, fileName).getPath());
		response.getWriter().print(fileName);
	}

}
