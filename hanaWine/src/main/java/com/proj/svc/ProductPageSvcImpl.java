package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.ProductPageDao;
import com.proj.dto.ProductPageDto;

@Service
public class ProductPageSvcImpl implements ProductPageSvc {

	@Autowired
	private ProductPageDao ProductPageDao;

	@Override
	public List<ProductPageDto> SvcList(int num) {
		return ProductPageDao.DaoList(num);

	}
}