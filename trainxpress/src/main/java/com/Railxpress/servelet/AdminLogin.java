package tServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tModel.Admin;
import tServices.AdminServices;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("adminUserName");
		String password = request.getParameter("password");
		
		Admin admin = new Admin();
		
		admin.setAdminUsername(username);
		admin.setAdminPassword(password);
		
		AdminServices service = new AdminServices();
		
		boolean status = service.validate(admin);
		
		if(status) {
			RequestDispatcher dispatch = request.getRequestDispatcher("home.jsp");
			dispatch.forward(request, response);
		} else {
			RequestDispatcher dispatch =  request.getRequestDispatcher("adminLogin.jsp");
			dispatch.forward(request,  response);
		}
		
	}

}
