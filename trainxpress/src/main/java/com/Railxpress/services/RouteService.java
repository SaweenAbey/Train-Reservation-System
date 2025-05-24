//IT23748330 Abeysekara S.U
package com.Railxpress.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.SQLSyntaxErrorException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Railxpress.model.Troutemodl;
import com.Railxpress.utils.DBconnect;

public class RouteService {
	public void regRoute(Troutemodl rout) {
		try {
		    String query = "INSERT INTO trainroute(start, end, arrivalTime, departureTime, price,trainId) VALUES (?, ?, ?, ?, ?,?)"; //sql query sing bind values 
		    PreparedStatement preparedStatement = DBconnect.getConnection().prepareStatement(query); //make connction with pewpared stetement 
		    
		    preparedStatement.setString(1, rout.getSstation());
		    preparedStatement.setString(2, rout.getEstation());
		    preparedStatement.setString(3, rout.getDepTime());
		    preparedStatement.setString(4, rout.getArrTime());
		    preparedStatement.setDouble(5, rout.getTprice());
		    preparedStatement.setInt(6, rout.getTid());    //assign values

		    preparedStatement.executeUpdate();  //executes 
		    
		    preparedStatement.close();

		} catch (SQLIntegrityConstraintViolationException e) {                                //generates errors handling
		    System.out.println("Constraint violation: " + e.getMessage());
		} catch (SQLSyntaxErrorException e) {
		    System.out.println("Syntax error in the SQL query: " + e.getMessage());
		} catch (SQLException e) {
		    System.out.println("Database error: " + e.getMessage());
		} catch (Exception e) {
		    e.printStackTrace();
		}
		
	}

	public static List<Troutemodl> getAllRout(){                 //make list 
		ArrayList<Troutemodl>allTrout = new ArrayList<Troutemodl>(); //make arraylist
		try {
			String query = "select * from trainroute ";
			Statement statement = DBconnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				Troutemodl rm = new Troutemodl();
				rm.setRid(rs.getInt(1));
				rm.setSstation(rs.getString(2));
				rm.setEstation(rs.getString(3));
				rm.setDepTime(rs.getString(4));
				rm.setArrTime(rs.getString(5));
				rm.setTprice(rs.getFloat(6));
				rm.setTid(rs.getInt(7));
				
				allTrout.add(rm);
				
			}
			rs.close();
			statement.close();
			return allTrout;
			
			
		} catch (SQLSyntaxErrorException e) {
		    System.out.println("Syntax error in the SQL query: " + e.getMessage());
		    return null;
		}catch (SQLException e) {
		    System.out.println("Database error: " + e.getMessage());
		    return null;
		} catch (Exception e) {
		    e.printStackTrace();
		    return null;
		}
		
	}
	public void updateRoute(Troutemodl rout) {
	    try {
	        String query = "UPDATE trainroute SET start = ?, end = ?, arrivalTime = ?, departureTime = ?, price = ?,trainId = ? WHERE routeId = ?";
	        PreparedStatement preparedStatement = DBconnect.getConnection().prepareStatement(query);
	        
	        preparedStatement.setString(1, rout.getSstation());
	        preparedStatement.setString(2, rout.getEstation());
	        preparedStatement.setString(3, rout.getDepTime());
	        preparedStatement.setString(4, rout.getArrTime());
	        preparedStatement.setDouble(5, rout.getTprice());
	        preparedStatement.setInt(6, rout.getTid());
	        preparedStatement.setInt(7, rout.getRid());

	        preparedStatement.executeUpdate();
	        
	        preparedStatement.close();
			
	    } catch (SQLIntegrityConstraintViolationException e) {
	        System.out.println("Constraint violation: " + e.getMessage());
	    } catch (SQLSyntaxErrorException e) {
	        System.out.println("Syntax error in the SQL query: " + e.getMessage());
	    } catch (SQLException e) {
	        System.out.println("Database error: " + e.getMessage());
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	public void deleteRoute(Troutemodl trout) {
		try {
			
			String query = "Delete From trainroute where routeId = '"+trout.getRid()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
			statement.close();	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Troutemodl>Searchitm(String sstation,String estation){
		ArrayList<Troutemodl>alsearch = new ArrayList<>();
		try {
			String query = "select start,end,departureTime,arrivalTime from trainroute  where start='"+sstation+"'and end='"+estation+"'";
			Statement statement = DBconnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				Troutemodl rm = new Troutemodl();
				rm.setSstation(rs.getString(1));
				rm.setEstation(rs.getString(2));
				rm.setDepTime(rs.getString(3));
				rm.setArrTime(rs.getString(4));
				
				alsearch.add(rm);
				
				
			}
			rs.close();
			statement.close();
			return alsearch;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
