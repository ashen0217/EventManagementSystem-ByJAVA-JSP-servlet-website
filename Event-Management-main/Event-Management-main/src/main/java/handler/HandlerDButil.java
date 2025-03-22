package handler;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class HandlerDButil implements common  {
	
	boolean isSuccess = false;
	boolean isSuccess2 = false;
	public HandlerDButil(int id,String name,String Iname, int qty,String supplier)
	{
	
    	try {
    		Connection con = DBConnect.getConnection();
	    	Statement stmt = con.createStatement();
	    	String sql = "insert into sugession values (0,'"+id+"','"+name+"','"+Iname+"','"+qty+"','"+supplier+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs>0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    }	
	public HandlerDButil(int id,String name)
	{
		int idD = 0;
		String nameD = null;
    	try {
    		Connection con = DBConnect.getConnection();
	    	Statement stmt = con.createStatement();
	    	String sql = "select * from user where idUser='"+id+"' and Password='"+name+"'";
	    	ResultSet rs = stmt.executeQuery(sql);
    		if(rs.next()) {
				
    			 idD=rs.getInt(1);
    			 nameD=rs.getString(3);
    
    		   }
    		if(idD==id && nameD.equals(name))
    		{
    			isSuccess2 = true;
    		}
    		
    		 else {
    			isSuccess2 = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    }	
	public boolean InsertItem() {
    	
    	return isSuccess;
    }
	@Override
	public boolean updateItem() {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean deleteItem() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean login() {
		// TODO Auto-generated method stub
		return isSuccess2;
	}	
}
