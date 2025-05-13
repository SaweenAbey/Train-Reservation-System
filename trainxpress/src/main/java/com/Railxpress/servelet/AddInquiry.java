package com.Railxpress.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Inquiry;
import com.Railxpress.services.InquiryServices;



@WebServlet("/AddInquiry")
public class AddInquiry extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String email = request.getParameter("email");
			String message = request.getParameter("message");
			
			Inquiry inq = new Inquiry();
			
			inq.setEmail(email);
			inq.setMessage(message);
			
			System.out.println("Message = " + inq.getMessage());
			
			InquiryServices service = new InquiryServices();
			
			service.addInquiry(inq);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("ContactUs.jsp");
			
			dispatch.forward(request, response);
		
	}

}
