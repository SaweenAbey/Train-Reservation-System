package com.Railxpress.services;

import java.sql.Statement;

import com.Railxpress.model.Admin;
import com.Railxpress.utils.DBconnect;

import java.sql.ResultSet;



public class AdminServices {

	public int validate(Admin admin) {
		
		
		int id=0;
		try {
			
			String query = "SELECT * FROM admin WHERE username = '"+ admin.getAdminUsername() +"' AND password = '"+ admin.getAdminPassword() +"'";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			 
			if(rs.next()) {
				id=rs.getInt("adminId");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return id;
		
	}
	
}
