package tServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tModel.Customer;
import tServices.CustomerServices;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer cus = new Customer();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		cus.setName(name);
		cus.setEmail(email);
		cus.setCustomerUsername(username);
		cus.setPassword(password);
		
		CustomerServices service = new CustomerServices();
		service.register(cus);
		
		RequestDispatcher dispatch = request.getRequestDispatcher("home.jsp");
		dispatch.forward(request, response);
		
	}

}
