package com.proj.svc;

import java.util.List;

import com.proj.dto.UserVO;

import jakarta.servlet.http.HttpSession;

public interface UserServiceIf {
	public void memberjoin(UserVO userVO)throws Exception;

	public List<UserVO> getUserID();

	public boolean isLoggedIn(HttpSession session);

	public boolean login(String memberId, String memberPw, HttpSession session);
	
	 UserVO getUserByID(String memberId);
	
}
