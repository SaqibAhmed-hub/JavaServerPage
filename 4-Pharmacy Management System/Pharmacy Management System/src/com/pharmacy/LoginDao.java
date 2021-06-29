package com.pharmacy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class LoginDao {
	
	
	public static Connection con=null;
	
	public static Connection getconnect(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","");
			System.out.println("Connected to database");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
		
	}
	public static int save(Register u){
		int status=0;
		try{
			Connection con = getconnect();
			PreparedStatement ps= con.prepareStatement("insert into register(custid,custname,uname,psw,address,mobile)values(?,?,?,?,?,?)");
			ps.setInt(1, u.getCustid());
			ps.setString(2, u.getCustname());
			ps.setString(3, u.getUname());
			ps.setString(4, u.getPsw());
			ps.setString(5, u.getCustadd());
			ps.setString(6, u.getCustmobile());
			status=ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
		return status;
	}
	public static int delete(Register u){
		int status=0;
		try{
			Connection con =getconnect();
			PreparedStatement ps=con.prepareStatement("delete from Register where custid=?");
			ps.setInt(1, u.getCustid());
			status=ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public static List<Register> getAllrecords(){
		List<Register> list= new ArrayList<Register>();
		try{
			Connection con=getconnect();
			PreparedStatement ps=con.prepareStatement("select * from register");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Register u= new Register();
				u.setCustid(rs.getInt(1));
				u.setCustname(rs.getString(2));
				u.setCustadd(rs.getString(5));
				u.setCustmobile(rs.getString(6));
				list.add(u);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
