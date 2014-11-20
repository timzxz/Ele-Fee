package myele;
import java.sql.*;
import java.util.ArrayList;

public class LoginAction {
	private String userid;
	private String password;
	private Boolean Rem;
	
	private double pay;
	private double exceed;
	private int cross;
	private ArrayList<String> history = new ArrayList<String>();
	
	public void setUserid(String userid){
		this.userid = new String(userid);
	}
	public String getUserid(){
		return this.userid;
	}
	
	public void setPassword(String password){
		this.password = new String(password);
	}
	public String getPassword(){
		return this.password;
	}
	public void setRem(Boolean Rem){
		this.Rem = Rem;
	}
	public Boolean getRem(){
		return this.Rem;
	}
	
	public double getPay(){
		return this.pay;
	}
	public double getExceed(){
		return this.exceed;
	}
	public int getCross(){
		return this.cross;
	}
	public ArrayList<String> getHistory(){
		return this.history;
	}
	
	public static Connection getConnection(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eledb","root","agao0930yjc");
		}catch(Exception e){
			System.out.println("Connect Fail:"+e.getMessage());
		}
		return con;
	}
	
	public String execute() throws Exception{
		int total = 0,cro = 0;
		Boolean flag = false;
		Connection con = getConnection();
		try{
			String sql = "select * from password";
			System.out.println(sql);
			
			Statement st = (Statement)con.createStatement();
			System.out.println("5");
			ResultSet res = st.executeQuery(sql);
			while(res.next()){
				if(userid.equals(res.getString("userid")) && password.equals(res.getString("password"))){
					flag = true;
					break;
				}
			}
			if(!flag) return "failed";
			sql = "select * from eleuse";
			st = (Statement)con.createStatement();
			res = st.executeQuery(sql);
			while(res.next()){
				total += Math.abs(res.getInt("startlevel")-res.getInt("endlevel"));
				if(userid.equals(res.getString("userid"))){
					String temp = "elenum="+res.getInt("elenum")+" usetime="+new String(res.getString("usetime"))+" startlevel="+res.getInt("startlevel")+" endlevel="+res.getInt("endlevel");
					System.out.println(temp);
					history.add(temp);
					cro += Math.abs(res.getInt("startlevel")-res.getInt("endlevel"));
				}
			}
			cross = cro;
			exceed = cro*1.0/total;
			pay = 1000*exceed;
			System.out.println("cross="+cross+" exceed="+exceed+" pay="+pay);
			con.close();
			return "success";
		}catch(Exception e){
			System.out.println("Errors."+e.getMessage());
			return "failed";
		}
	}
}