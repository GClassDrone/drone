package com.gclass.drone.inform.dto;

import java.sql.Timestamp;

public class InformDto {
	private String igubun;
	private int ino;
	private String ttl;
	private String ctt;
	private int readcnt;
	private String upfile;
	private Timestamp regdt;
	private String mgid;
	private String delyn;
	private String mno;
	
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}

	
	
	public String getIgubun() {
		return igubun;
	}
	public void setIgubun(String igubun) {
		this.igubun = igubun;
	}
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
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
	public String getUpfile() {
		return upfile;
	}
	public void setUpfile(String upfile) {
		this.upfile = upfile;
	}

	public Timestamp getRegdt() {
		return regdt;
	}
	public void setRegdt(Timestamp regdt) {
		this.regdt = regdt;
	}
	public String getMgid() {
		return mgid;
	}
	public void setMgid(String mgid) {
		this.mgid = mgid;
	}
	public String getDelyn() {
		return delyn;
	}
	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}
	@Override
	public String toString() {
		return "InformDto [igubun=" + igubun + ", ino=" + ino + ", ttl=" + ttl + ", ctt=" + ctt + ", readcnt=" + readcnt
				+ ", upfile=" + upfile + ", regdt=" + regdt + ", mgid=" + mgid + ", delyn=" + delyn + ", mno=" + mno
				+ "]";
	}

	
}
