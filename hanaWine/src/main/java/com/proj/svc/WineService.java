package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.SearchDao;
import com.proj.dto.WineDto;

@Service
public class WineService {
	@Autowired
    private SearchDao searchDao;

    public List<WineDto> searchWines(String keyword) {
   
        return searchDao.searchWines(keyword);
    }
}
