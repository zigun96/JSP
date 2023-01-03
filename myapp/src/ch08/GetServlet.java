package ch08;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch08/GetServlet")
public class GetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=EUC-KR");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Get Servlet 방식</h1>");
		out.println("<h2>아이디 : " + id + "</h2>");
		out.println("<h2>비밀번호 : " + pwd + "</h2>");
		out.println("</body>");
		out.println("</html>");
	}
}
