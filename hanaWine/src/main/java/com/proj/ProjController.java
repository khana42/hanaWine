package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ProjController {
	
	@RequestMapping("/")
    public String root_test() throws Exception{
        return "subpage1";

	}
	@RequestMapping("/productPage")
	public String productPage() {
		return "productPage";
	
	}}
