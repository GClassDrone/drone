package com.gclass.drone.common;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMake {
	private int startPage;
	private int endPage;
	private int lastPage;
	private int totalCount;
	private int block;
	private boolean prev;
	private boolean next;
	private boolean first;
	private boolean last;
	private InitPage initPage;
	
	public PageMake(){
		this(1);
	}
	
	public PageMake(int block) {
		setBlock(block);
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	public int getBlock() {
		return block;
	}

	public void setBlock(int block) {
		this.block = block;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public boolean isFirst() {
		return first;
	}

	public void setFirst(boolean first) {
		this.first = first;
	}

	public boolean isLast() {
		return last;
	}

	public void setLast(boolean last) {
		this.last = last;
	}
	
	
	public InitPage getInitPage() {
		return initPage;
	}

	public void setInitPage(InitPage initPage) {
		this.initPage = initPage;
	}

	public void calcData(){
		endPage = (int) (Math.ceil(initPage.getPage() / (double) block) * block);
		startPage = (endPage - block) + 1;
		
		lastPage = (int) (Math.ceil(totalCount / (double) initPage.getPerPageNum()));
		
		if (endPage > lastPage){
			endPage = lastPage;
		}
		
		prev = startPage == 1 ? false : true;
		next = endPage * initPage.getPerPageNum() >= totalCount ? false : true;
		
		first = initPage.getPage() == 1 ? false : true;
		last =  initPage.getPage() == lastPage ? false : true;
	}
	
	public String makeQuery(int page){
		UriComponents uc = UriComponentsBuilder.newInstance()
						  .queryParam("page", page)
						  .queryParam("perPageNum", initPage.getPerPageNum())
						  .build();
							
		return uc.toUriString();
	}
	
	public String makeSearch(int page){
		UriComponents uc = UriComponentsBuilder.newInstance()
				  .queryParam("page", page)
				  .queryParam("perPageNum", initPage.getPerPageNum())
				  .queryParam("searchType", ((InitSearchPage) initPage).getSearchType())
				  .queryParam("keyWord", ((InitSearchPage) initPage).getKeyWord())
				  .build();
					
		return uc.toUriString();		
	}

	@Override
	public String toString() {
		return "PageMake [startPage=" + startPage + ", endPage=" + endPage + ", lastPage=" + lastPage + ", totalCount="
				+ totalCount + ", block=" + block + ", prev=" + prev + ", next=" + next + ", first=" + first + ", last="
				+ last + ", initPage=" + initPage + "]";
	}
	
	
}
