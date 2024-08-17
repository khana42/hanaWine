package com.proj.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.AdminJoinDao;
import com.proj.dto.AdminJoin;
import com.proj.dto.UserVO;

import jakarta.servlet.http.HttpSession;

@Service
public class AdminJoinSvc implements AdminJoinSvcIf {
	@Autowired
	AdminJoinDao adminJoinDao;
@Override
public void adminJoin(AdminJoin adminJoin) throws Exception{
	adminJoinDao.adminJoin(adminJoin);
	}
	// 로그인
		public boolean adminlogin(String admin_id, String admin_password, HttpSession session) {
			if (admin_id == null || admin_password == null) {
				return false; // 입력값이 null인 경우 로그인 실패
			}

			AdminJoin adminJoin = adminJoinDao.adminLoginId(admin_id);

			
			if (adminJoin != null) {
				if (adminJoin.getAdmin_id().equals(admin_id) && 
			            adminJoin.getAdmin_password().equals(admin_password)) {
			            session.setAttribute("isLoggedIn", true); // 로그인 성공 시 세션에 설정
			            return true;
			}
			}	
			// 그 외의 경우는 로그인 실패
			return false;
		}

		public boolean isLoggedIn(HttpSession session) {
			Boolean isLoggedIn = (Boolean) session.getAttribute("isLoggedIn");
			return isLoggedIn != null && isLoggedIn;
			// return session.getAttribute("uid") != null;
		}
		@Override
		public AdminJoin adminJoin(String admin_id) {
			// TODO Auto-generated method stub
			return null;
		}
		

}
