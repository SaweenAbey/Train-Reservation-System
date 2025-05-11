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


@WebServlet("/UpdateRoute")
public class UpdateRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateRoute() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Troutemodl trout =new Troutemodl();
		trout.setRid(Integer.parseInt(request.getParameter("rid")));
		trout.setSstation(request.getParameter("sstation"));
		trout.setEstation(request.getParameter("estation"));
		trout.setDepTime(request.getParameter("depTime"));
		trout.setArrTime(request.getParameter("arrTime"));
		trout.setTprice(Float.parseFloat(request.getParameter("tprice")));
		trout.setTid(Integer.parseInt(request.getParameter("tname")));
		
		RouteService service=new RouteService();
		service.updateRoute(trout);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("admindashboard");
		dispacher.forward(request, response);
	}

}
