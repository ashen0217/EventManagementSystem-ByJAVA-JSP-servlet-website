package handler;
import java.util.List;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Insertfood")
public class Insertfood extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Insertfood() {
        super();
       
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String idS = request.getParameter("txtId");
		int id=Integer.parseInt(idS);
		String name = request.getParameter("txtName");
		String qtyS = request.getParameter("txtQty");
		int    qty=Integer.parseInt(qtyS);
		String priceS = request.getParameter("txtPrice");
		double price =Double.parseDouble(priceS);
		String kitchen = request.getParameter("txtKitchen");
		String cheff = request.getParameter("txtcheff");
		String supplier = request.getParameter("txtSupplier");
		
		
		boolean isTrue;
		
		isTrue = HandlerfoodDButil.InsertItem(id, name, qty, price, kitchen,cheff,supplier);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Insertfood.jsp?success=1");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	
	}

}
