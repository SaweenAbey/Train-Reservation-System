package com.Railxpress.servelet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Railxpress.model.Customer;
import com.Railxpress.services.CustomerServices;

//import org.apache.catalina.User;



@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
      
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Customer cus = new Customer();
		
		cus.setCustomerUsername(username);
		cus.setPassword(password);
		
		CustomerServices service = new CustomerServices();
		
		ArrayList status = service.validate(cus);

		if((int)status.get(0)!=0) {
			HttpSession session= request.getSession();
			session.setAttribute("cid", status.get(0));
			session.setAttribute("name", status.get(1));
			session.setAttribute("email", status.get(2));
			session.setAttribute("uname", username);
			System.out.println("session id:"+session.getAttribute("cid"));
			response.sendRedirect("index");
//			RequestDispatcher dispatch = request.getRequestDispatcher("home.jsp");
//			dispatch.forward(request, response);
		} else {
			RequestDispatcher dispatch = request.getRequestDispatcher("login.jsp");
			dispatch.forward(request, response);
		}
		
	}

}
