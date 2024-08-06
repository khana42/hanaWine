package com.proj.svc;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.dto.ProductPageDto;


public interface ProductPageSvc {
	
<<<<<<< HEAD
	List<ProductPageDto> getWineProduct(@RequestParam("wineKrName")String wineKrName); // 특정 와인 가져오기
=======
	public List<ProductPageDto> getWineProduct(@Param("wineKrName")String wineKrName); // 특정 와인 가져오기
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b

 
}