import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class Helloservlet implements HttpServlet{


	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.setContentType("text/html");
		PrintWriter out =res.getWriter();
		ServletConfig cf=getServletConfig();
		ServletConText cfx=getServletContext();
		String s=cf.getInitParameter("user");
		String driver=ctx.getInitParameter("Driver");
		out.println("user="+s"<br>");
		out.println("Driver="+driver+"<br>");
	}
	
}
