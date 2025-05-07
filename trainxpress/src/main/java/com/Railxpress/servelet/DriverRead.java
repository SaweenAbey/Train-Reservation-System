package com.Railxpress.servelet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Driver;
import com.Railxpress.services.DriverService;


@WebServlet("/DriverRead")
public class DriverRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DriverRead() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DriverService service= new DriverService();
		ArrayList<Driver> driver=service.readAll();
		
		request.setAttribute("driver", driver);
		RequestDispatcher dispatcher = request.getRequestDispatcher("driverRead.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DriverService service= new DriverService();
		ArrayList<Driver> driver=service.readAll();
		
		request.setAttribute("driver", driver);
		RequestDispatcher dispatcher = request.getRequestDispatcher("driverRead.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
