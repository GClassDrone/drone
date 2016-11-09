package com.gclass.drone.mem.dto;

import java.util.Date;

public class MemDto {
	private int mno;
	private String niknm;
	private int siteno;
	private String siteid; 
	private String email;
	private String pic;
	private String license;
	private String msgrcyn;
	private String prmsg;
	private int regcnt;
	private int datcnt;
	private int joacnt;
	private int favcnt;
	private Date indt;
	private int levno;
	private int locno;
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
	public String getMsgrcyn() {
		return msgrcyn;
	}
	public void setMsgrcyn(String msgrcyn) {
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
	public Date getIndt() {
		return indt;
	}
	public void setIndt(Date indt) {
		this.indt = indt;
	}
	public int getLevno() {
		return levno;
	}
	public void setLevno(int levno) {
		this.levno = levno;
	}
	public int getLocno() {
		return locno;
	}
	public void setLocno(int locno) {
		this.locno = locno;
	}
	
	@Override
	public String toString() {
		return "MemDto [mno=" + mno + ", niknm=" + niknm + ", siteno=" + siteno + ", siteid=" + siteid + ", email="
				+ email + ", pic=" + pic + ", license=" + license + ", msgrcyn=" + msgrcyn + ", prmsg=" + prmsg
				+ ", regcnt=" + regcnt + ", datcnt=" + datcnt + ", joacnt=" + joacnt + ", favcnt=" + favcnt + ", indt="
				+ indt + ", levno=" + levno + ", locno=" + locno + "]";
	}

}
