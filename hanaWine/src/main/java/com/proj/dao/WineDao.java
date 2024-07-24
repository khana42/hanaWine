package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.WineDto;

@Mapper
public interface WineDao {
	public List<WineDto> daoWineListAll();
	public List<WineDto> daoWineList(String wineKind);
    public List<WineDto> daoWineListFood(String foodName);
	
}
