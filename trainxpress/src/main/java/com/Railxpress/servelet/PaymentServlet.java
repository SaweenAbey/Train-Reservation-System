package com.Railxpress.servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Troutemodl;
import com.Railxpress.services.RouteService;
import com.Railxpress.services.ticketService;


@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PaymentServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ticketService service=new ticketService();
		
		int bid = (int) request.getAttribute("bid");
		
		System.out.println("PaymentServlet bid:"+bid);
		String price=service.getTotalPrice(bid);
		System.out.println("paymentServlet Price:"+price);
		request.setAttribute("price", price);
		RequestDispatcher dispacher = request.getRequestDispatcher("Payment.jsp");
		
		dispacher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
