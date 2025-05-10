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
import com.Railxpress.model.Train;
import com.Railxpress.services.DriverService;
import com.Railxpress.services.TrainServices;






@WebServlet("/admindashboard")
public class admindashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public admindashboard() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DriverService service= new DriverService();
		ArrayList<Driver> driver=service.readAll();
		
		request.setAttribute("driver", driver);
		//add here
		
		TrainServices tserv = new TrainServices();
		
		ArrayList<Train> train = tserv.getAllTrains();
		
		request.setAttribute("admin", train);
		
		
		
		
		
		
		//end here
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminDashboard2.jsp");
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
