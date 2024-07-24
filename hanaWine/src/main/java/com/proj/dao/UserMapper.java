package com.proj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.UserVO;

@Mapper
public interface UserMapper {

	//회원 목록
		List<UserVO> getUserList();
		//id 가져오기
		UserVO getUserByUid(String uid);
}
