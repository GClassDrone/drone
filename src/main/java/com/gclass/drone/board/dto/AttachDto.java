package com.gclass.drone.board.dto;

import java.sql.Timestamp;

public class AttachDto {
	private String fullName;
	private int num;
	private Timestamp regdt;
	
	public AttachDto() {
		super();
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public Timestamp getRegdt() {
		return regdt;
	}
	public void setRegdt(Timestamp regdt) {
		this.regdt = regdt;
	}

	@Override
	public String toString() {
		return "AttachDto [fullName=" + fullName + ", num=" + num + ", regdt=" + regdt + "]";
	}
	
	
}
