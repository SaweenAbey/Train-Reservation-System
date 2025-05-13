package com.Railxpress.servelet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Driver;
import com.Railxpress.model.Train;
import com.Railxpress.model.Troutemodl;
import com.Railxpress.services.CustomerServices;
import com.Railxpress.services.DriverService;
import com.Railxpress.services.ReviewService;
import com.Railxpress.services.RouteService;
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
		
		int driverCount=service.getDriverCount();
		request.setAttribute("driverCount",driverCount);		
		
		List <Troutemodl> allRoute = RouteService.getAllRout() ;
		request.setAttribute("allRoute", allRoute);
		
		TrainServices tserv = new TrainServices();		
		ArrayList<Train> train = tserv.getAllTrains();
		request.setAttribute("admin", train);
		
		CustomerServices service2= new CustomerServices();
		request.setAttribute("userCount", service2.userCount());
		
		TrainServices service3= new TrainServices();
		request.setAttribute("trainCount", service3.getTrainCount());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminDashboard2.jsp");
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
