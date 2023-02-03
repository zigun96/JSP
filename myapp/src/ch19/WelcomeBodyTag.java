package ch19;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class WelcomeBodyTag extends SimpleTagSupport{
	@Override
	public void doTag() throws JspException, IOException {
		/*JSP 내용을 담는 변수*/
		JspContext context = getJspContext();
		/*출력하는 변수*/
		JspWriter out = context.getOut();
		JspFragment body = getJspBody();
		out.println("환영합니다.<p/><b>");
		/*태그 사이에 있는 값을 불러들임*/
		StringWriter strw = new StringWriter();
		body.invoke(strw);
		/*불러들인 문자열을 변수에 저장*/
		String str = strw.toString();
		for(int i=0; i<5; i++) {
			out.println(i + 1 + "." + str + "<br/>");
		}
		out.print("</b><hr/>");
	}
}
