package com.gclass.drone.iboard.dto;

import java.sql.Timestamp;

public class IBoardDto {

	private int subjno;
	private int bno;
	private int mno;
	private String ttl;
	private String ctt;
	private int readcnt;
	private String upfile;
	private Timestamp regdt;
	private char delyn;
	private String niknm;
	private String newyn;
	private String regdtout;
	private String subjctt;
	private String subjttl;
	
	public String getSubjctt() {
		return subjctt;
	}


	public void setSubjctt(String subjctt) {
		this.subjctt = subjctt;
	}


	public String getSubjttl() {
		return subjttl;
	}


	public void setSubjttl(String subjttl) {
		this.subjttl = subjttl;
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


	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
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


	public char getDelyn() {
		return delyn;
	}


	public void setDelyn(char delyn) {
		this.delyn = delyn;
	}


	public String getNiknm() {
		return niknm;
	}


	public void setNiknm(String niknm) {
		this.niknm = niknm;
	}


	public String getNewyn() {
		return newyn;
	}


	public void setNewyn(String newyn) {
		this.newyn = newyn;
	}


	public String getRegdtout() {
		return regdtout;
	}


	public void setRegdtout(String regdtout) {
		this.regdtout = regdtout;
	}

	@Override
	public String toString() {
		return "IBoardDto [subjno=" + subjno + ", bno=" + bno + ", mno=" + mno + ", ttl=" + ttl + ", ctt=" + ctt
				+ ", readcnt=" + readcnt + ", upfile=" + upfile + ", regdt=" + regdt + ", delyn=" + delyn + ", niknm="
				+ niknm + ", newyn=" + newyn + ", regdtout=" + regdtout + ", subjctt=" + subjctt + ", subjttl="
				+ subjttl + "]";
	}
}
