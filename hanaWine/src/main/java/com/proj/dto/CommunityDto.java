package com.proj.dto;

public class CommunityDto {

	private int notiNum;
	private String notiDate;
	private String notiTit;
	private String notiCon;
	
	public int getNotiNum() {
		return notiNum;
	}
	public void setNotiNum(int notiNum) {
		this.notiNum = notiNum;
	}
	public String getNotiDate() {
		return notiDate;
	}
	public void setNotiDate(String notiDate) {
		this.notiDate = notiDate;
	}
	public String getNotiTit() {
		return notiTit;
	}
	public void setNotiTit(String notiTit) {
		this.notiTit = notiTit;
	}
	public String getNotiCon() {
		return notiCon;
	}
	public void setNotiCon(String notiCon) {
		this.notiCon = notiCon;
	}
	
	private int faqNum;
	private String faqQues;
	private String faqAnsw;

	public int getFaqNum() {
		return faqNum;
	}
	public void setFaqNum(int faqNum) {
		this.faqNum = faqNum;
	}
	public String getFaqQues() {
		return faqQues;
	}
	public void setFaqQues(String faqQues) {
		this.faqQues = faqQues;
	}
	public String getFaqAnsw() {
		return faqAnsw;
	}
	public void setFaqAnsw(String faqAnsw) {
		this.faqAnsw = faqAnsw;
	}
	
}
