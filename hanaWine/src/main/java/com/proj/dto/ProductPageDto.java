package com.proj.dto;

import lombok.Data;

@Data
public class ProductPageDto {
	
	private int num;
	private String brand;
	private String typeOfWine;
	private String grape;
	private String nation;
	private String region;
	private String productNameKR;
	private String productNameEN;
	private int price;
	private double alcohol;
	private int sweetness;
	private int acidity;
	private int body;
	private String recipe;

}