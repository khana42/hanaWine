package com.proj.svc;

import java.util.List;
import java.util.Map;

import com.proj.Vo.Criteria;
import com.proj.dto.WineDto;

public interface SvcInface {
	public List<WineDto> svcList(String wineKind);

	public List<WineDto> svcListAll();

	public List<WineDto> svcListFood(String foodName);
	
	public List<Map<String, Object>> svcWineList(Criteria criteria);

	
}
