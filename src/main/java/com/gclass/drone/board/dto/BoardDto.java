package com.gclass.drone.board.dto;

import java.util.Date;

public class BoardDto {

	private int subjno;
	private int bno;
	private int mno;
	private String ttl;
	private String ctt;
	private int readcnt;
	private Date regdt;
	
	public int getSubjno() {
		return subjno;
	}
	public void setSubjno(int subjno) {
		this.subjno = subjno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getTtl() {
		return ttl;
	}
	public void setTtl(String ttl) {
		this.ttl = ttl;
	}
	public String getCtt() {
		return ctt;
	}
	public void setCtt(String ctt) {
		this.ctt = ctt;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Date getRegdt() {
		return regdt;
	}
	public void setRegdt(Date regdt) {
		this.regdt = regdt;
	}
	
	@Override
	public String toString() {
		return "BoardDto [subjno=" + subjno + ", bno=" + bno + ", mno=" + mno + ", ttl=" + ttl + ", ctt=" + ctt
				+ ", readcnt=" + readcnt + ", regdt=" + regdt + "]";
	}
}
