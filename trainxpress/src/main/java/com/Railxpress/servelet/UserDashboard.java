package com.Railxpress.servelet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Review;
import com.Railxpress.services.ReviewService;




@WebServlet("/UserDashboard")
public class UserDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserDashboard() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewService service= new ReviewService();
		ArrayList<Review> review= service.getAllReviewUserSpecific();
		request.setAttribute("review",review);
		RequestDispatcher dispatcher = request.getRequestDispatcher("userDashboard2.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
