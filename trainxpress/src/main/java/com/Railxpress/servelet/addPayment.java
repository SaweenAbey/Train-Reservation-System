package com.Railxpress.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Railxpress.model.*;
import com.Railxpress.services.*;

@WebServlet("/addPayment")
public class addPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public addPayment() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		
		
		Payment payment=new Payment();
		payment.setCid((int)session.getAttribute("cid"));
		payment.setName(request.getParameter("name"));
		payment.setCardNo(request.getParameter("cardno"));
		payment.setExp(request.getParameter("exp"));
		payment.setCvc(Integer.parseInt(request.getParameter("cvc")));
		payment.setEmail(request.getParameter("email"));
		
		paymentService service=new paymentService();
		service.addPayment(payment);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("PaymentTable.jsp");
		dispatcher.forward(request, response);
	}

}
