package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class NariController {

	@RequestMapping("/")
	public String mtd() {
		return "cart";
	}
	
}
