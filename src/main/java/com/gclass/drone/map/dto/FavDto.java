package com.gclass.drone.map.dto;

public class FavDto {
	private String fgubun;
	private int ctscateno;
	private int ctsno;
	private int mno;
	private int favcnt;
	private int joacnt;
	private String check;
	public String getFgubun() {
		return fgubun;
	}
	public void setFgubun(String fgubun) {
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
	public int getFavcnt() {
		return favcnt;
	}
	public void setFavcnt(int favcnt) {
		this.favcnt = favcnt;
	}
	public int getJoacnt() {
		return joacnt;
	}
	public void setJoacnt(int joacnt) {
		this.joacnt = joacnt;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	@Override
	public String toString() {
		return "FavDto [fgubun=" + fgubun + ", ctscateno=" + ctscateno + ", ctsno=" + ctsno + ", mno=" + mno
				+ ", favcnt=" + favcnt + ", joacnt=" + joacnt + ", check=" + check + "]";
	}
}
