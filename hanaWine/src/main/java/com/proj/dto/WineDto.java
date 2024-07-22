package com.proj.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class WineDto {

	
	private int idx;
	private int brand;
	private int country;
	private int grape;
	private int price;
	private String img;  
	private Timestamp createTM;
}
