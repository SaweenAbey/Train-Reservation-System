package com.Railxpress.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Railxpress.model.Train;
import com.Railxpress.services.TrainServices;



@WebServlet("/Tdelete")
public class Tdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Tdelete() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Train trn = new Train();
		
		int tid = Integer.parseInt(request.getParameter("tdelete"));
		
		trn.setTid(tid);
		
		TrainServices serv = new TrainServices();
		
		serv.deleteTrain(trn);
		
		response.sendRedirect("admindashboard");
		
	}

}
