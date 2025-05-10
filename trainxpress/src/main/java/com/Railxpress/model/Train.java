package com.Railxpress.model;

public class Train {
	
	private int tid;
	private String tname;
	private String tenginenum;
	private String ttype;
	private int seatcount;
	private int noofwagons;
	
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTenginenum(){
		return tenginenum;
	}
	public void setTenginenum(String tenginenum) {
		this.tenginenum=tenginenum;
	}
	public String getTtype() {
		return ttype;
	}
	public void setTtype(String ttype) {
		this.ttype = ttype;
	}
	public int getSeatcount() {
		return seatcount;
	}
	public void setSeatcount(int seatcount) {
		this.seatcount = seatcount;
	}
	public int getNoofwagons() {
		return noofwagons;
	}
	public void setNoofwagons(int noofwagons) {
		this.noofwagons = noofwagons;
	}
	
}
