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

@WebServlet("/readPayment")
public class readPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public readPayment() {
        super();
        
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		paymentService service=new paymentService();
		ArrayList<Payment> payment=service.getAllPayment();
		request.setAttribute("payment", payment);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("PaymentTable.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		paymentService service=new paymentService();
		ArrayList<Payment> payment=service.getAllPayment();
		request.setAttribute("payment", payment);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("PaymentTable.jsp");
		dispatcher.forward(request, response);
	}

}
