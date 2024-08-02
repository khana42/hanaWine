package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.MembrTestDto;


@Mapper
public interface MemberTestDao {
	 //@Insert("INSERT INTO Join_MEMBER (memberName, memberPw, memberMail, memberId, memberAddr1, memberPhone) " +
	         // "VALUES (#{memberName}, #{memberPw}, #{memberMail}, #{memberId}, #{memberAddr1}, #{memberPhone})")
	public void memberjoin(MembrTestDto memberTestDto);
	
	
}
