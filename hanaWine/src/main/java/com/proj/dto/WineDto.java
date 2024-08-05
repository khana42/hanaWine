package com.proj.dto;

import java.sql.Timestamp;

import lombok.Data;



@Data
public class WineDto  { 
	private int idx;
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

	

}