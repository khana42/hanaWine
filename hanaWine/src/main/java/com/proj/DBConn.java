package com.proj;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.DataBean;

@Mapper
public interface DBConn {

	   public List<DataBean> mtdBoardList();
	   // 목록
	   
	   public DataBean mtdBoardView(int num);
	   // 내용보기(=상세보기)
	   
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
	   // 글저장

	   public int mtdBoardDelete(int num);
	   // 글삭제
	   
}
