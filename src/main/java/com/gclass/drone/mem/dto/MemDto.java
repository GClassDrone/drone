package com.gclass.drone.mem.dto;

import java.sql.Timestamp;
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
	private int readcnt;
	private Date indt;
	private int levno;
	private int levpoint;
	private int locno;
	private char ppose;
	private String levnm;
	private String levnic;
	private String locnm;
	private String mdrnm;
	private String actnm;
	private int rnum;
	/*게시판 관련 dto들*/
	private int bcateno;
	private int subjno;
	private String subjttl;
	private String subjctt;
	private Timestamp opendt;
	/*콘텐츠 관련 dto들*/
	
	
	
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
	public Timestamp getOpendt() {
		return opendt;
	}
	public void setOpendt(Timestamp opendt) {
		this.opendt = opendt;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
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
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
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
	public String getLevnm() {
		return levnm;
	}
	public void setLevnm(String levnm) {
		this.levnm = levnm;
	}
	public String getLevnic() {
		return levnic;
	}
	public void setLevnic(String levnic) {
		this.levnic = levnic;
	}
	public String getLocnm() {
		return locnm;
	}
	public void setLocnm(String locnm) {
		this.locnm = locnm;
	}
	public String getMdrnm() {
		return mdrnm;
	}
	public void setMdrnm(String mdrnm) {
		this.mdrnm = mdrnm;
	}
	public String getActnm() {
		return actnm;
	}
	public void setActnm(String actnm) {
		this.actnm = actnm;
	}
	@Override
	public String toString() {
		return "MemDto [mno=" + mno + ", niknm=" + niknm + ", siteno=" + siteno + ", siteid=" + siteid + ", email="
				+ email + ", pic=" + pic + ", license=" + license + ", msgrcyn=" + msgrcyn + ", prmsg=" + prmsg
				+ ", regcnt=" + regcnt + ", datcnt=" + datcnt + ", joacnt=" + joacnt + ", favcnt=" + favcnt
				+ ", readcnt=" + readcnt + ", indt=" + indt + ", levno=" + levno + ", levpoint=" + levpoint + ", locno="
				+ locno + ", ppose=" + ppose + ", levnm=" + levnm + ", levnic=" + levnic + ", locnm=" + locnm
				+ ", mdrnm=" + mdrnm + ", actnm=" + actnm + ", rnum=" + rnum + ", bcateno=" + bcateno + ", subjno="
				+ subjno + ", subjttl=" + subjttl + ", subjctt=" + subjctt + ", opendt=" + opendt + "]";
	}
	
}
