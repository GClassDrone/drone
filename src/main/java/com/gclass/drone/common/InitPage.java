package com.gclass.drone.common;

public class InitPage {
	private int page;
	private int perPageNum;
	private int startRowNum;
	private int endRowNum;
	

	public InitPage() {
		this(1,8);
	}

	public InitPage(int page, int perPageNum) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
		setStartEnd();
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public int getStartRowNum() {
		return (page - 1) * perPageNum + 1;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return page * perPageNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}
	
	public void setStartEnd(){
		setStartRowNum((page - 1) * perPageNum + 1);
		setEndRowNum(page * perPageNum);
	}

	@Override
	public String toString() {
		return "InitPage [page=" + page + ", perPageNum=" + perPageNum + ", startRowNum=" + startRowNum + ", endRowNum="
				+ endRowNum + "]";
	}
	
	
	
}
