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
		/*JSP ������ ��� ����*/
		JspContext context = getJspContext();
		/*����ϴ� ����*/
		JspWriter out = context.getOut();
		JspFragment body = getJspBody();
		out.println("ȯ���մϴ�.<p/><b>");
		/*�±� ���̿� �ִ� ���� �ҷ�����*/
		StringWriter strw = new StringWriter();
		body.invoke(strw);
		/*�ҷ����� ���ڿ��� ������ ����*/
		String str = strw.toString();
		for(int i=0; i<5; i++) {
			out.println(i + 1 + "." + str + "<br/>");
		}
		out.print("</b><hr/>");
	}
}
