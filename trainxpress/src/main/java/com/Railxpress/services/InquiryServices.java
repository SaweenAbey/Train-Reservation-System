package com.Railxpress.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.model.Inquiry;
import com.Railxpress.utils.DBconnect;


public class InquiryServices {

	public void addInquiry(Inquiry inq) {
		
		try {
			
			String query = "INSERT INTO inquiry(email,message) "
					+ "VALUES ('"+ inq.getEmail() +"','"+ inq.getMessage() +"')";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			
			stmt.executeUpdate(query);
			 
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Inquiry> inquiryList() {
		
		ArrayList<Inquiry> list =  new ArrayList<Inquiry>();
		
		try{
			
			String query = "SELECT * FROM inquiry";
		
			Statement stmt = DBconnect.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				
				Inquiry inq = new Inquiry();
				
				int inqID = rs.getInt(1);
				String email = rs.getString(2);
				String message = rs.getString(3);
				String status = rs.getString(4);
				
				inq.setInqId(inqID);
				inq.setEmail(email);
				inq.setMessage(message);
				inq.setStatus(status);
				
				list.add(inq);
				
			}
		
		return list;
	
		} catch (SQLIntegrityConstraintViolationException e) {
			System.out.println("Integrity Constraint Violation! " + e.getMessage());
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public void updateStatus(Inquiry inq) {
		
		try{
			
			String query = "UPDATE inquiry SET status = ? WHERE inqid = ?";

			PreparedStatement pstmt = DBconnect.getConnection().prepareStatement(query);
			
			pstmt.setString(1, inq.getStatus());
			pstmt.setInt(2, inq.getInqId());

			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
