package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NariController {

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/")
	public String test() {
		return "test";
	}
	
	@RequestMapping("/Join02")
	public String join02() {
		return "Join02";
	}
	
	@RequestMapping("/Join01")
	public String idchk() {		
		return "Join01";
	}
	
}
