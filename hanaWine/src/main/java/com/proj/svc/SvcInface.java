package com.proj.svc;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.dto.WineDto;

public interface SvcInface {

	public List<WineDto> svcListAll();

	public List<WineDto> svcList(String typeName);
	public List<WineDto> svcListFood(String foodName);
	public List<WineDto> svcListGrape(String grapename);
	public List<WineDto> svcListCountry(String nationName);

	

	
}
