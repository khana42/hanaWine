package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HanaController {

	@RequestMapping("/")
	public String root() {
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
}
