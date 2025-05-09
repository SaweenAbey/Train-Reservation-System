package com.Railxpress.model;

public class Customer extends Person{

	private int cid;
	private String CustomerUsername;
	private String CustomerPassword;
	
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	public String getCustomerUsername() {
		return CustomerUsername;
	}
	public void setCustomerUsername(String Username) {
		this.CustomerUsername = Username;
	}
	public String getPassword() {
		return CustomerPassword;
	}
	public void setPassword(String password) {
		this.CustomerPassword = password;
	}
	
}
