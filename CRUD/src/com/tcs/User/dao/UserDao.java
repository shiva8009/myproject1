package com.tcs.User.dao;
import com.tcs.bean.*;
import com.tcs.Userlog.*;


import java.sql.*;
import java.util.ArrayList;
public class UserDao {
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			  Class.forName("oracle.jdbc.driver.OracleDriver");  
		        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system" );  
		    }catch(Exception e){System.out.println(e);}  
		    return con;  
		}
	
	
	public static int save(Userbean u)
	{
		int status=0;
		try
		{
   Connection con =getConnection();
   PreparedStatement ps=con.prepareStatement(  
		   "insert into reginfo(id,name,password,email,sex,country) values(?,?,?,?,?,?)");  
                   ps.setInt(1,u.getId());
		           ps.setString(2,u.getName());  
		           ps.setString(3,u.getPassword());  
		           ps.setString(4,u.getEmail());  
		           ps.setString(5,u.getSex());  
		           ps.setString(6,u.getCountry());  
		           status=ps.executeUpdate();  
		
		       }
		catch(Exception e)
		       {
			System.out.println(e);
			}  
		       return status;  
   
}

	public static int update(Userbean u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update reginfo set name=?,password=?,email=?,sex=?,country=? where id=?");  
	        System.out.println("haiiiiiiiiiii");
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getPassword());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getSex());  
	        ps.setString(5,u.getCountry());                                                     
	        ps.setInt(6,u.getId());  
	        System.out.println("haiiiiiiiiiii2");
	        status=ps.executeUpdate();  
	        System.out.println("haiiiiiiiiiii3"+status);
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  	
		
	public static int delete(Userbean u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from reginfo where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	
	public static ArrayList<Userbean> getAllRecords(){  
	    ArrayList<Userbean> list=new ArrayList<Userbean>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from reginfo");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Userbean u=new Userbean();
	            int id1=Integer.parseInt(rs.getString("id"));
	            u.setId(id1);  
	            u.setName(rs.getString("name"));  
	            u.setPassword(rs.getString("password"));  
	            u.setEmail(rs.getString("email"));  
	            u.setSex(rs.getString("sex"));  
	            u.setCountry(rs.getString("country"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	public static Userbean getRecordById(int id){  
	    Userbean u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from reginfo where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Userbean();   
	            u.setName(rs.getString("name"));  
	            u.setPassword(rs.getString("password"));  
	            u.setEmail(rs.getString("email"));  
	            u.setSex(rs.getString("sex"));  
	            u.setCountry(rs.getString("country")); 
	            u.setId(id);
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	
}
	
	
	
	
	
	
	
	











