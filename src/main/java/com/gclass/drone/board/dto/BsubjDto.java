package com.gclass.drone.board.dto;

import java.sql.Timestamp;

public class BsubjDto {
	private int bcateno;
	private int subjno;
	private String subjttl;
	private String subjctt;
	private int mno;
	private char delyn;
	private int memcnt;
	private Timestamp opendt;
	private int regcnt;
	
	public int getBcateno() {
		return bcateno;
	}
	public void setBcateno(int bcateno) {
		this.bcateno = bcateno;
	}
	public int getSubjno() {
		return subjno;
	}
	public void setSubjno(int subjno) {
		this.subjno = subjno;
	}
	public String getSubjttl() {
		return subjttl;
	}
	public void setSubjttl(String subjttl) {
		this.subjttl = subjttl;
	}
	public String getSubjctt() {
		return subjctt;
	}
	public void setSubjctt(String subjctt) {
		this.subjctt = subjctt;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public char getDelyn() {
		return delyn;
	}
	public void setDelyn(char delyn) {
		this.delyn = delyn;
	}
	public int getMemcnt() {
		return memcnt;
	}
	public void setMemcnt(int memcnt) {
		this.memcnt = memcnt;
	}
	public Timestamp getOpendt() {
		return opendt;
	}
	public void setOpendt(Timestamp opendt) {
		this.opendt = opendt;
	}
	public int getRegcnt() {
		return regcnt;
	}
	public void setRegcnt(int regcnt) {
		this.regcnt = regcnt;
	}

	@Override
	public String toString() {
		return "BsubjDto [bcateno=" + bcateno + ", subjno=" + subjno + ", subjttl=" + subjttl + ", subjctt=" + subjctt
				+ ", mno=" + mno + ", delyn=" + delyn + ", memcnt=" + memcnt + ", opendt=" + opendt + ", regcnt="
				+ regcnt + "]";
	}
}
