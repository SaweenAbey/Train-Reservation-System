package com.Railxpress.model;

public class Inquiry {
	
	private int inqId;
	private String email;
	private String message;
	private String status;
	
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getInqId() {
		return inqId;
	}
	public void setInqId(int inqId) {
		this.inqId = inqId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
