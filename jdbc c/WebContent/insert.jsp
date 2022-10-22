<%@page import="java.sql.*" %>

<% 
String n=request.getParameter("name");
String e=request.getParameter("email");
String m=request.getParameter("mobile");
String s=request.getParameter("subject");
try{
	//load driver class

	Class.forName("com.mysql.jdbc.Driver");

	//create connection

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:9090/hotel_manage","root","");

	//create statement

	Statement stmt=con.createStatement();
	//create sql for insert

	String sql="insert into students(name,email,mobile,subject)value('"+n+"',"+e+","+m+",'"+s+"')";
	//run sql

	int i=stmt.executeUpdate(sql);
	if(i>0)
	{
	System.out.println("Inserted");
	responds.sendRedirect("display.jsp");
	}
	}
	catch(Exception e){
	e.printStackTrace();
	}

%>