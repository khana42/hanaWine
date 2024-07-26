package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.UserMapper;
import com.proj.dto.UserVO;

import jakarta.servlet.http.HttpSession;



@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;

	//회원 목록 보기
    public List<UserVO> getUserList() {
    	
    	List<UserVO> list = userMapper.getUserList();
    	for (int i = 0; i < list.size(); i++) {
    		UserVO uvo = list.get(i);
    	
    		System.out.println("uname : " + uvo.getUname());
    		System.out.println("uid : " + uvo.getUid());
    		System.out.println("upw : " + uvo.getUpw());
    		System.out.println("email : " + uvo.getEmail());
    		System.out.println("phone : " + uvo.getPhone());
    		System.out.println("gender : " + uvo.getGender());
    		System.out.println("--------------------------");
			
		}
        return list;
    }
    
    //로그인
    public boolean login(String uid, String upw, HttpSession session) {
        UserVO userVo = userMapper.getUserByUid(uid);
        
        // uid/upw가 null이 아니고, id/pw 일치하면 로그인 성공
        if (userVo != null && userVo.getUid().equals(uid) && userVo.getUpw() != null && userVo.getUpw().equals(upw)) {
            return true;
        }
        
        // 그 외의 경우는 로그인 실패
        return false;
    }
    
    public boolean isLoggedIn(HttpSession session) {
    	return session.getAttribute("uid") != null;
    }
    
    
    //id로 user 데이터를 가져옴
    public UserVO getUserByID(String uid) {
    	return userMapper.getUserByUid(uid);
    }
    
}
