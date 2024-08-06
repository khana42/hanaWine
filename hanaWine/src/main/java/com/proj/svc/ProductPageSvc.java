package com.proj.svc;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.dto.ProductPageDto;


public interface ProductPageSvc {
	
	List<ProductPageDto> getWineProduct(@RequestParam("wineKrName")String wineKrName); // 특정 와인 가져오기

 
}