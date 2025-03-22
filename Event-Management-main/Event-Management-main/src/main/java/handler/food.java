package handler;

public class food extends Items{
	
	private String Kitchen_ID;
    private String Chef_ID;
    
   
	public food(int item_ID, String item_Name, int qty, double price, String supplier, String kitchen_ID,
			String chef_ID) {
		super(item_ID, item_Name, qty, price, supplier);
		Kitchen_ID = kitchen_ID;
		Chef_ID = chef_ID;
		Item_ID = item_ID;
		Item_Name = item_Name;
		Qty = qty;
		Price = price;
		Supplier = supplier;
	}
	
	 public int getItem_ID() {
			return Item_ID;
		}
	public String getItem_Name() {
		return Item_Name;
	}
	public int getQty() {
		return Qty;
	}
	public double getPrice() {
		return Price;
	}
	public String getSupplier() {
		return Supplier;
	}
	public String getKitchen_ID() {
		return Kitchen_ID;
	}
	public String getChef_ID() {
		return Chef_ID;
	}
	
   

}
