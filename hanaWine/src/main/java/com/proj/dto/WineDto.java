package com.proj.dto;

import java.sql.Timestamp;


public class WineDto {

	
	private int idx;
	private String brand;
	private String wineKind;
	private String wineKrName;
	private String wineEnName;
	private String country;
	private String grape;
	private int price;
	private String img;  
	private Timestamp createTM;
	
	public String getWineKind() {
		return wineKind;
	}
	public void setWineKind(String wineKind) {
		this.wineKind = wineKind;
	}
	public String getWineKrName() {
		return wineKrName;
	}
	public void setWineKrName(String wineKrName) {
		this.wineKrName = wineKrName;
	}
	public String getWineEnName() {
		return wineEnName;
	}
	public void setWineEnName(String wineEnName) {
		this.wineEnName = wineEnName;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getGrape() {
		return grape;
	}
	public void setGrape(String grape) {
		this.grape = grape;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Timestamp getCreateTM() {
		return createTM;
	}
	public void setCreateTM(Timestamp createTM) {
		this.createTM = createTM;
	}

	
}
