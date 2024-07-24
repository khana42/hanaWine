package com.proj.svc;

import java.util.List;

import com.proj.dto.WineDto;

public interface SvcInface {
	public List<WineDto> svcList(String wineKind);

	public List<WineDto> svcListAll();

	public List<WineDto> svcListFood(String foodName);
	
	

}
