package com.proj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.WineDto;

@Mapper

public interface WineDao {
	public List<WineDto> daoWineListAll();
	public List<WineDto> daoWineList(String wineKind);
    public List<WineDto> daoWineListFood(String foodName);
    public List<WineDto> daoWineListGrape(String grapename);
    public List<WineDto> daoWineListCountry(String countryname);
    public List<WineDto> daoPriceHighList(@Param("sortByPrice") String sortByPrice);
    
	
}


