package com.gclass.drone.map.dto;

public class CtscateDto {
	private int ctscateno;
	private String ctscatenm;

	public int getCtscateno() {
		return ctscateno;
	}
	public void setCtscateno(int ctscateno) {
		this.ctscateno = ctscateno;
	}
	public String getCtscatenm() {
		return ctscatenm;
	}
	public void setCtscatenm(String ctscatenm) {
		this.ctscatenm = ctscatenm;
	}
	
	@Override
	public String toString() {
		return "CtscateDto [ctscateno=" + ctscateno + ", ctscatename=" + ctscatenm + "]";
	}
}
