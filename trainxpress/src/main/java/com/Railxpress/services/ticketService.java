package com.Railxpress.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.utils.*;
import com.Railxpress.model.*;

public class ticketService {
	public int ticketMethod(Ticket ticket) {
		try {
			
				String query = "INSERT INTO booking (location, destination, noOfTicket, date,price,cid,routeId) " + "VALUES(?, ?, ?, ?,?,?, ?)";
				String query2="SELECT price from trainroute where routeId=?";
				PreparedStatement statement=DBconnect.getConnection().prepareStatement(query);
				PreparedStatement statement2=DBconnect.getConnection().prepareStatement(query2);
				
				statement.setString(1, ticket.getLocation());
				statement.setString(2, ticket.getDestination());
				statement.setInt(3, ticket.getNoOfTicket());
				statement.setString(4, ticket.getDate());
				
				
				statement2.setInt(1, ticket.getRouteId());
				ResultSet rs= statement2.executeQuery();
				if(rs.next()) {
					float pr=Float.parseFloat(rs.getString("price"))*ticket.getNoOfTicket();
					ticket.setPrice(String.valueOf(pr));
				}
				
				statement.setString(5, ticket.getPrice());
				statement.setInt(6,ticket.getCid());
				statement.setInt(7, ticket.getRouteId());
				
				statement.executeUpdate();
				
				String query3= "SELECT MAX(bid) as max from booking";
				PreparedStatement statement3=DBconnect.getConnection().prepareStatement(query3);
				ResultSet rs2=statement3.executeQuery();
				if(rs2.next()) {
					ticket.setBid(rs2.getInt("max"));
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		System.out.println("bid from tickerService:"+ticket.getBid());
		return ticket.getBid();
	}
	
	public ArrayList<Ticket> getAllTicket(){
		try {
			ArrayList<Ticket> listTick=new ArrayList<Ticket>(); 
			
			String query="SELECT * FROM booking";
			
			Statement statement=DBconnect.getConnection().createStatement();
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
			
			Statement statement=DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteTicket(Ticket ticket) {
		try {
			
			String query="DELETE FROM booking WHERE bid='"+ticket.getBid()+"'";
			
			Statement statement=DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getTotalPrice(int bid) {
		String query="Select price from booking where bid=?";
		String price="";
		try {
			Connection conn= DBconnect.getConnection();
			PreparedStatement stmt =conn.prepareStatement(query);
			
			stmt.setInt(1, bid);
			ResultSet rs=stmt.executeQuery();
			
			if(rs.next()) {
				price=rs.getString("price");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("Price:"+price);
		return price;
	}
	
}

