package com.proj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proj.svc.SvcImplet;
import com.proj.svc.SvcInface;

@Controller
public class FrontController {
	@Autowired
	private SvcInface svcInface;
	
	@RequestMapping("/")
	public	@ResponseBody	String	root()	{
	return	"Prn	OK!";
	}
//		목록	페이지
	@RequestMapping("/wine")
	public	String	list(Model	model)	{
	model.addAttribute("daoWineList", svcInface.svcList());
		return	"subpage1";
	}

}
