package com.Railxpress.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tModel.Train;
import tServices.TrainServices;


@WebServlet("/AddTrain")
public class AddTrain extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddTrain() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Train trn = new Train();
		
		String name = request.getParameter("tname");
		String enginenum = request.getParameter("tenginenum");
		String type = request.getParameter("ttype");
		int scount = Integer.parseInt(request.getParameter("tseatcount"));
		int nowagons = Integer.parseInt(request.getParameter("noofwagons"));
		
		trn.setTname(name);
		trn.setTenginenum(enginenum);
		trn.setTtype(type);
		trn.setSeatcount(scount);
		trn.setNoofwagons(nowagons);
		
		TrainServices service = new TrainServices();
		
		service.addTrain(trn);
		
		RequestDispatcher rd = request.getRequestDispatcher("TrainList");
		
		rd.forward(request, response);
		
	}

}
