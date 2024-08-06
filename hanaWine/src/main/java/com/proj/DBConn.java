package com.proj;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.DataBean;

@Mapper
public interface DBConn {

	   public List<DataBean> mtdBoardList();
	   // ���
	   
	   public DataBean mtdBoardView(int num);
	   // ���뺸��(=�󼼺���)
	   
	   public int mtdBoardWrite(
	         @Param("wineKrName")String wineKrName,
	         @Param("wineEgName")String wineEgName, 
	         @Param("typeOfWine")String typeOfWine, 
	         @Param("nation")String nation,
	         @Param("region")String region,
	         @Param("grape")String grape,
	         @Param("price")double price,
	         @Param("alcohol")double alcohol,
	         @Param("sweetness")double sweetness,
	         @Param("acaidty")double acidity,
	         @Param("body")double body,   
	         @Param("goodsImg")String goodsImg, 
	         @Param("recipe")String recipe,
	         @Param("goodsInfo")String goodsInfo);
	   // ������

	   public int mtdBoardDelete(int num);
	   // �ۻ���
	   
}
