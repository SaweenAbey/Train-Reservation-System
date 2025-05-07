package com.Railxpress.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.utils.*;
import com.Railxpress.model.*;

public class ticketService {
	public void ticketMethod(Ticket ticket) {
		try {
			
				String query = "INSERT INTO booking (location, destination, noOfTicket, date, routeId) " + "VALUES(?, ?, ?, ?, ?)";
				
				PreparedStatement statement=db_connect.getConnection().prepareStatement(query);
				statement.setString(1, ticket.getLocation());
				statement.setString(2, ticket.getDestination());
				statement.setInt(3, ticket.getNoOfTicket());
				statement.setString(4, ticket.getDate());
				statement.setInt(5, ticket.getRouteId());
				
				statement.executeUpdate();
	
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	public ArrayList<Ticket> getAllTicket(){
		try {
			ArrayList<Ticket> listTick=new ArrayList<Ticket>(); 
			
			String query="SELECT * FROM booking";
			
			Statement statement=db_connect.getConnection().createStatement();
			ResultSet rs=statement.executeQuery(query);
			
			while(rs.next()) {
				Ticket tick=new Ticket();
				tick.setBid(rs.getInt("bid"));
				tick.setLocation(rs.getString("location"));
				tick.setDestination(rs.getString("destination"));
				tick.setNoOfTicket(rs.getInt("noOfTicket"));
				tick.setDate(rs.getString("date"));
				tick.setPrice(rs.getString("price"));
				tick.setCid(rs.getInt("cid"));
				tick.setRouteId(rs.getInt("routeId"));
				
				listTick.add(tick);
			}
			return listTick;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void updateTicket(Ticket ticket) {
		try {
			
			String query="UPDATE booking SET bid='"+ticket.getBid()+"', location='"+ticket.getLocation()+"', destination='"+ticket.getDestination()+"', noOfTicket='"+ticket.getNoOfTicket()+"', date='"+ticket.getDate()+"', Price='"+ticket.getPrice()+"' where bid='"+ticket.getBid()+"'";
			
			Statement statement=db_connect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteTicket(Ticket ticket) {
		try {
			
			String query="DELETE FROM booking WHERE bid='"+ticket.getBid()+"'";
			
			Statement statement=db_connect.getConnection().createStatement();
			statement.executeUpdate(query);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}

