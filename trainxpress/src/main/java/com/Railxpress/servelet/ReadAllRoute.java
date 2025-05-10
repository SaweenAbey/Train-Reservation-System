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



@WebServlet("/ReadAllRoute")
public class ReadAllRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ReadAllRoute() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List <Troutemodl> allRoute = RouteService.getAllRout() ;
		request.setAttribute("allRoute", allRoute);
		RequestDispatcher dispacher = request.getRequestDispatcher("TrainRouteDetail.jsp");
		dispacher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
