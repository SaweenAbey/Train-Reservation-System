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


@WebServlet("/UpdatePayment")
public class UpdatePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdatePayment() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Payment pay=new Payment();
		pay.setName(request.getParameter("name"));
		pay.setCardNo(request.getParameter("cardNo"));
		pay.setExp(request.getParameter("exp"));
		pay.setCvc(Integer.parseInt(request.getParameter("cvc")));
		pay.setEmail(request.getParameter("email"));
		pay.setPid(Integer.parseInt(request.getParameter("pid")));
		pay.setCid(Integer.parseInt(request.getParameter("cid")));
		
		paymentService service=new paymentService();
		service.updatePayment(pay);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("UserDashboard");
		dispatcher.forward(request, response);
	}

}
