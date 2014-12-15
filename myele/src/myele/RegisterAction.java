package myele;
import java.sql.*;

public class RegisterAction {
	private String Usrname;
	private String Usrpass;
	
	public void setUsrname(String Usrname){
		this.Usrname = new String(Usrname);
	}
	public String getUsrname(){
		return this.Usrname;
	}
	
	public void setUsrpass(String Usrpass){
		this.Usrpass = new String(Usrpass);
	}
	public String getUsrpass(){
		return this.Usrpass;
	}
	
	public static Connection getConnection(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_elefee","nlnz5z0xmj","hy2m2x31415xkihm2kw3ixkzj12yw00l1mklxzh1");
		}catch(Exception e){
			System.out.println("3");
			System.out.println("Connect Fail:"+e.getMessage());
		}
		return con;
	}
	
	public String execute() throws Exception{
		Connection con = getConnection();
		try{
			String sql = "INSERT INTO password(userid,password) "+"VALUES('"+Usrname+"','"+Usrpass+"')";
			System.out.println(sql);
			Statement st = (Statement)con.createStatement();
			int count = st.executeUpdate(sql);
			System.out.println("Insert Success.Data Update:"+count);
			con.close();
			return "success";
		}catch(Exception e){
			System.out.println("Insert Failed."+e.getMessage());
			return "failed";
		}
	}
}