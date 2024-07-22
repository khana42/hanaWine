package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.dao.DAO;
import com.proj.dto.DTO;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HanaController {

	@RequestMapping("/")
	public String root() {
		return "main";
	}
	
	@RequestMapping("/join")
	public String join() {
		return "/login/join";
	}
	
	@Inject
	DAO dao;
	
	@RequestMapping("/login")
	public String login() {
		return "/login/login";
	}
	
	@RequestMapping("/loginProc")
	public String loginProc(DTO dto, Model model, HttpSession session) {
		boolean result = DAO

		
		return "/login/loginProc";
	}
}
