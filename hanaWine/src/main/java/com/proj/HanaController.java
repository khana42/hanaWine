package com.proj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proj.dao.UserMapper;

import com.proj.dto.UserVO;
import com.proj.dto.WineDto;

import com.proj.svc.UserServiceIf;
import com.proj.svc.WineService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HanaController {

	@Autowired
	private UserServiceIf userServiceIf;

	@Autowired
	private UserMapper userMapper;

	//	@Autowired
	//	private SearchService searchService;

	@Autowired
	private WineService wineService;
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
//	@RequestMapping("/wineList")
//	public String wineList() {
//		return "wineList";
//	}

	//회원가입
	@PostMapping("/members/register")
	public String register(@RequestParam(value = "memberName") String memberName,
			@RequestParam(value = "memberId") String memberId, @RequestParam(value = "memberPw") String memberPw,
			@RequestParam(value = "memberMail") String memberMail,
			@RequestParam(value = "addFull", required = false) String memberAddr1,
			@RequestParam(value = "fullNum") String fullNum, Model model) {

		try {
			UserVO userVO = new UserVO();
			userVO.setMemberName(memberName);
			userVO.setMemberId(memberId);
			userVO.setMemberPw(memberPw);
			userVO.setMemberMail(memberMail);
			userVO.setMemberAddr1(memberAddr1);
			userVO.setMemberPhone(fullNum);

			userServiceIf.memberjoin(userVO);

			model.addAttribute("message", "회원 가입이 완료되었습니다.");
			return "/login";
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
			return "error";
		}
	}



	// 로그인
<<<<<<< HEAD
//	@GetMapping("/login")
//	public String index(HttpServletRequest req) {
//		HttpSession session = req.getSession(false);
//		if (session != null && userServiceIf.isLoggedIn(session)) {
//
//			return "redirect:/"; // 로그인 상태면 메인 페이지로 이동
//		} else {
//			return "redirect:/"; // 로그인 되지 않았으면 로그인 페이지로 이동
//		}
//	}
	
	@PostMapping("/login")
	public String handleLogin(@RequestParam("memberId") String memberId, @RequestParam("memberPw") String memberPw,
			HttpServletRequest req,Model model) {
=======
	@PostMapping("/login")
	public String handleLogin(@RequestParam("memberId") String memberId, @RequestParam("memberPw") String memberPw,
			HttpServletRequest req, Model model) {
		
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		// 로그인 성공 여부 확인
		HttpSession session = req.getSession(); // 새로운 세션을 생성하거나 기존 세션을 가져옴
		boolean loginResult = userServiceIf.login(memberId, memberPw, session);

		if (loginResult) {
			// 세션에 사용자 정보 저장
			session.setAttribute("memberId", memberId);
			session.setMaxInactiveInterval(20);
			
			UserVO adminUser = userServiceIf.getUserByID("hanawineadmin"); // 관리자 아이디를 "hanawineadmin"으로 
			UserVO loggedInUser  = userServiceIf.getUserByID(memberId); // 로그인한 사용자 이름
			
			// 관리자 아이디와 비교
	        if (adminUser != null && loggedInUser != null && loggedInUser.getMemberId().equals(adminUser.getMemberId())) {
	            model.addAttribute("message", "관리자 권한으로 로그인했습니다.");
	            return "redirect:/admin"; // 관리자 페이지로 리다이렉트
	        }

			return "redirect:/"; // 로그인 성공 시 메인 페이지로

		} else {
			model.addAttribute("error", "아이디와 비밀번호가 일치하지 않습니다.");
<<<<<<< HEAD
			return ""; // 로그인 실패 시 다시 로그인 페이지로

=======
			return "login"; // 로그인 실패 시 다시 로그인 페이지로		
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		}
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();

		session.invalidate();
		return "redirect:/";
	}

	// 와인 종류 검색
	@GetMapping("/search")
	public String search(@RequestParam("keyword") String keyword, Model model) {
		List<WineDto> wines = wineService.searchWines(keyword);
		model.addAttribute("wines", wines);
		return "subpage11";
	}

	// 중복확인
	@PostMapping("/idChk")
	@ResponseBody
	public String idChk(@RequestParam("idchk") String idchk) {
		UserVO idChk = userServiceIf.getUserByID(idchk);
		if (ObjectUtils.isEmpty(idChk)) {
			
			return "ok";
		}
		return "no";
	}

	

}
