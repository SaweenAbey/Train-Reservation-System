package com.Railxpress.model;

public class Review {
	private int cusId;
	private String message;
	private String type;
	private int rating;
	private String name;
	
	public int getCusId() {
		return cusId;
	}
	public String getMessage() {
		return message;
	}
	public String getType() {
		return type;
	}
	public int getRating() {
		return rating;
	}
	public String getName() {
		return name;
	}
	public void setCusId(int cusId) {
		this.cusId = cusId;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
