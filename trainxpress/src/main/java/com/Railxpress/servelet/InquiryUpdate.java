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




@WebServlet("/InquiryUpdate")
public class InquiryUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Inquiry inq = new Inquiry();
		
		int id = Integer.parseInt(request.getParameter("inqid"));
		String status = request.getParameter("status");
		
		inq.setInqId(id);
		inq.setStatus(status);
		
		InquiryServices service = new InquiryServices();
		
		service.updateStatus(inq);
		
		RequestDispatcher dispatch = request.getRequestDispatcher("InquiryList");
		
		dispatch.forward(request, response);
		
	}

}
