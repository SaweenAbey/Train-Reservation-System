package com.Railxpress.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Driver;
import com.Railxpress.services.DriverService;


@WebServlet("/DriverUpdate")
public class DriverUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DriverUpdate() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Driver driver= new Driver();
		
		driver.setDriverId(Integer.parseInt(request.getParameter("driverId")));
		driver.setFname(request.getParameter("fname"));
		driver.setLname(request.getParameter(("lname")));
		driver.setAddress(request.getParameter("address"));
		driver.setTelNo(request.getParameter("telephone"));
		driver.setLicenseNum(request.getParameter("licenseNum"));
		driver.setAge(Integer.parseInt(request.getParameter("age")));
		System.out.println(driver.getLicenseNum());
		DriverService service =new DriverService();
		service.update(driver);
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("admindashboard");
//		dispatcher.forward(request, response);
		response.sendRedirect("admindashboard");
	}

}
