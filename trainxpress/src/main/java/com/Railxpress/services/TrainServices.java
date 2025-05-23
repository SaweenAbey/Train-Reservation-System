package com.Railxpress.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.SQLSyntaxErrorException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.model.Train;
import com.Railxpress.utils.DBconnect;


public class TrainServices {

	public ArrayList<Train> getAllTrains() {
		
		try {
			
			ArrayList<Train> listTrain = new ArrayList<Train>();
			
			
			String query = "SELECT * FROM train";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				Train trn = new Train();
				
				int id = rs.getInt("tid");
				String name = rs.getString("name");
				String enginenum = rs.getString("enginenum");
				String type = rs.getString("type");
				int seatcount = rs.getInt("seatcount");
				int noofwagons = rs.getInt("noofwagons");
				
				trn.setTid(id);
				trn.setTname(name);
				trn.setTenginenum(enginenum);
				trn.setTtype(type);
				trn.setSeatcount(seatcount);
				trn.setNoofwagons(noofwagons);
				
				listTrain.add(trn);
				
			}
			
			rs.close();
			stmt.close();
		
			return listTrain;
		
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}

	public void addTrain(Train trn) {
	
		try {
			
			String query = "INSERT INTO train(name,enginenum,type,seatcount,noofwagons) "
					+ "VALUES(?, ?, ?, ?, ?)";
			
			Connection conn=DBconnect.getConnection();
			
			PreparedStatement pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1,trn.getTname());
			pstmt.setString(2,trn.getTenginenum());
			pstmt.setString(3,trn.getTtype());
			pstmt.setInt(4,trn.getSeatcount());
			pstmt.setInt(5,trn.getNoofwagons());

			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	
	public void deleteTrain(Train trn) {
		
		try {
			
			String query = "DELETE FROM train WHERE tid = ?";
			
			Connection conn=DBconnect.getConnection();
			
			
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, trn.getTid());
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		} catch (SQLIntegrityConstraintViolationException e) {
			
			System.out.println("Constraint Violation " + e.getMessage());
			
		} catch (SQLSyntaxErrorException e) {
			
			System.out.println("Syntax Error " + e.getMessage());
			
		}
		
		catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
	}
	
	public void updateTrain(Train trn) {
		
		try {
			
			String query = "UPDATE train SET name = ?, enginenum = ?, type = ?, seatcount = ?, noofwagons = ? WHERE tid = ?";
			
			Connection conn=DBconnect.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement(query);

			pstmt.setString(1, trn.getTname());
			pstmt.setString(2, trn.getTenginenum());
			pstmt.setString(3, trn.getTtype());
			pstmt.setInt(4, trn.getSeatcount());
			pstmt.setInt(5, trn.getNoofwagons());
			pstmt.setInt(6, trn.getTid());

			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			
		} catch (SQLIntegrityConstraintViolationException e) {
			
			System.out.println("Constraint Violation " + e.getMessage());
			
		} catch (SQLSyntaxErrorException e) {
			
			System.out.println("Syntax Error " + e.getMessage());
			
		} 

		catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int getTrainCount() {
		int count=0;
		String query="select COUNT(tid) as count from train";
		try {
			PreparedStatement stmt=DBconnect.getConnection().prepareStatement(query);
			ResultSet rs=stmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt("count");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("Train Count:"+count);
		return count;
	}

}

