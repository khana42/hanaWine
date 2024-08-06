package com.proj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.UploadDto;

@Mapper
public interface UploadDao {

	public void upload(UploadDto uploadDto);
	public List<UploadDto>AdminWineList();
	void uploadWineAndFood(Map<String, Object> params);
	int AdminWineDel(@Param("num") int num);
}
