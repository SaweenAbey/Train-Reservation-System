package com.Railxpress.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.utils.*;
import com.Railxpress.model.*;


public class paymentService {
	public void addPayment(Payment payment) {
	    try {
	        String query = "INSERT INTO payment (Name, CardNo, Exp, Cvc, Email) VALUES (?, ?, ?, ?, ?)";
	        
	        PreparedStatement statement = db_connect.getConnection().prepareStatement(query);
	        statement.setString(1, payment.getName());
	        statement.setString(2, payment.getCardNo());
	        statement.setString(3, payment.getExp());
	        statement.setInt(4, payment.getCvc());
	        statement.setString(5, payment.getEmail());
	        
	        statement.executeUpdate();
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	public ArrayList<Payment> getAllPayment(){
		try {
			ArrayList<Payment> listPay= new ArrayList<Payment>();
			
			String query="SELECT * FROM payment";
			
			Statement statement=db_connect.getConnection().createStatement();
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
			return listPay;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void updatePayment(Payment payment) {
		try {
			
			String query="UPDATE payment SET Name='"+payment.getName()+"', CardNo='"+payment.getCardNo()+"', Exp='"+payment.getExp()+"', Cvc='"+payment.getCvc()+"', Email='"+payment.getEmail()+"' where Pid='"+payment.getPid()+"'";

			Statement statement=db_connect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e)	 {
			e.printStackTrace();
		}
	}
	
	public void deletePayment(Payment payment) {
		try {
			
			String query="DELETE FROM payment WHERE Pid='"+payment.getPid()+"'";
			
			Statement statement=db_connect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
