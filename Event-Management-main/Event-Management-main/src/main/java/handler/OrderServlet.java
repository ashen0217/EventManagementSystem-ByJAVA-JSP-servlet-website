package handler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public OrderServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String idS = request.getParameter("txtId");
		int id=Integer.parseInt(idS);
		String uname = request.getParameter("txtuName");
		String Iname = request.getParameter("txtName");
		String qtyS = request.getParameter("txtqty");
		int    qty=Integer.parseInt(qtyS);
		String supplier = request.getParameter("txtSupplier");
		
		
		boolean isTrue;
		 commonfactory c =new commonfactory();
		 common c1= c.getcommon("order",id,uname,Iname,qty,supplier); 
		isTrue = c1.InsertItem();
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Order.jsp?success=1");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
