package com.proj.dao;

import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.UploadDto;

@Mapper
public interface UploadDao {

	public void upload(UploadDto uploadDto);
}
