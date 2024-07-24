package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.WineDao;
import com.proj.dto.WineDto;

@Service
public class SvcImplet implements SvcInface {
	@Autowired
	WineDao wineDao;
	
	@Override
	public List<WineDto> svcList(String wineKind) {
		  System.out.println(wineKind);
		  
		return wineDao.daoWineList(wineKind);
	}
	@Override
	public List<WineDto> svcListAll() {
		return wineDao.daoWineListAll();
	}


    @Override
    public List<WineDto> svcListFood(String foodName) {
    	 System.out.println(foodName);
		return wineDao.daoWineListFood(foodName);
	
	}	
}
