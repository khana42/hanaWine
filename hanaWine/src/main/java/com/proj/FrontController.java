package com.proj;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.prog.Pagination.Pagination;
import com.proj.dto.ProductPageDto;
import com.proj.dto.WineDto;
import com.proj.svc.ProductPageSvc;
import com.proj.svc.SvcInface;

@Controller
public class FrontController {
	@Autowired
	private SvcInface svcInface;
	@Autowired
	private ProductPageSvc ProductPageSvc;
	
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
	public String root(
		
			@RequestParam(name = "winePage" ,defaultValue = "1")int curPage,
			Model model)throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
		Pagination pagination = new Pagination(allWines.size(), curPage); 
		
		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		 List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);
	

		model.addAttribute("list", paginatedWines);
		model.addAttribute("listCnt", allWines.size());
		model.addAttribute("pagination", pagination);
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
			wineName = "REDWINE";
		}else if("SPARKLING".equals(cate)) {
			wineName = "SPARKLING";
		}
		
		model.addAttribute("daoWineList", svcInface.svcList(cate));
		model.addAttribute("wineName", wineName.toUpperCase());

		return "subpage1";
	}
	
	@RequestMapping("/food")
	public String food(
			@RequestParam(name = "winePage" ,defaultValue = "1")int curPage,
			Model model)throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
		Pagination pagination = new Pagination(allWines.size(), curPage); 
		
		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		 List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);
		
		model.addAttribute("list", paginatedWines);
		model.addAttribute("listCnt", allWines.size());
		model.addAttribute("pagination", pagination);
		model.addAttribute("daoWineList", svcInface.svcListAll());
		String wineName = "Food";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage2";
	}
	@RequestMapping("/food/{cate}")
	public String food(@PathVariable("cate") String cate, Model model) {
		
		String wineName = "";
		if("Beaf".equals(cate)) {
			wineName = "Beaf";
		}else if("Cheese".equals(cate)) {
			wineName = "Cheese";
		}else if("Lamb".equals(cate)) {
			wineName = "Lamb";
		}else if("Pasta".equals(cate)) {
			wineName = "Pasta";
		}
		
		model.addAttribute("daoWineList", svcInface.svcListFood(cate));
	
		model.addAttribute("wineName", wineName.toUpperCase());
	    
		return "subpage2";
	}


	@RequestMapping("/grape")
	public String grape(
			@RequestParam(name = "winePage" ,defaultValue = "1")int curPage,
			Model model)throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
		Pagination pagination = new Pagination(allWines.size(), curPage); 
		
		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		 List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);
		
		model.addAttribute("list", paginatedWines);
		model.addAttribute("listCnt", allWines.size());
		model.addAttribute("pagination", pagination);
		model.addAttribute("daoWineList", svcInface.svcListAll());
		String wineName = "Grape";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage3";
	}
	@RequestMapping("/grape/{cate}")
	public String grape(@PathVariable("cate") String cate, Model model) {
		
		String wineName = cate;

		
		model.addAttribute("daoWineList", svcInface.svcListGrape(cate));
	
		model.addAttribute("wineName", wineName.toUpperCase());
	    
		return "subpage3";
	}

	@RequestMapping("/country")
	public String country(
			@RequestParam(name = "winePage" ,defaultValue = "1")int curPage,
			Model model)throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
		Pagination pagination = new Pagination(allWines.size(), curPage); 
		
		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		 List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);
		
		model.addAttribute("list", paginatedWines);
		model.addAttribute("listCnt", allWines.size());
		model.addAttribute("pagination", pagination);
		model.addAttribute("daoWineList", svcInface.svcListAll());
		String wineName = "country";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage4";
		}
	@RequestMapping("/country/{cate}")
	public String country(@PathVariable("cate") String cate, Model model) {
		
		String wineName = cate;

		
		model.addAttribute("daoWineList", svcInface.svcListCountry(cate));
	
		model.addAttribute("wineName", wineName.toUpperCase());
	    
		return "subpage4";
	}
	@GetMapping("/productPage")
	public String productPageGet(
			@RequestParam("wineKrName")String wineKrName ,Model model) {
	
		
		ProductPageDto wineProduct = ProductPageSvc.getWineProduct(wineKrName);
		
		model.addAttribute("productPage", wineProduct);
		//model.addAttribute("getAllWines",ProductPageSvc.getAllWines()); //이건 왜 주는거야?
		return "/productPage";
	}
}

