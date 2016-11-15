package com.gclass.drone.category.dto;

import java.util.Arrays;

public class CatePageDto {
	private int[] cateArray;
	private int startRowNum;
	private int endRowNum;
	private int nowPage;
	private int pagePerRow;
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
	@Override
	public String toString() {
		return "CatePageDto [cateArray=" + Arrays.toString(cateArray) + ", startRowNum=" + startRowNum + ", endRowNum="
				+ endRowNum + ", nowPage=" + nowPage + ", pagePerRow=" + pagePerRow + "]";
	}
}
