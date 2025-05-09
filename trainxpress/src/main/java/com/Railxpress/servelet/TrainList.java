package tServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tModel.Train;
import tServices.TrainServices;

@WebServlet("/TrainList")
public class TrainList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TrainList() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		TrainServices tserv = new TrainServices();
		
		ArrayList<Train> train = tserv.getAllTrains();
		
		request.setAttribute("admin", train);
		
		RequestDispatcher dispatch = request.getRequestDispatcher("TrainManage.jsp");
		
		dispatch.forward(request, response);
		
	}

}

