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
	public int getDriverCount() {
		String query="select COUNT(driverId) as count from driver";
		int reviewCount=0;
		try {
			PreparedStatement stmt= DBconnect.getConnection().prepareStatement(query);
			ResultSet rs=stmt.executeQuery();
			if(rs.next()) {
				reviewCount=rs.getInt("count");
			}
			
			
		}catch(Exception e) {
			
		}
		return reviewCount;
	}
}
