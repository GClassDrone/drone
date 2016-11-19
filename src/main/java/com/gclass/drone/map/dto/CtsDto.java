package com.gclass.drone.map.dto;

import java.sql.Timestamp;

public class CtsDto {
	private int ctscateno;
	private int ctsno;
	private String ttl;
	private String ctt;
	private Timestamp regdt;
	private String filelk;
	private String pt;
	private double lat;
	private double lng;
	private int datcnt;
	private int joacnt;
	private int readcnt;
	private int favcnt;
	private int mno;
	private String delyn;
	private String niknm;
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
	public Timestamp getRegdt() {
		return regdt;
	}
	public void setRegdt(Timestamp regdt) {
		this.regdt = regdt;
	}
	public String getFilelk() {
		return filelk;
	}
	public void setFilelk(String filelk) {
		this.filelk = filelk;
	}
	public String getPt() {
		return pt;
	}
	public void setPt(String pt) {
		this.pt = pt;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public int getJoacnt() {
		return joacnt;
	}
	public void setJoacnt(int joacnt) {
		this.joacnt = joacnt;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public int getFavcnt() {
		return favcnt;
	}
	public void setFavcnt(int favcnt) {
		this.favcnt = favcnt;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getDelyn() {
		return delyn;
	}
	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}
	public String getNiknm() {
		return niknm;
	}
	public void setNiknm(String niknm) {
		this.niknm = niknm;
	}
	public int getDatcnt() {
		return datcnt;
	}
	public void setDatcnt(int datcnt) {
		this.datcnt = datcnt;
	}
	public String getRegtime() {
		return regtime;
	}
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	@Override
	public String toString() {
		return "CtsDto [ctscateno=" + ctscateno + ", ctsno=" + ctsno + ", ttl=" + ttl + ", ctt=" + ctt + ", regdt="
				+ regdt + ", filelk=" + filelk + ", pt=" + pt + ", lat=" + lat + ", lng=" + lng + ", datcnt=" + datcnt
				+ ", joacnt=" + joacnt + ", readcnt=" + readcnt + ", favcnt=" + favcnt + ", mno=" + mno + ", delyn="
				+ delyn + ", niknm=" + niknm + ", regtime=" + regtime + "]";
	}
}
