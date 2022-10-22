package cetpa;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorld extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       String fname=request.getParameter("fname");
       String lname=request.getParameter("lname");
       String email=request.getParameter("email");
       String password=request.getParameter("pwd");
       String gender=request.getParameter("g");
       String msg=request.getParameter("msg");
       String[] lang=request.getParameterValues("lang");
       String[] city=request.getParameterValues("city");
       for(String s:lang) {
    	out.println("Language="+s+"<br>");  
       }
       for(String c:city) {
       	out.println("City="+c+"<br>");  
          }
     out.println("FirstName="+fname+"<br>"); 
     out.println("LastName="+lname+"<br>"); 
     out.println("Gender="+gender+"<br>");
     out.println("Email="+email+"<br>");
     out.println("Password="+password+"<br>");
     out.println("Message="+msg+"<br>");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    	    throws IOException, ServletException{
    	  doGet(request,response);
    }
}