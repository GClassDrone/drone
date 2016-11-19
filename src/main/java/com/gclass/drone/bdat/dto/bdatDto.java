package com.gclass.drone.bdat.dto;

import java.sql.Timestamp;

public class bdatDto {
	private int subjno;
	private int bno;
	private int bdatno;
	private int mno;
	private String ctt;
	private Timestamp regdt;
	private String niknm;
	
	public String getNiknm() {
		return niknm;
	}
	public void setNiknm(String niknm) {
		this.niknm = niknm;
	}
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
	public int getBdatno() {
		return bdatno;
	}
	public void setBdatno(int bdatno) {
		this.bdatno = bdatno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getCtt() {
		return ctt;
	}
	public void setCtt(String ctt) {
		this.ctt = ctt;
	}
	public Timestamp getRegdt() {
		return regdt;
	}
	public void setRegdt(Timestamp regdt) {
		this.regdt = regdt;
	}
	@Override
	public String toString() {
		return "bdatDto [subjno=" + subjno + ", bno=" + bno + ", bdatno=" + bdatno + ", mno=" + mno + ", ctt=" + ctt
				+ ", regdt=" + regdt + ", niknm=" + niknm + "]";
	}
}
