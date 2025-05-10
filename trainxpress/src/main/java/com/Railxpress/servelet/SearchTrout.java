package com.Railxpress.servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Troutemodl;
import com.Railxpress.services.RouteService;




@WebServlet("/SearchTrout")
public class SearchTrout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SearchTrout() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Troutemodl trou = new Troutemodl();
		trou.setSstation(request.getParameter("tfrom"));
		trou.setEstation(request.getParameter("tto"));
		
		List<Troutemodl>allT = RouteService.Searchitm(trou.getSstation(),trou.getEstation());
		request.setAttribute("allT", allT);
		RequestDispatcher dispacher = request.getRequestDispatcher("searchItem.jsp");
		dispacher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
