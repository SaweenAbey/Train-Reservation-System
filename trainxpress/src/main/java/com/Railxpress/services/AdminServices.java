package tServices;

import java.sql.Statement;
import java.sql.ResultSet;

import tModel.Admin;
import tUtils.DBConnect;

public class AdminServices {

	public boolean validate(Admin admin) {
		
		boolean status = false;
		
		try {
			
			String query = "SELECT * FROM admin WHERE username = '"+ admin.getAdminUsername() +"' AND password = '"+ admin.getAdminPassword() +"'";
			
			Statement stmt = DBConnect.getConnection().createStatement();
			
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
