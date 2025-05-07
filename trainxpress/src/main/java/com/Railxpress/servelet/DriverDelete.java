package com.Railxpress.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.services.DriverService;


@WebServlet("/DriverDelete")
public class DriverDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DriverDelete() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id= Integer.parseInt(request.getParameter("driverId"));
		
		DriverService service= new DriverService();
		
		service.delete(id);
		response.sendRedirect("DriverRead");
	}

}
