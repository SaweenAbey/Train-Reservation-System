package com.Railxpress.servelet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.*;
import com.Railxpress.services.*;


@WebServlet("/readTicket")
public class readTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public readTicket() {
        super();
  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ticketService service=new ticketService();
		ArrayList<Ticket> ticket=service.getAllTicket();
		request.setAttribute("ticket",ticket);
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("TicketTable.jsp");
		dispatcher.forward(request, response);
	}

}
