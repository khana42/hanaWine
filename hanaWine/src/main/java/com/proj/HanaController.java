package com.proj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.dao.UserMapper;
import com.proj.dto.SearchVO;
import com.proj.dto.UserVO;
import com.proj.svc.SearchService;
import com.proj.svc.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HanaController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private SearchService searchService;

	@GetMapping("/")
	public String root() {

		return "main";
	}

	@GetMapping("/login")
	public String login() {

		return "login";
	}

	// 회원 목록 보기
	@RequestMapping("/userList")
	public String getUserID(Model model) {
		List<UserVO> getUserID = userService.getUserID();
		model.addAttribute("list", getUserID);
		return "userList";
	}

	// 로그인
	@GetMapping("/main")
	public String index(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		if (session != null && userService.isLoggedIn(session)) {

			return "redirect:/"; // 로그인 상태면 메인 페이지로 이동
		} else {
			return "login"; // 로그인 되지 않았으면 로그인 페이지로 이동
		}
	}

	@PostMapping("/main")
	public String handleLogin(@RequestParam("uid") String uid, @RequestParam("upw") String upw,HttpServletRequest req) {
		// 로그인 성공 여부 확인
		HttpSession session = req.getSession(); // 새로운 세션을 생성하거나 기존 세션을 가져옴
		boolean loginResult = userService.login(uid, upw, session);

        if (loginResult) {
            // 세션에 사용자 정보 저장
            session.setAttribute("sUid", uid);
            session.setMaxInactiveInterval(20);
            
            return "main"; // 로그인 성공 시 메인 페이지로 
            
        } else {
        	
            return "login"; // 로그인 실패 시 다시 로그인 페이지로 
            
        }
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();

		session.invalidate();
		return "redirect:/";
	}

	// 회원가입
	@RequestMapping("/join")
	public String join() {
		return "join";
	}

	// 와인 종류 검색
	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)	
	public String getBoardList(Model model, @RequestParam(required = false) String keyword) throws Exception {				
		SearchVO search = new SearchVO();		
		search.setKeyword(keyword);				
		
		return "searchList";
	}
	
}
