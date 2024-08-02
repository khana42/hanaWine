package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class NariController {
	
		@RequestMapping("/")
		public String index() {
			return "index";
		}
		
	
		@RequestMapping("/Join01")
		public String Join01() {	
			return "Join01";
		}
		
		@RequestMapping("/Join02")
		public String Join02() {	
			return "Join02";
		}

		
		@RequestMapping("/IDchk")
		public String IDchk() {	
			return "IDchk";
		}
		
	
}
