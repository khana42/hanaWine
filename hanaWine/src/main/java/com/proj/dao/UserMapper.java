package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.UserVO;

@Mapper
public interface UserMapper {

	//회원 목록
	List<UserVO> getUserID();
	// DB uid 가져오기
	UserVO getUserByUid(@Param("uid") String uid);
	
}
