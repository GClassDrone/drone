package com.gclass.drone.category.dto;

public class CateDto {
	private String filelk;
	private String ttl;
	private String ctt;
	private int ctsno;
	private int ctscateno;
	
	public String getFilelk() {
		return filelk;
	}
	public void setFilelk(String filelk) {
		this.filelk = filelk;
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
	public int getCtsno() {
		return ctsno;
	}
	public void setCtsno(int ctsno) {
		this.ctsno = ctsno;
	}
	public int getCtscateno() {
		return ctscateno;
	}
	public void setCtscateno(int ctscateno) {
		this.ctscateno = ctscateno;
	}
	@Override
	public String toString() {
		return "CateDto [filelk=" + filelk + ", ttl=" + ttl + ", ctt=" + ctt + ", ctsno=" + ctsno + ", ctscateno="
				+ ctscateno + "]";
	}
}
