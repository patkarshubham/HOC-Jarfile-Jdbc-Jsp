import java.sql.*;
class MyJdbc{
public static void main(String[] args){
try{
//load driver class

Class.forName("com.mysql.jdbc.Driver");

//create connection

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","");

//create statement

Statement stmt=con.createStatement();
//create sql for insert

String sql="insert into students(name,mobile)value('amit',5555)";
//run sql

int i=stmt.executeUpdate(sql);
if(i>0)
{
System.out.println("Inserted");
}
}
catch(Exception e){
e.printStackTrace();
}
}
}