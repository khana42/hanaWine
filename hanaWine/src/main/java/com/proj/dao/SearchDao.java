package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.WineDto;



@Mapper
public interface SearchDao {
	public List<WineDto> searchWines(@Param("keyword") String keyword);
	
	
}
