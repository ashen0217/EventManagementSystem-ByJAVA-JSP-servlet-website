package handler;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public abstract class HandlerbeverageDButil implements common {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	 public static boolean InsertItem(int id,String name, int qty, double price, String kitchen,String cheff,String supplier) {
	    	
	    	boolean isSuccess = false;
	    	try {
	    		con = DBConnect.getConnection();
		    	stmt = con.createStatement();
	    	    String sql = "insert into beverage values ('"+id+"','"+name+"','"+qty+"','"+kitchen+"','"+cheff+"','"+supplier+"','"+price+"')";
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
	 	
	    	return isSuccess;
	    }	
	 
	 public static boolean updateItem(int id,String name, int qty, double price, String kitchen,String cheff,String supplier) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update beverage set BeverageName='"+name+"',Qty='"+qty+"',Price='"+price+"',TavernId='"+kitchen+"',BarmanId='"+cheff+"',Supplier='"+supplier+"'"
	    				+ "where BeverageId='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
	 	public static boolean deleteItem(String id) {
	    	
	    	int foodId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from beverage where BeverageId='"+foodId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	    
	 
	

}
