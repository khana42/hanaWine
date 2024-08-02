package com.proj.dao;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.WineDto;

@Mapper

public interface WineDao{
	public List<WineDto> daoWineListAll();
	public List<WineDto> daoWineList(String typeName);
    public List<WineDto> daoWineListFood(String foodName);
    public List<WineDto> daoWineListGrape(String grapename);
    public List<WineDto> daoWineListCountry(String nationName);
   
    
	
}


