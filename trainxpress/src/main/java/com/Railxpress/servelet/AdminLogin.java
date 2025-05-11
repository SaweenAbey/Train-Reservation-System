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

import com.Railxpress.model.Admin;
import com.Railxpress.services.AdminServices;



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
		
		ArrayList status = service.validate(admin);
		
		if((int)status.get(0)!=0) {
			HttpSession session = request.getSession();
			
			session.setAttribute("id", status.get(0));
			session.setAttribute("name", status.get(1));
			session.setAttribute("uname",username);
			
			
			response.sendRedirect("index");
//			RequestDispatcher dispatch = request.getRequestDispatcher("home.jsp");
//			dispatch.forward(request, response);
		} else {
			RequestDispatcher dispatch =  request.getRequestDispatcher("adminLogin.jsp");
			dispatch.forward(request,  response);
		}
		
	}

}
