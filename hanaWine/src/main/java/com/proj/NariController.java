package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NariController {

	@RequestMapping("/Join01")
	public String idchk() {		
		return "Join01";
	}

	
	@RequestMapping("/Join02")
	public String join02() {
		return "Join02";
	}
	
	@RequestMapping("/IDchk")
	public String IDchk() {
		return "IDchk";
	}
	
	
}