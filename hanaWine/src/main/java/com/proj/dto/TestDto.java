package com.proj.dto;

import org.springframework.web.multipart.MultipartFile;

public class TestDto {
	private String wineKrName;
	private String wineEgName;
	private String typeOfWine;
	private String nation;
	private String region;
	private String grape;
	private double price;
	private double alcohol;
	private double sweetness;
	private double acidity;
	private double body;
	private MultipartFile goodsImg;
	private MultipartFile recipe;
	private MultipartFile goodsInfo;
	private int wineIdx;
	private int foodIdx;	
	
	public int getWineIdx() {
		return wineIdx;
	}
	public void setWineIdx(int wineIdx) {
		this.wineIdx = wineIdx;
	}
	public int getFoodIdx() {
		return foodIdx;
	}
	public void setFoodIdx(int foodIdx) {
		this.foodIdx = foodIdx;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getAlcohol() {
		return alcohol;
	}
	public void setAlcohol(double alcohol) {
		this.alcohol = alcohol;
	}
	public double getSweetness() {
		return sweetness;
	}
	public void setSweetness(double sweetness) {
		this.sweetness = sweetness;
	}
	public double getAcidity() {
		return acidity;
	}
	public void setAcidity(double acidity) {
		this.acidity = acidity;
	}
	public double getBody() {
		return body;
	}
	public void setBody(double body) {
		this.body = body;
	}
	public MultipartFile getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(MultipartFile goodsImg) {
		this.goodsImg = goodsImg;
	}
	public MultipartFile getRecipe() {
		return recipe;
	}
	public void setRecipe(MultipartFile recipe) {
		this.recipe = recipe;
	}
	public MultipartFile getGoodsInfo() {
		return goodsInfo;
	}
	public void setGoodsInfo(MultipartFile goodsInfo) {
		this.goodsInfo = goodsInfo;
	}
	
}
