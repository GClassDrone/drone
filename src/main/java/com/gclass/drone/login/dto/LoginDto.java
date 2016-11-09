package com.gclass.drone.login.dto;

import java.sql.Date;

public class LoginDto {
	private int mno;
	private String niknm;
	private String email;
	private char ppose;
	private String pic;
	private int siteno;
	private String siteid;
	private Date indt;
	private int locno;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getniknm() {
		return niknm;
	}
	public void setniknm(String niknm) {
		this.niknm = niknm;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public char getPpose() {
		return ppose;
	}
	public void setPpose(char ppose) {
		this.ppose = ppose;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getSiteno() {
		return siteno;
	}
	public void setSiteno(int siteno) {
		this.siteno = siteno;
	}
	public String getSiteid() {
		return siteid;
	}
	public void setSiteid(String siteid) {
		this.siteid = siteid;
	}
	public Date getIndt() {
		return indt;
	}
	public void setIndt(Date indt) {
		this.indt = indt;
	}
	public int getLocno() {
		return locno;
	}
	public void setLocno(int locno) {
		this.locno = locno;
	}
	@Override
	public String toString() {
		return "LoginDto [mno=" + mno + ", niknm=" + niknm + ", email=" + email + ", ppose=" + ppose + ", pic=" + pic
				+ ", siteno=" + siteno + ", siteid=" + siteid + ", indt=" + indt + ", locno=" + locno + "]";
	}
	
	
}
