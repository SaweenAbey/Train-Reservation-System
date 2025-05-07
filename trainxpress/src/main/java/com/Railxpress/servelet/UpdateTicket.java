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


@WebServlet("/UpdateTicket")
public class UpdateTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateTicket() {
        super();
   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Ticket tick= new Ticket();
		
		tick.setBid(Integer.parseInt(request.getParameter("bid")));
		tick.setLocation(request.getParameter("location"));
		tick.setDestination(request.getParameter("destination"));
		tick.setNoOfTicket(Integer.parseInt(request.getParameter("noOfTicket")));
		tick.setDate(request.getParameter("date"));
		tick.setPrice(request.getParameter("price"));
		tick.setCid(Integer.parseInt(request.getParameter("cid")));
		tick.setRouteId(Integer.parseInt(request.getParameter("routeId")));
		
		ticketService service=new ticketService();
		service.updateTicket(tick);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("readTicket");
		dispatcher.forward(request, response);
	}

}
