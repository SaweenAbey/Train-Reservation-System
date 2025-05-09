package tServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tModel.Train;
import tServices.TrainServices;

@WebServlet("/Tupdate")
public class Tupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public Tupdate() {
        super();
    
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Train trn = new Train();
		
		int id = Integer.parseInt(request.getParameter("tid"));
		String name = request.getParameter("tname");
		String enginenum = request.getParameter("tenginenum");
		String type = request.getParameter("ttype");
		int seatcount = Integer.parseInt(request.getParameter("tseatcount"));
		int noofwagons = Integer.parseInt(request.getParameter("tnoofwagons"));
		
		trn.setTid(id);
		trn.setTname(name);
		trn.setTenginenum(enginenum);
		trn.setTtype(type);
		trn.setSeatcount(seatcount);
		trn.setNoofwagons(noofwagons);
		
		TrainServices service = new TrainServices();
		
		service.updateTrain(trn);
		
		RequestDispatcher dispatch =  request.getRequestDispatcher("TrainList");
		
		dispatch.forward(request,response);
		
	}

}
