package com.Railxpress.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.SQLSyntaxErrorException;
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
				rs.close();
				statement2.close();
				statement.close();
				
			} catch (SQLIntegrityConstraintViolationException e) {
				System.out.println("Constraint violation: " + e.getMessage());
			}
			catch (SQLSyntaxErrorException e) {
				System.out.println("Syntax error in the SQL query: " + e.getMessage());
			}
			catch (SQLException e) {
				System.out.println("Database error: " + e.getMessage());
			}
			catch (Exception e){
				e.printStackTrace();
			}
		
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
			rs.close();
			statement.close();
			return listTick;
			
		} catch (SQLSyntaxErrorException e) {
			System.out.println("Syntax error in the SQL query: " + e.getMessage());
		    return null;
		}
		catch (SQLException e){
			System.out.println("Database error: " + e.getMessage());
			return null;
		}
		catch (Exception e) {
			e.printStackTrace();
		    return null;
		}
	}
	
	public void updateTicket(Ticket ticket) {
		try {
			
			String query="UPDATE booking SET bid= ? , location= ?, destination= ? , noOfTicket= ? , date= ?, Price= ? where bid= ? ";
			PreparedStatement preparedStatement = DBconnect.getConnection().prepareStatement(query);
			
			String query2="SELECT price from trainroute where routeId=?";
			PreparedStatement statement2=DBconnect.getConnection().prepareStatement(query2);
			
			preparedStatement.setInt(1, ticket.getBid());
			preparedStatement.setString(2, ticket.getLocation());
			preparedStatement.setString(3, ticket.getDestination());
			preparedStatement.setInt(4, ticket.getNoOfTicket());
			preparedStatement.setString(5, ticket.getDate());
			
			statement2.setInt(1, ticket.getRouteId());
			ResultSet rs= statement2.executeQuery();
			if(rs.next()) {
				float pr=Float.parseFloat(rs.getString("price"))*ticket.getNoOfTicket();
				ticket.setPrice(String.valueOf(pr));
			}
			
			preparedStatement.setString(6, ticket.getPrice());
			preparedStatement.setInt(7, ticket.getBid());
			
			preparedStatement.executeUpdate();
			rs.close();
			statement2.close();
			preparedStatement.close();
		} catch (SQLIntegrityConstraintViolationException e) {
			System.out.println("Constraint violation: " + e.getMessage());
		}
		catch (SQLSyntaxErrorException e){
			 System.out.println("Syntax error in the SQL query: " + e.getMessage());
		}
		catch (SQLException e) {
			 System.out.println("Database error: " + e.getMessage());
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteTicket(Ticket ticket) {
		try {
			
			String query="DELETE FROM booking WHERE bid='"+ticket.getBid()+"'";
			
			Statement statement=DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);

			statement.close();

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
			rs.close();
			stmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("Price:"+price);
		return price;
	}
	
	public ArrayList<Ticket> getOneTicket(int cid){
		try {
			ArrayList<Ticket> listTick=new ArrayList<Ticket>(); 
			
			String query="SELECT * FROM booking where cid=?";
			
			PreparedStatement statement=DBconnect.getConnection().prepareStatement(query);
			statement.setInt(1, cid);
			ResultSet rs=statement.executeQuery();
			
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
			rs.close();
			statement.close();
		
			return listTick;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int getBookingCount(int cid) {
		int bookingCount=0;
		String query="select COUNT(bid) as count  from booking where cid=?";
		
		try {
			PreparedStatement stmt=DBconnect.getConnection().prepareStatement(query);
			stmt.setInt(1, cid);
			
			ResultSet rs=stmt.executeQuery();
			if(rs.next()) {
				bookingCount=rs.getInt("count");
			}
			rs.close();
			stmt.close();
			
		}catch(Exception e) {
			
		}
		
		
		return bookingCount;
	}
	
}

