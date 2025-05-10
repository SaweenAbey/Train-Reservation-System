package com.Railxpress.servelet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Railxpress.model.Review;
import com.Railxpress.services.ReviewService;




@WebServlet("/insertReview")
public class insertReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public insertReview() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReviewService service= new ReviewService();
		ArrayList<Review> review= service.showHomeReview();
		request.setAttribute("review", review);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("insertReview.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Review review= new Review();
		int cid=0;
		HttpSession session =request.getSession(false);
		if(session != null && session.getAttribute("cid") != null) {
			 cid= (int)session.getAttribute("cid");
		}
		else {
			response.sendRedirect("login.jsp");
			return;
		}
		
		
		
		
		review.setCusId(cid);
		review.setName(request.getParameter("name"));
		review.setMessage(request.getParameter("message"));
		review.setRating(Integer.parseInt(request.getParameter("rating")));
		
		ReviewService service =new ReviewService();
		service.insertReview(review);
		
		response.sendRedirect("insertReview");
		
	}

}
