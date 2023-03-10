package ch18;

import java.io.IOException;
import java.util.stream.IntStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ch18/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*'range' 범위 1 이상 11 미만*/
		request.setAttribute("range", IntStream.range(1, 11).toArray());
		/*'range' 범위 1 이상 10 이하*/
		request.setAttribute("sum", IntStream.rangeClosed(1, 10).sum());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/template.jsp");
		dispatcher.forward(request, response);
	}
}
