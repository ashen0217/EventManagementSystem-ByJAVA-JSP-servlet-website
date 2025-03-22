package handler;

public class beverage extends Items {
	
	private String Tavern_ID;
    private String Barman_ID;
    
	public beverage(int item_ID, String item_Name, int qty, double price, String supplier, String tavern_ID,
			String barman_ID) {
		super(item_ID, item_Name, qty, price, supplier);
		Tavern_ID = tavern_ID;
		Barman_ID = barman_ID;
		Item_ID = item_ID;
		Item_Name = item_Name;
		Qty = qty;
		Price = price;
		Supplier = supplier;
	}

	public String getTavern_ID() {
		return Tavern_ID;
	}

	public String getBarman_ID() {
		return Barman_ID;
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

    
}
