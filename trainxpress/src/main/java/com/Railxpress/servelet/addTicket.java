
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


@WebServlet("/addTicket")
public class addTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addTicket() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Ticket ticket= new Ticket();
		ticket.setLocation(request.getParameter("location"));
		ticket.setDestination(request.getParameter("destination"));
		ticket.setNoOfTicket(Integer.parseInt(request.getParameter("noOfTicket")));
		ticket.setRouteId(Integer.parseInt(request.getParameter("routeId")));
		ticket.setDate(request.getParameter("date"));
	
		ticketService service=new ticketService();
		service.ticketMethod(ticket);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("Payment.jsp");
		dispatcher.forward(request, response);
	}

}
