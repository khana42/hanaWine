package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.ProductPageDto;

@Mapper
public interface ProductPageDao {
	ProductPageDto getWineByName(String wineKrName);
	
}
