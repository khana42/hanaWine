package com.proj.dto;

import java.sql.Timestamp;

import lombok.Data;


public class WineDto {

	

	private	int idx;
	private String wineKrName;
	private String wineEgName;
	private String typeOfWine;
	private String nation;	    
	private String region;     
	private String grape;	    
	private Double price;       
	private Double alcohol;     
	private Double sweetness;
	private Double acidity;     
	private Double body;        
	private String goodsImg;    
	private String recipe;     
	private String goodsInfo;   
	private Timestamp createTM;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWineKrName() {
		return wineKrName;
	}
	public void setWineKrName(String wineKrName) {
		this.wineKrName = wineKrName;
	}
	public String getWineEgName() {
		return wineEgName;
	}
	public void setWineEgName(String wineEgName) {
		this.wineEgName = wineEgName;
	}
	public String getTypeOfWine() {
		return typeOfWine;
	}
	public void setTypeOfWine(String typeOfWine) {
		this.typeOfWine = typeOfWine;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getGrape() {
		return grape;
	}
	public void setGrape(String grape) {
		this.grape = grape;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getAlcohol() {
		return alcohol;
	}
	public void setAlcohol(Double alcohol) {
		this.alcohol = alcohol;
	}
	public Double getSweetness() {
		return sweetness;
	}
	public void setSweetness(Double sweetness) {
		this.sweetness = sweetness;
	}
	public Double getAcidity() {
		return acidity;
	}
	public void setAcidity(Double acidity) {
		this.acidity = acidity;
	}
	public Double getBody() {
		return body;
	}
	public void setBody(Double body) {
		this.body = body;
	}
	public String getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(String goodsImg) {
		this.goodsImg = goodsImg;
	}
	public String getRecipe() {
		return recipe;
	}
	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}
	public String getGoodsInfo() {
		return goodsInfo;
	}
	public void setGoodsInfo(String goodsInfo) {
		this.goodsInfo = goodsInfo;
	}
	public Timestamp getCreateTM() {
		return createTM;
	}
	public void setCreateTM(Timestamp createTM) {
		this.createTM = createTM;
	}  


}