package com.proj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.dao.UserMapper;
import com.proj.dto.UserVO;
import com.proj.svc.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HanaController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserMapper userMapper;

	@GetMapping("/")
	public String root(HttpSession session) {

			return "main";
	}

	// 회원 목록 보기
	@RequestMapping("/userList")
	public String getUserList(Model model) {
		List<UserVO> userList = userService.getUserList();
		model.addAttribute("list", userList);
		return "userList";
	}
	
	//로그인
    @GetMapping("/login")
    public String index(HttpSession session) {
        if (userService.isLoggedIn(session)) {
            return "main"; // 로그인 상태면 메인 페이지로 이동
        } else {
            return "login"; // 로그인 되지 않았으면 로그인 페이지로 이동
        }
    }

	@PostMapping("/login")
    public String handleLogin(@RequestParam("uid") String uid,
                              @RequestParam("upw") String upw,
                              HttpSession session) {
        // 로그인 성공 여부 확인
        boolean loginResult = userService.login(uid, upw,session);

        if (loginResult) {
            // 세션에 사용자 정보 저장
            session.setAttribute("sUid", uid);
            
            return "main"; // 로그인 성공 시 메인 페이지로 리다이렉트
        } else {
            return "login"; // 로그인 실패 시 다시 로그인 페이지로 리다이렉트
        }
	}

	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
        if (session != null) {
		session.invalidate();
        }
		return "redirect:/main";
	}
	
	@RequestMapping("/logoutProc")
	public String logoutProc() {
		
		return "main";
	}
	
	//회원가입
	@RequestMapping("/join")
	public String join() {
		return "join";
	}

}
