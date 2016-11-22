package com.gclass.drone.mem.dto;

import java.util.Arrays;
import java.util.Date;

public class MnoPageDto {
	private int[] cateArray;
	private int startRowNum;
	private int endRowNum;
	private int nowPage;
	private int pagePerRow;
	private int totalRow;
	private int lastPage;
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
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int[] getCateArray() {
		return cateArray;
	}
	public void setCateArray(int[] cateArray) {
		this.cateArray = cateArray;
	}
	public int getStartRowNum() {
		return startRowNum;
	}
	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}
	public int getEndRowNum() {
		return endRowNum;
	}
	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getPagePerRow() {
		return pagePerRow;
	}
	public void setPagePerRow(int pagePerRow) {
		this.pagePerRow = pagePerRow;
	}
	public void setStartEnd(){
		startRowNum = (nowPage-1)*pagePerRow+1;
		endRowNum = nowPage*pagePerRow;
	}
	public int getTotalRow() {
		return totalRow;
	}
	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
		this.lastPage = (int)Math.ceil((double)totalRow/pagePerRow);
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	@Override
	public String toString() {
		return "MnoPageDto [cateArray=" + Arrays.toString(cateArray) + ", startRowNum=" + startRowNum + ", endRowNum="
				+ endRowNum + ", nowPage=" + nowPage + ", pagePerRow=" + pagePerRow + ", totalRow=" + totalRow
				+ ", lastPage=" + lastPage + ", mno=" + mno + ", niknm=" + niknm + ", siteno=" + siteno + ", siteid="
				+ siteid + ", email=" + email + ", pic=" + pic + ", license=" + license + ", msgrcyn=" + msgrcyn
				+ ", prmsg=" + prmsg + ", regcnt=" + regcnt + ", datcnt=" + datcnt + ", joacnt=" + joacnt + ", favcnt="
				+ favcnt + ", readcnt=" + readcnt + ", indt=" + indt + ", levno=" + levno + ", levpoint=" + levpoint
				+ ", locno=" + locno + ", ppose=" + ppose + ", levnm=" + levnm + ", levnic=" + levnic + ", locnm="
				+ locnm + ", mdrnm=" + mdrnm + ", actnm=" + actnm + "]";
	}
}
