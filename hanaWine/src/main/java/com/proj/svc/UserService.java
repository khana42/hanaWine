package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.UserMapper;
import com.proj.dto.UserVO;



@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;

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
    
    public String login(String uid, String upw) {
    	UserVO userVo = userMapper.getUserByUid(uid);
    	if(userVo.getUpw().equals(upw)) {
    		return userVo.getUid();
    	}
    	return null;
    }
    
    //id로 user 데이터를 가져옴
    public UserVO getUserByID(String uid) {
    	return userMapper.getUserByUid(uid);
    }
}
