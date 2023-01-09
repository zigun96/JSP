package ch18;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch18/downloadServlet/*")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String[] paths = request.getPathInfo().split("/");
		String fileName = paths[paths.length - 1];
		String uploadPath = getServletContext().getRealPath("WEB-INF/upload");
		File file = new File(uploadPath, fileName);
		try (
				FileInputStream in = new FileInputStream(file);
				OutputStream out = response.getOutputStream();
		) {
			write(in, out);
		}
	}

	private void write(InputStream in, OutputStream out) throws IOException {
		byte[] buffer = new byte[512];
		int length;
		while ((length = in.read(buffer)) >= 0) {
			out.write(buffer, 0, length);
		}
	}
}
