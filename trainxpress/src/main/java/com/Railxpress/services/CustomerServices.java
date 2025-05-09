package tServices;

import java.sql.ResultSet;
import java.sql.Statement;

import tModel.Customer;
import tUtils.DBConnect;

public class CustomerServices {

	public boolean validate(Customer cus) {
	
		boolean status = false;
		
		try {
			String query = "SELECT * FROM customer WHERE email = '"+cus.getEmail()+"' AND password = '"+cus.getPassword()+"'";
			
			Statement stmt = DBConnect.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				status = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public void register(Customer cus) {
		
		try {
			
			String query = "INSERT INTO customer(name,email,username,password) VALUES('"+cus.getName()+"','"+cus.getEmail()+"','"+cus.getCustomerUsername()+"','"+cus.getPassword()+"')";
			
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
