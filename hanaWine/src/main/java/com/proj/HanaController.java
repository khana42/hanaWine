package com.proj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.dao.UserMapper;
import com.proj.dto.UserVO;
import com.proj.svc.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HanaController {

	@Autowired
    private UserService userService;
	
	@Autowired
	private UserMapper userMapper;

	@RequestMapping("/")
	public String root(HttpSession session, Model model) {
		String id =(String) session.getAttribute("uid");
		if(id != null) {
			UserVO userVO = userService.getUserByID(id);
			model.addAttribute("user",userVO);
			return "main";
		}
		return "main";
	}
	
	@RequestMapping("/join")
	public String join() {
		return "join";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/userList")
    public String getUserList(Model model) {
        List<UserVO> userList = userService.getUserList();
        model.addAttribute("list", userList);
        return "userList";
	}
	
	@RequestMapping("/loginProc")
	public String loginProc() {
		return "loginProc";
	}
    
	@GetMapping("/loginForm")
	public String toLoginPage(HttpSession session) {
		//로그인 페이지
		
		
		
		
		String id = (String)session.getAttribute("uid");
		if(id != null) {
			//로그인 상태
			return "main";
		}
		//로그인되지 않은 상태
		return "login";
	}
	
	@PostMapping("/loginForm")
	public String login(String uid, String upw, HttpSession session) {
		//로그인
		String id = userService.login(uid, upw);
		if(id == null) {
			//로그인 실패
			return "login";
		}
		session.setAttribute("uid", id);
		return "main";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "main";
	}
}

