package com.proj;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.MembrTestDto;

@Mapper
public interface MemManager {

	public List<MembrTestDto> memBoardList();
	
	public int memBoardWrite(
			@Param("memberName")String memberName,
		    @Param("memberId")String memberId, 
		    @Param("memberPw")String memberPw, 
		    @Param("memberMail")String memberMail,
		    @Param("memberAddr1")String memberAddr1,
		    @Param("memberPhone")String memberPhone);
		       
		// 글저장
	
	public int memBoardDelete(String memberPhone);
	   // 글삭제
}
