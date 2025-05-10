package com.Railxpress.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Troutemodl;
import com.Railxpress.services.RouteService;


@WebServlet("/DeleteRoute")
public class DeleteRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteRoute() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Troutemodl trout = new Troutemodl();
		trout.setRid(Integer.parseInt(request.getParameter("rid")));
		
		RouteService service = new RouteService();
		service.deleteRoute(trout);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("ReadAllRoute");
		
		
		dispacher.forward(request, response);
		doGet(request, response);
	}

}
