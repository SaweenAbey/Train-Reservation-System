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


@WebServlet("/RegRoute")
public class RegRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RegRoute() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Troutemodl route = new Troutemodl();
		route.setSstation(request.getParameter("sstation"));
		route.setEstation(request.getParameter("estation"));
		route.setDepTime(request.getParameter("depTime"));
		route.setArrTime(request.getParameter("arrTime"));
		route.setTprice(Float.parseFloat(request.getParameter("tprice")));
		route.setTid(Integer.parseInt(request.getParameter("tname")));
		
		RouteService service = new RouteService();
		service.regRoute(route);
		RequestDispatcher diss = request.getRequestDispatcher("Table.jsp");
		
		diss.forward(request, response);
	}

}
