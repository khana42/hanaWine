package com.example.demo;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

// DAO
@Mapper
public interface DBConn {

	public List<DataBean> mtdBoardList();
	// 목록
	
	public DataBean mtdBoardView(int num);
	// 내용보기(=상세보기)
	
	public int mtdBoardWrite(
			String productNameKR,
			String productNameEN, 
			String typeOfWine, 
			String grape,
			String brand,
			int price,
			String nation,
			String nationDetail,
			String region,
			String goodsImg,
			String goodsInfo,
			String recipe);
	// 글저장
	
	public int mtdBoardDelete(int num);
	// 글삭제
	
}
