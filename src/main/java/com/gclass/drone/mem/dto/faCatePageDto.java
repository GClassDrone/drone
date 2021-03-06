package com.gclass.drone.mem.dto;

import java.util.Arrays;

public class faCatePageDto {
	private int[] cateArray;
	private int startRowNum;
	private int endRowNum;
	private int nowPage;
	private int pagePerRow;
	private int totalRow;
	private int lastPage;
	private int mno;
	private int ctscateno;
	private int ctsno;
	private int fno;
	private char fgubun;
	private String ttl;
	private String ctt;
	private String filelk;
	
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public char getFgubun() {
		return fgubun;
	}
	public void setFgubun(char fgubun) {
		this.fgubun = fgubun;
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
	public String getFilelk() {
		return filelk;
	}
	public void setFilelk(String filelk) {
		this.filelk = filelk;
	}
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
		return "faCatePageDto [cateArray=" + Arrays.toString(cateArray) + ", startRowNum=" + startRowNum
				+ ", endRowNum=" + endRowNum + ", nowPage=" + nowPage + ", pagePerRow=" + pagePerRow + ", totalRow="
				+ totalRow + ", lastPage=" + lastPage + ", mno=" + mno + ", ctscateno=" + ctscateno + ", ctsno=" + ctsno
				+ ", fno=" + fno + ", fgubun=" + fgubun + ", ttl=" + ttl + ", ctt=" + ctt + ", filelk=" + filelk + "]";
	}
}
