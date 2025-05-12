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

import com.Railxpress.model.Payment;
import com.Railxpress.model.Review;
import com.Railxpress.model.Ticket;
import com.Railxpress.services.ReviewService;
import com.Railxpress.services.paymentService;
import com.Railxpress.services.ticketService;




@WebServlet("/UserDashboard")
public class UserDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserDashboard() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewService service= new ReviewService();
		HttpSession session= request.getSession(false);
		
		int cid=(int)session.getAttribute("cid");
		ArrayList<Review> review= service.getAllReviewUserSpecific(cid);
		request.setAttribute("review",review);
		
		
		ticketService service2=new ticketService();
		ArrayList<Ticket> ticket=service2.getOneTicket(cid);
		request.setAttribute("ticket",ticket);
		
		paymentService service3=new paymentService();
		ArrayList<Payment> payment=service3.getOnePayment(cid);
		request.setAttribute("payment", payment);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("userDashboard2.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
