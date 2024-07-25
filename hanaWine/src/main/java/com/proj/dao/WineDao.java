package com.proj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.proj.Vo.Criteria;
import com.proj.dto.WineDto;

@Mapper
@SuppressWarnings("unchecked")
public interface WineDao {
	public List<WineDto> daoWineListAll();
	public List<WineDto> daoWineList(String wineKind);
    public List<WineDto> daoWineListFood(String foodName);
    public List<Map<String, Object>> daoWinePageList(Criteria criteria);
    
	
}


