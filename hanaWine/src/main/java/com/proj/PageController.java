package com.proj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.dto.WineDto;
import com.proj.svc.SvcInface;

@Controller
public class PageController {
@Autowired
private SvcInface svcImplet;	
@RequestMapping(value="winePage.do")
public String winePage(@ModelAttribute("wineDto")WineDto wineDto)

}
