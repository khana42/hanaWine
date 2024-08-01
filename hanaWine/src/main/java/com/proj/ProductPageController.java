package com.proj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.svc.ProductPageSvc;

@Controller
public class ProductPageController {
	@Autowired
	private ProductPageSvc ProductPageSvc;

	@RequestMapping("/productPage")
	public String list(Model model) {
		model.addAttribute("wineList", ProductPageSvc.SvcList(1));

		return "productPage";
	}
}