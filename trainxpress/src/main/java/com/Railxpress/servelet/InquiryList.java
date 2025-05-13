package com.Railxpress.servelet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Inquiry;
import com.Railxpress.services.InquiryServices;



@WebServlet("/InquiryList")
public class InquiryList extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		InquiryServices service = new InquiryServices();
		
		ArrayList<Inquiry> inq = service.inquiryList();	
	
		request.setAttribute("inquiry", inq);

		RequestDispatcher dispatch = request.getRequestDispatcher("showInquiries.jsp");
		
		dispatch.forward(request, response);
		
	}

}
