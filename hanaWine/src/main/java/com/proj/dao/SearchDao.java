package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.WineDto;

@Mapper
public interface SearchDao {
	
	/* 와인 종류 검색  */
	public WineDto goodsKind(String wineKind);
}
