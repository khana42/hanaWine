package com.proj.svc;

import java.util.List;


import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.WineDao;
import com.proj.dto.WineDto;

@Service
public class SvcImplet implements SvcInface {
	@Autowired
	WineDao wineDao;

	@Override
	public List<WineDto> svcList(String typeName) {
	

		return wineDao.daoWineList(typeName);
	}

	@Override
	public List<WineDto> svcListAll() {
		return wineDao.daoWineListAll();
	}

	@Override
	public List<WineDto> svcListFood(String foodName) {

		return wineDao.daoWineListFood(foodName);
		
	}

	@Override
	public List<WineDto> svcListGrape(String grapename) {
		
	

		return wineDao.daoWineListGrape(grapename);
	}
	@Override
	public List<WineDto> svcListCountry(String nationName){
		
		return wineDao.daoWineListCountry(nationName);
	}
	


}
