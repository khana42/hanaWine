package com.example.demo;

import java.sql.Timestamp;

import lombok.Data;
// DTO

@Data
public class DataBean {
       
   private int num;
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
   private String goodsImg;
   private String recipe;
   private String goodsInfo;
   private Timestamp createTM;

}
