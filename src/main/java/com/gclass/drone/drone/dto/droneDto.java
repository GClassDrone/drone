package com.gclass.drone.drone.dto;

public class droneDto {
	private int mdrno;
	private String model;
	private String mdrnm;
	private char pryn;
	private int mno;
	public int getMdrno() {
		return mdrno;
	}
	public void setMdrno(int mdrno) {
		this.mdrno = mdrno;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getMdrnm() {
		return mdrnm;
	}
	public void setMdrnm(String mdrnm) {
		this.mdrnm = mdrnm;
	}
	public char getPryn() {
		return pryn;
	}
	public void setPryn(char pryn) {
		this.pryn = pryn;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}

	@Override
	public String toString() {
		return "droneDto [mdrno=" + mdrno + ", model=" + model + ", mdrnm=" + mdrnm + ", pryn=" + pryn + ", mno=" + mno
				+ "]";
	}
}
