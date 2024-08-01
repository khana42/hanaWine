package com.proj.svc;

import java.util.List;

import com.proj.dto.ProductPageDto;

public interface ProductPageSvc {
	List <ProductPageDto> SvcList(int num);
}
