package com.Railxpress.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.model.Customer;
import com.Railxpress.utils.DBconnect;



public class CustomerServices {

	public ArrayList validate(Customer cus) {
	
		ArrayList cusDetails= new ArrayList();
		cusDetails.add(0);
		
		try {
			String query = "SELECT * FROM customer WHERE username = '"+cus.getCustomerUsername()+"' AND password = '"+cus.getPassword()+"'";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				cusDetails.set(0,rs.getInt("cid"));
				cusDetails.add(rs.getString("name"));
				cusDetails.add(rs.getString("email"));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cusDetails;
		
	}
	
	public int register(Customer cus) {
		int check=1;
		try {
			
			String query = "INSERT INTO customer(name,email,username,password) VALUES('"+cus.getName()+"','"+cus.getEmail()+"','"+cus.getCustomerUsername()+"','"+cus.getPassword()+"')";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			
			String query2="SELECT username from customer ";
			Statement stmt2= DBconnect.getConnection().createStatement();
			
			ResultSet rs=stmt2.executeQuery(query2);
			while(rs.next()) {
				
				if(rs.getString("username").equals(cus.getCustomerUsername())) {
					check=0;
				}
			}
			if(check==1) {
				stmt.executeUpdate(query);
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public int userCount() {
		String query="SELECT COUNT(cid) as count from customer";
		int count=0;
		try {
			PreparedStatement stmt =DBconnect.getConnection().prepareStatement(query);
			ResultSet rs=stmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt("count");
				System.out.println("UserTotal:"+rs.getInt("count"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
}
