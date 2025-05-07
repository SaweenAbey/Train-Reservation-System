package com.Railxpress.model;

public class Driver {
	private int driverId;
	private String fname;
	private String lname;
	private String address;
	private String licenseNum;
	private String telNo;
	private int age;
	
	
	public int getDriverId() {
		return driverId;
	}
	public String getFname() {
		return fname;
	}
	public String getLname() {
		return lname;
	}
	public String getAddress() {
		return address;
	}
	public String getLicenseNum() {
		return licenseNum;
	}
	public String getTelNo() {
		return telNo;
	}
	public int getAge() {
		return age;
	}
	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setLicenseNum(String licenseNum) {
		this.licenseNum = licenseNum;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
