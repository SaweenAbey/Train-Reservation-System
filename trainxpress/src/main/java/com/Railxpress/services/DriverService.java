package com.Railxpress.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Railxpress.model.Driver;
import com.Railxpress.utils.DBconnect;



public class DriverService {
	public void insertDriver(Driver driver) {
		
		String query= "INSERT INTO driver(fName,lname,address,licenseNum,telNo,age) values(?,?,?,?,?,?)";
		try {
			Connection conn=DBconnect.getConnection();
			
			PreparedStatement stmt=conn.prepareStatement(query);
			
			stmt.setString(1,driver.getFname());
			stmt.setString(2,driver.getLname());
			stmt.setString(3,driver.getAddress());
			stmt.setString(4,driver.getLicenseNum());
			stmt.setString(5,driver.getTelNo());
			stmt.setInt(6,driver.getAge());
			
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
//		String query = "INSERT INTO driver (name,nic,age,phone) VALUES(?,?,?,?)";
//		
//		try (PreparedStatement pStatement = DBconnect.getConnection().prepareStatement(query) ){
//			//String query = "INSERT INTO driver (name,nic,age,phone) VALUES('"+driver.getName()+"','"+driver.getNic()+"','"+driver.getAge()+"','"+driver.getPhone()+"')";
//			//Statement statement = DBconnect.getConnection().createStatement();
//			//statement.executeUpdate(query);
//			pStatement.setString(1,driver.getName());
//			pStatement.setString(2,driver.getNic());
//			pStatement.setInt(3,driver.getAge());
//			pStatement.setInt(4,driver.getPhone());
//			
//			pStatement.executeUpdate();
//			System.out.println("Inserted");   /*Use executeQuery() for SELECT queries.
//												Use executeUpdate() for INSERT, UPDATE, DELETE.*/
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}
	
	public ArrayList<Driver> readAll() {
		ArrayList<Driver> driverList= new ArrayList<Driver>();
		try {
			Connection conn= DBconnect.getConnection();
			String query= "SELECT * FROM driver";
			PreparedStatement stmt = conn.prepareStatement(query);
			
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Driver driver =new Driver();
				driver.setDriverId(rs.getInt("driverId"));
				driver.setFname(rs.getString("fName"));
				driver.setLname(rs.getString("lName"));
				driver.setAddress(rs.getString("address"));
				driver.setLicenseNum(rs.getString("licenseNum"));
				driver.setTelNo(rs.getString("telNo"));
				driver.setAge(rs.getInt("age"));
				driverList.add(driver);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return driverList;
	}
	
	public void update(Driver driver) {
		String query= "UPDATE driver set fName=?,lName=?,address=?,licenseNum=?,telNo=?,age=? where driverId=?";
		try {
			Connection conn = DBconnect.getConnection();
			PreparedStatement stmt =conn.prepareStatement(query);
			stmt.setString(1, driver.getFname());
			stmt.setString(2, driver.getLname());
			stmt.setString(3, driver.getAddress());
			stmt.setString(4, driver.getLicenseNum());
			stmt.setString(5, driver.getTelNo());
			stmt.setInt(6, driver.getAge());
			stmt.setInt(7, driver.getDriverId());
			
			stmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delete(int id) {
		String query="Delete from driver where driverId=?";
		try {
			Connection conn =DBconnect.getConnection();
			PreparedStatement stmt =conn.prepareStatement(query);
			
			stmt.setInt(1, id);
			stmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
