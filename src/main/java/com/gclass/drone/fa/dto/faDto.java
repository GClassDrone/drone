package com.gclass.drone.fa.dto;


public class faDto {

	private int fno;
	private char fgubun;
	private int ctscateno;
	private int ctsno;
	private int mno;
	private String ttl;
	private String ctt;
	private String filelk;
	
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
	public String getFilelk() {
		return filelk;
	}
	public void setFilelk(String filelk) {
		this.filelk = filelk;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public char getFgubun() {
		return fgubun;
	}
	public void setFgubun(char fgubun) {
		this.fgubun = fgubun;
	}
	public int getCtscateno() {
		return ctscateno;
	}
	public void setCtscateno(int ctscateno) {
		this.ctscateno = ctscateno;
	}
	public int getCtsno() {
		return ctsno;
	}
	public void setCtsno(int ctsno) {
		this.ctsno = ctsno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	@Override
	public String toString() {
		return "faDto [fno=" + fno + ", fgubun=" + fgubun + ", ctscateno=" + ctscateno + ", ctsno=" + ctsno + ", mno="
				+ mno + ", ttl=" + ttl + ", ctt=" + ctt + ", filelk=" + filelk + "]";
	}
	
}
