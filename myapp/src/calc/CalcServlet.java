package calc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/calc/CalcServlet")
public class CalcServlet extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      int num1, num2;
      int result = 0;
      String oper;
      
      request.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      
       try { 
          num1 = Integer.parseInt(request.getParameter("num1"));
          num2 = Integer.parseInt(request.getParameter("num2"));
          oper = request.getParameter("oper");
          
       
          try {
             switch(oper) {
             case "+":
            	 result = num1 + num2;
            	 break;
             case "-":
            	 result = num1 - num2;
            	 break;
             case "*":
            	 result = num1 * num2;
            	 break;
             case "/":
            	 result = num1 / num2;
            	 break;
             }
             out.println("계산결과: " + num1 + oper + num2 + "=" + result);
          } catch (ArithmeticException e) {
        	  out.println("<h2>나눗셈 에러!</h2>");
        	  out.println("'0'으로 나눌 수 없습니다!");
        	  return;
          }
          
       } catch (NumberFormatException e) {
    	   out.println("<h2>값 입력 에러!</h2>");
    	   out.println("숫자는 '정수'만 입력하세요!");
    	   return;
       }
    }
}
