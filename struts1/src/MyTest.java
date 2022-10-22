import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class MyTest{
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public ArrayList<MyTest> getList() {
		return list;
	}
	public void setList(ArrayList<MyTest> list) {
		this.list = list;
	}
	ArrayList<MyTest>list=new ArrayList<MyTest>();
	private String name=null;
	private String address=null;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String insert(){
		String status=null;
		try {
	Connection con=MyConnection.getConnection();
	String sql="insert into employee(name,address)values(?,?)";
	PreparedStatement ptmt=con.prepareStatement(sql);
	ptmt.setString(1, name);
	ptmt.setString(2, address);
	int i=ptmt.executeUpdate();
	if(i>0) {
		status=display();
	}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
public String display(){
		
		String status=null;
		
		try {
	Connection con=MyConnection.getConnection();
	String sql="select * from employee";
	PreparedStatement ptmt=con.prepareStatement(sql);
	ResultSet rs=ptmt.executeQuery();
	while(rs.next()) {
		MyTest ob=new MyTest();
		ob.setId(rs.getInt(1));
		ob.setName(rs.getString(2));
		ob.setAddress(rs.getString(3));
		list.add(ob);
		status="display";
	}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
		
	}
public String edit(){
	
	String status=null;
	
	try {
Connection con=MyConnection.getConnection();
String sql="select * from employee where id=?";
PreparedStatement ptmt=con.prepareStatement(sql);
ptmt.setInt(1, id);
ResultSet rs=ptmt.executeQuery();
while(rs.next()) {
	MyTest ob=new MyTest();
	ob.setId(rs.getInt(1));
	ob.setName(rs.getString(2));
	ob.setAddress(rs.getString(3));
	list.add(ob);
	status="edit";
}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return status;
	
}
public String delete(){
	String status=null;
	try {
Connection con=MyConnection.getConnection();
String sql="delete from employee where id=?";
PreparedStatement ptmt=con.prepareStatement(sql);
ptmt.setInt(1, id);

int i=ptmt.executeUpdate();
if(i>0) {
	status=display();
}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return status;
}
		
	}
