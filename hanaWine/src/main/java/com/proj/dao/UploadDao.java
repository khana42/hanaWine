package com.proj.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.UploadDto;

@Mapper
public interface UploadDao {

	public void upload(UploadDto uploadDto);
	
	void uploadWineAndFood(Map<String, Object> params);
}
