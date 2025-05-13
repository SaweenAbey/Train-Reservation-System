package com.Railxpress.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.*;
import com.Railxpress.services.*;


@WebServlet("/DeleteTicket")
public class DeleteTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public DeleteTicket() {
        super();
  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Ticket tick=new Ticket();
		tick.setBid(Integer.parseInt(request.getParameter("deleteticket")));
		
		ticketService service = new ticketService();
		service.deleteTicket(tick);
		
		response.sendRedirect("UserDashboard");
//		RequestDispatcher dispatcher= request.getRequestDispatcher("UserDashboard");
//		dispatcher.forward(request, response);
	}

}
