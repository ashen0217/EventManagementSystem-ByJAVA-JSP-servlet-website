package handler;


public class commonfactory {
	
	 public common getcommon(String itemtype,int id,String name,String Iname, int qty,String supplier){
	      
	         if("order".equalsIgnoreCase(itemtype))
	         {
	          return new HandlerDButil(id, name,Iname,  qty, supplier);
	         }
	         else if("login".equalsIgnoreCase(itemtype))
	         {
	          return new HandlerDButil(id, name);
	         }
	         
	      return null;
	   }
	}
	
	


