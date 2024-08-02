package com.proj.svc;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.dto.ProductPageDto;


public interface ProductPageSvc {
	
	ProductPageDto getWineProduct(@Param("wineKrName")String wineKrName); // 특정 와인 가져오기

 
}