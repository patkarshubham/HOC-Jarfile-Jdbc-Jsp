<%@page import="java.sql.*" %>
<table border=""1>
<tr><th>
<% 
String n=request.getParameter("name");
String n=request.getParameter("email");
String m=request.getParameter("mobile");
String n=request.getParameter("subject");
try{
	//load driver class

	Class.forName("com.mysql.jdbc.Driver");

	//create connection

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:9090/hotel_manage","root","");

	//create statement

	Statement stmt=con.createStatement();
	//create sql for insert

	String sql="select * from students";
	//run sql

	//int i=stmt.executeUpdate(sql);
	ResultSet rs=stmt.executeQuery(sql);
	while(rs.next()){%>
	<tr>
	<td><%=rs.getInt("id") %></td>
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getLong("mobile") %></td>
    <td><a href="delete.jsp?id=<%=rs.getInt("id")" %>">DELETE</a></td>
     <td><a href="edit.jsp?id=<%=rs.getInt("id")" %>">EDIT</a></td>
     </tr>
	<%
	}
	}
	//System.out.println("Inserted");
	//responds.sendRedirect("display.jsp");
	
	
	catch(Exception e){
	e.printStackTrace();
	}

%>
</table>