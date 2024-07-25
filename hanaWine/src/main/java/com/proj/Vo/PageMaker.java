package com.proj.Vo;

public class PageMaker {

	private Criteria criteria;
	private int totalcount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 5;
	
	public Criteria getCriteria() {
		return criteria;
	}
	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
		calcData();
	}
private void calcData() {
	
	//끝 페이지 번호 = (현재 페이지 번호 / 화면에 보여질 페이지 번호의 갯수) * 화면에 보여질 페이지 번호의 갯수
	endPage=(int)(StrictMath.ceil(criteria.getPage()/(double)displayPageNum)*displayPageNum);
	
	//시작 페이지 번호 = (끝 페이지 번호 - 화면에 보여질 페이지 번호의 갯수) + 1
	startPage = (endPage - displayPageNum)+1;
	if(startPage <=0) startPage =1;
	//마지막 페이지 번호 = 총 게시글 수 / 한 페이지당 보여줄 게시글의 갯수
    int tempEndPage=(int)(StrictMath.ceil(totalcount/(double)criteria.getPerPageNum()));
    if(endPage > tempEndPage) {
	endPage = tempEndPage;
    }
  //이전 버튼 생성 여부 = 시작 페이지 번호 == 1 ? false : true
    //이전 버튼은 시작 페이지 번호가 1이 아니면 생기면 된다.
    
    prev = startPage == 1 ? false : true;
  //다음 버튼 생성 여부 = 끝 페이지 번호 * 한 페이지당 보여줄 게시글의 갯수 < 총 게시글의 수 ? true: false
    next = endPage*criteria.getPerPageNum()<totalcount ? true : false;
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
    public int getDisplayPageNum() {
    	return displayPageNum;
    }
    public void setDisplayPageNum(int displayPageNum) {
    	this.displayPageNum = displayPageNum;
    }

}


