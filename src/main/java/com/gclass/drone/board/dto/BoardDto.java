package com.gclass.drone.board.dto;

import java.sql.Clob;
import java.sql.Timestamp;
import java.util.Date;

public class BoardDto {

	private int subjno;
	private int bno;
	private int mno;
	private String ttl;
	private Clob ctt;
	private int readcnt;
	private Timestamp regdt;
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
	public Clob getCtt() {
		return ctt;
	}
	public void setCtt(Clob ctt) {
		this.ctt = ctt;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Timestamp getRegdt() {
		return regdt;
	}
	public void setRegdt(Timestamp regdt) {
		this.regdt = regdt;
	}
	
	@Override
	public String toString() {
		return "BoardDto [subjno=" + subjno + ", bno=" + bno + ", mno=" + mno + ", ttl=" + ttl + ", ctt=" + ctt
				+ ", readcnt=" + readcnt + ", regdt=" + regdt + "]";
	}
}
