package com.gclass.drone.map.dto;

import java.sql.Timestamp;

public class MemViewDto {
	private int mno;
	private String niknm;
	private int siteno;
	private String siteid;
	private String email;
	private String pic;
	private String license;
	private char msgrcyn;
	private String prmsg;
	private int regcnt;
	private int datcnt;
	private int joacnt;
	private int favcnt;
	private int readcnt;
	private Timestamp indt;
	private int levno;
	private int levpoint;
	private int locno;
	private char ppose;
	private String sido;
	private String sigungu;
	private String locnm;
	private double lat;
	private double lng;
	
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
	public int getSiteno() {
		return siteno;
	}
	public void setSiteno(int siteno) {
		this.siteno = siteno;
	}
	public String getSiteid() {
		return siteid;
	}
	public void setSiteid(String siteid) {
		this.siteid = siteid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public char getMsgrcyn() {
		return msgrcyn;
	}
	public void setMsgrcyn(char msgrcyn) {
		this.msgrcyn = msgrcyn;
	}
	public String getPrmsg() {
		return prmsg;
	}
	public void setPrmsg(String prmsg) {
		this.prmsg = prmsg;
	}
	public int getRegcnt() {
		return regcnt;
	}
	public void setRegcnt(int regcnt) {
		this.regcnt = regcnt;
	}
	public int getDatcnt() {
		return datcnt;
	}
	public void setDatcnt(int datcnt) {
		this.datcnt = datcnt;
	}
	public int getJoacnt() {
		return joacnt;
	}
	public void setJoacnt(int joacnt) {
		this.joacnt = joacnt;
	}
	public int getFavcnt() {
		return favcnt;
	}
	public void setFavcnt(int favcnt) {
		this.favcnt = favcnt;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Timestamp getIndt() {
		return indt;
	}
	public void setIndt(Timestamp indt) {
		this.indt = indt;
	}
	public int getLevno() {
		return levno;
	}
	public void setLevno(int levno) {
		this.levno = levno;
	}
	public int getLevpoint() {
		return levpoint;
	}
	public void setLevpoint(int levpoint) {
		this.levpoint = levpoint;
	}
	public int getLocno() {
		return locno;
	}
	public void setLocno(int locno) {
		this.locno = locno;
	}
	public char getPpose() {
		return ppose;
	}
	public void setPpose(char ppose) {
		this.ppose = ppose;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getSigungu() {
		return sigungu;
	}
	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
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
	
	public String getLocnm() {
		return locnm;
	}
	public void setLocnm(String locnm) {
		this.locnm = locnm;
	}
	@Override
	public String toString() {
		return "MemViewDto [mno=" + mno + ", niknm=" + niknm + ", siteno=" + siteno + ", siteid=" + siteid + ", email="
				+ email + ", pic=" + pic + ", license=" + license + ", msgrcyn=" + msgrcyn + ", prmsg=" + prmsg
				+ ", regcnt=" + regcnt + ", datcnt=" + datcnt + ", joacnt=" + joacnt + ", favcnt=" + favcnt
				+ ", readcnt=" + readcnt + ", indt=" + indt + ", levno=" + levno + ", levpoint=" + levpoint + ", locno="
				+ locno + ", ppose=" + ppose + ", sido=" + sido + ", sigungu=" + sigungu + ", locnm=" + locnm + ", lat="
				+ lat + ", lng=" + lng + "]";
	}
}
