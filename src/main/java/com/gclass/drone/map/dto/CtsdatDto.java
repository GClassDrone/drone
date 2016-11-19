package com.gclass.drone.map.dto;

import java.sql.Timestamp;

public class CtsdatDto {
	private int ctscateno;
	private int ctsno;
	private int ctsdatno;
	private int mno;
	private String niknm;
	private String ctt;
	private Timestamp regdt;
	private String regtime;
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
	public int getCtsdatno() {
		return ctsdatno;
	}
	public void setCtsdatno(int ctsdateno) {
		this.ctsdatno = ctsdateno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getNiknm() {
		return niknm;
	}
	public void setNiknm(String niknm) {
		this.niknm = niknm;
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
	public String getRegtime() {
		return regtime;
	}
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	@Override
	public String toString() {
		return "CtsdatDto [ctscateno=" + ctscateno + ", ctsno=" + ctsno + ", ctsdatno=" + ctsdatno + ", mno=" + mno
				+ ", niknm=" + niknm + ", ctt=" + ctt + ", regdt=" + regdt + ", regtime=" + regtime + "]";
	}
}
