package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.trainrouteRegister;


@WebServlet("/addtrainRoute")
public class addtrainRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 addtrainRoute() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		trainrouteRegister route = new trainrouteRegister();
		
		route.setStrtpoint(request.getParameter("name"));
		route.setEndpoint(request.getParameter(""));
		
		
		
		doGet(request, response);
	}

}
