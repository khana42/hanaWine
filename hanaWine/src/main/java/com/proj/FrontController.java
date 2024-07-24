package com.proj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.svc.SvcInface;

@Controller
public class FrontController {
	@Autowired
	private SvcInface svcInface;

	@RequestMapping("/")
	public String root() {
		return "/main";
	}

	@RequestMapping("/join")
	public String join() {
		return "/join";
	}

	@RequestMapping("/Join02")
	public String join02() {
		return "Join02";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	//목록	페이지
	@RequestMapping("/wine")
	public String root(Model model) {
		model.addAttribute("daoWineList", svcInface.svcListAll());
		String wineName = "WINE";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage1";
	}
	
	@RequestMapping("/wine/{cate}")
	public String wine(@PathVariable("cate") String cate, Model model) {
		String wineName = "";
		if("WHITEWINE".equals(cate)) {
			wineName = "WHITEWINE";
		}else if("REDWINE".equals(cate)) {
			wineName = "1";
		}else if("SPARKLING".equals(cate)) {
			wineName = "SPARKLING";
		}
		
		model.addAttribute("daoWineList", svcInface.svcList(cate));
		model.addAttribute("wineName", wineName.toUpperCase());

		return "subpage1";
	}

	@RequestMapping("/food")
	public String root1(Model model) {
		model.addAttribute("daoWineList", svcInface.svcListAll());
		String wineName = "";
		wineName = "Food";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage2";
	}
	@RequestMapping("/food/{cate}")
	public String food(@PathVariable("cate") String cate, Model model) {
		
		String wineName = "";
		if("소고기".equals(cate)) {
			wineName = "Beaf";
		}else if("치즈".equals(cate)) {
			wineName = "Cheese";
		}else if("양고기".equals(cate)) {
			wineName = "Lamb";
		}
		
		model.addAttribute("daoWineList", svcInface.svcListFood(cate));
	
		model.addAttribute("wineName", wineName.toUpperCase());
	    
		return "subpage2";
	}


	@RequestMapping("/grape")
	public String root2(Model model) {
		model.addAttribute("daoWineList", svcInface.svcListAll());
		String wineName = "";
		wineName = "Grape";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage3";
	}

	@RequestMapping("/country")
	public String root3(Model model) {
		model.addAttribute("daoWineList", svcInface.svcListAll());
		String wineName = "";
		wineName = "Country";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage4";
	}
	
}

