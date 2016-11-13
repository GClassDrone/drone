package com.gclass.drone.board.dto;

public class InitSearchPage extends InitPage {
	private String searchType;
	private String keyWord;
	
	public InitSearchPage() {
		super();
	}
	
	public InitSearchPage(int page, int perPageNum) {
		super(page, perPageNum);
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	@Override
	public String toString() {
		return "InitSearchPage [searchType=" + searchType + " keyWord=" + keyWord + " toString()=" + super.toString() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + "]";
	}
	
}
