package com.proj.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.SearchDao;
import com.proj.dao.UserMapper;
import com.proj.dto.WineDto;

@Service
public class SearchService {

	@Autowired
	private SearchDao searchDao;
	
	public WineDto goodsKind(String wineKind) {

		return searchDao.goodsKind(wineKind);
	}
}
