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


@WebServlet("/DeletePayment")
public class DeletePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DeletePayment() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Payment pay=new Payment();
		pay.setPid(Integer.parseInt(request.getParameter("deletepayment")));
		
		paymentService service=new paymentService();
		service.deletePayment(pay);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("readPayment");
		dispatcher.forward(request, response);
	}

}
