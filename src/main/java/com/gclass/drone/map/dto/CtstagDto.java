package com.gclass.drone.map.dto;

public class CtstagDto {
	private int ctscateno;
	private int ctsno;
	private int tagno;
	private String tagnm;
	
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
	public int getTagno() {
		return tagno;
	}
	public void setTagno(int tagno) {
		this.tagno = tagno;
	}
	public String getTagnm() {
		return tagnm;
	}
	public void setTagnm(String tagnm) {
		this.tagnm = tagnm;
	}
	@Override
	public String toString() {
		return "CtstagDto [ctscateno=" + ctscateno + ", ctsno=" + ctsno + ", tagno=" + tagno + ", tagnm=" + tagnm + "]";
	}
}
