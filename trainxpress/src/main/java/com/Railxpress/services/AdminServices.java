package com.Railxpress.services;

import java.sql.Statement;

import com.Railxpress.model.Admin;
import com.Railxpress.utils.DBconnect;

import java.sql.ResultSet;



public class AdminServices {

	public boolean validate(Admin admin) {
		
		boolean status = false;
		
		try {
			
			String query = "SELECT * FROM admin WHERE username = '"+ admin.getAdminUsername() +"' AND password = '"+ admin.getAdminPassword() +"'";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				status = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
		
	}
	
}
