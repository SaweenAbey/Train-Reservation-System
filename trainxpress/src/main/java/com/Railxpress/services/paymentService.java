package com.Railxpress.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.SQLSyntaxErrorException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.utils.*;
import com.Railxpress.model.*;


public class paymentService {
	public void addPayment(Payment payment) {
	    try {
	        String query = "INSERT INTO payment (Name, CardNo, Exp, Cvc, Email, Cid) VALUES (?, ?, ?, ?,?, ?)";
	        
	        PreparedStatement statement = DBconnect.getConnection().prepareStatement(query);
	        statement.setString(1, payment.getName());
	        statement.setString(2, payment.getCardNo());
	        statement.setString(3, payment.getExp());
	        statement.setInt(4, payment.getCvc());
	        statement.setString(5, payment.getEmail());
	        statement.setInt(6, payment.getCid());
	        statement.executeUpdate();
	        
	        statement.close();
		
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
	
	public ArrayList<Payment> getAllPayment(){
		try {
			ArrayList<Payment> listPay= new ArrayList<Payment>();
			
			String query="SELECT * FROM payment";
			
			Statement statement=DBconnect.getConnection().createStatement();
			ResultSet rs=statement.executeQuery(query);
			
			while(rs.next()) {
				Payment pay=new Payment();
				pay.setName(rs.getString("name"));
				pay.setCardNo(rs.getString("cardno"));
				pay.setExp(rs.getString("exp"));
				pay.setCvc(rs.getInt("cvc"));
				pay.setEmail(rs.getString("email"));
				pay.setPid(rs.getInt("pid"));
				pay.setCid(rs.getInt("cid"));
				
				listPay.add(pay);
			}
			rs.close();
			statement.close();
			
			return listPay;
			
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
	
	public void updatePayment(Payment payment) {
		try {
			
			String query="UPDATE payment SET Name= ?, CardNo=? , Exp= ?, Cvc=?, Email= ? where Pid=?";

			PreparedStatement preparedStatement = DBconnect.getConnection().prepareStatement(query);
			preparedStatement.setString(1, payment.getName());
			preparedStatement.setString(2, payment.getCardNo());
			preparedStatement.setString(3, payment.getExp());
			preparedStatement.setInt(4, payment.getCvc());
			preparedStatement.setString(5, payment.getEmail());
			preparedStatement.setInt(6, payment.getPid());
			
			preparedStatement.executeUpdate();
			
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
	
	public void deletePayment(Payment payment) {
		try {
			
			String query="DELETE FROM payment WHERE Pid='"+payment.getPid()+"'";
			
			Statement statement=DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
			statement.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<Payment> getOnePayment(int cid){
		try {
			ArrayList<Payment> listPay= new ArrayList<Payment>();
			
			String query="SELECT * FROM payment where Cid=?";
			
			PreparedStatement statement=DBconnect.getConnection().prepareStatement(query);
			statement.setInt(1, cid);
			ResultSet rs=statement.executeQuery();
			
			while(rs.next()) {
				Payment pay=new Payment();
				pay.setName(rs.getString("name"));
				pay.setCardNo(rs.getString("cardno"));
				pay.setExp(rs.getString("exp"));
				pay.setCvc(rs.getInt("cvc"));
				pay.setEmail(rs.getString("email"));
				pay.setPid(rs.getInt("pid"));
				pay.setCid(rs.getInt("cid"));
				
				listPay.add(pay);

			}
			rs.close();
			statement.close();
			return listPay;
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	public int getCardCount(int cid) {
		int cardCount=0;
		String query="select COUNT(Pid) as count from payment where Cid=?";
		try {
			PreparedStatement stmt=DBconnect.getConnection().prepareStatement(query);
			stmt.setInt(1, cid);
			
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				cardCount=rs.getInt("count");
			}
			rs.close();
			stmt.close();
		}

		catch(Exception e) {
			e.printStackTrace();
		}
		return cardCount;
	}
}
