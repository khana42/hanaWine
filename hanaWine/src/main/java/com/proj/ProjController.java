package com.proj;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjController {
	   @RequestMapping("/subpage11")
	   public String root_test() throws Exception {
	      return "subpage11";

	   }

	   

	   @RequestMapping("/productPage")
	   public String productPage() {
	      return "productPage";

	   }
	}