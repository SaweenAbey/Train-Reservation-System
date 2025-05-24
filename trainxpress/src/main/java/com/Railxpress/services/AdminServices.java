package com.Railxpress.services;

import java.sql.Statement;
import java.util.ArrayList;

import com.Railxpress.model.Admin;
import com.Railxpress.utils.DBconnect;

import java.sql.ResultSet;



public class AdminServices {

	public ArrayList validate(Admin admin) {
		
		ArrayList adminDetails= new ArrayList();
		adminDetails.add(0);
		try {
			
			String query = "SELECT * FROM admin WHERE username = '"+ admin.getAdminUsername() +"' AND password = '"+ admin.getAdminPassword() +"'";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			 
			if(rs.next()) {
				adminDetails.set(0,rs.getInt("adminId"));
				adminDetails.add(rs.getString("name"));
			}
			rs.close();
			stmt.close();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return adminDetails;
		
	}
	
}
