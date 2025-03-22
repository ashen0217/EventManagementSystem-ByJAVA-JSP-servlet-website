package handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginServlet() {
        super();
      
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId1 = request.getParameter("uid");
		int userId=Integer.parseInt(userId1);
		String password = request.getParameter("pass");	
		boolean isTrue;
		
	commonfactory a =new commonfactory();
	common c2= a.getcommon("login",userId, password,password,userId,password); 
		isTrue = c2.login();

		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Order.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Login.jsp?unsuccess=1");
			dis2.forward(request, response);
		}
	}
}


