package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.proj.dao.UserMapper;

import com.proj.dto.UserVO;

import jakarta.servlet.http.HttpSession;

@Service
public class UserService implements UserServiceIf {

	@Autowired
	private UserMapper userMapper;

	@Override
	@Transactional
	public void memberjoin(UserVO userVO) throws Exception {
		userMapper.memberjoin(userVO);
	}

	// 회원 목록 보기
	public List<UserVO> getUserID() {

		List<UserVO> list = userMapper.getUserID();
		for (int i = 0; i < list.size(); i++) {
			UserVO uvo = list.get(i);

			System.out.println("memberName : " + uvo.getMemberName());
			System.out.println("memberId : " + uvo.getMemberId());
			System.out.println("memberPw : " + uvo.getMemberPw());
			System.out.println("memberMail : " + uvo.getMemberMail());
			System.out.println("memberAddr1 : " + uvo.getMemberAddr1());
			System.out.println("memberPhone : " + uvo.getMemberPhone());
			System.out.println("--------------------------");

		}
		return list;
	}

	// 로그인
	public boolean login(String memberId, String memberPw, HttpSession session) {
		if (memberId == null || memberPw == null) {
			return false; // 입력값이 null인 경우 로그인 실패
		}

		UserVO userVo = userMapper.getUserByUid(memberId);

		// userVo가 null인지 확인 후, id/pw 일치하면 로그인 성공
		if (userVo != null && userVo.getMemberId().equals(memberId) && userVo.getMemberPw().equals(memberPw)) {
			session.setAttribute("isLoggedIn", true);
			return true;
		}

		// 그 외의 경우는 로그인 실패
		return false;
	}

	public boolean isLoggedIn(HttpSession session) {
		Boolean isLoggedIn = (Boolean) session.getAttribute("isLoggedIn");
		return isLoggedIn != null && isLoggedIn;
		// return session.getAttribute("uid") != null;
	}

	// id로 user 데이터를 가져옴
	public UserVO getUserByID(String memberId) {
		return userMapper.getUserByUid(memberId);
	}

}
