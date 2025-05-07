package com.Railxpress.servelet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Driver;
import com.Railxpress.services.DriverService;


@WebServlet("/Driverinsert")
public class Driverinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Driverinsert() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Driver driver= new Driver();
		
		driver.setFname(request.getParameter("fname"));
		driver.setLname(request.getParameter("lname"));
		driver.setAddress(request.getParameter("address"));
		driver.setLicenseNum(request.getParameter("licenseNum"));
		driver.setTelNo(request.getParameter("telephone"));
		driver.setAge(Integer.parseInt(request.getParameter("age")));
		
		DriverService service = new DriverService();
		service.insertDriver(driver);
		
		doGet(request, response);
	}

}
