package com.Railxpress.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Review;
import com.Railxpress.services.ReviewService;


@WebServlet("/ReviewUpdate")
public class ReviewUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ReviewUpdate() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Review review= new Review();
		
		review.setReviewId(Integer.parseInt(request.getParameter("reviewId")));
		review.setMessage(request.getParameter("message"));
		review.setRating(Integer.parseInt(request.getParameter("rating")));
		
		ReviewService service = new ReviewService();
		service.updateReview(review);
		response.sendRedirect("UserDashboard");
	}

}
