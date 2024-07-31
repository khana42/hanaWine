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
	public List<WineDto> svcList(String wineKind) {
	

		return wineDao.daoWineList(wineKind);
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
	public List<WineDto> svcListCountry(String countryname){
		
		return wineDao.daoWineListCountry(countryname);
	}
	

	@Override
	public List<WineDto> scvPriceHighList(@Param("sortByPrice") String sortByPrice) {

		return wineDao.daoPriceHighList(sortByPrice);
	}
}
