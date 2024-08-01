package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.MembrTestDto;



@Mapper
public interface MemberTestDao {
    
	public List<MembrTestDto> daoMemberList(String uid);
	
	
}
