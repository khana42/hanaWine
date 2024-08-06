package com.proj;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.prog.Pagination.Pagination;
import com.proj.dto.WineDto;
import com.proj.svc.SvcInface;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FrontController {
	
	@Autowired
	private MemManager memManager;

	@Autowired
	private DBConn dbConn;

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

	// @RequestMapping("/login")
	// public String login() {
	// return "login";
	// }

	// 목록 페이지
	@RequestMapping("/wine")
	public String root(

			@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model) throws Exception {
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
		if ("WHITEWINE".equals(cate)) {
			wineName = "WHITEWINE";
		} else if ("REDWINE".equals(cate)) {
			wineName = "1";
		} else if ("SPARKLING".equals(cate)) {
			wineName = "SPARKLING";
		}

		model.addAttribute("daoWineList", svcInface.svcList(cate));
		model.addAttribute("wineName", wineName.toUpperCase());

		return "subpage1";
	}

	@RequestMapping("/food")
	public String food(@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model) throws Exception {
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
		if ("소고기".equals(cate)) {
			wineName = "Beaf";
		} else if ("치즈".equals(cate)) {
			wineName = "Cheese";
		} else if ("양고기".equals(cate)) {
			wineName = "Lamb";
		}

		model.addAttribute("daoWineList", svcInface.svcListFood(cate));

		model.addAttribute("wineName", wineName.toUpperCase());

		return "subpage2";
	}

	@RequestMapping("/grape")
	public String grape(@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model)
			throws Exception {
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

		System.out.println(cate);
		model.addAttribute("daoWineList", svcInface.svcListGrape(cate));

		model.addAttribute("wineName", wineName.toUpperCase());

		return "subpage3";
	}

	@RequestMapping("/country")
	public String country(@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model)
			throws Exception {
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


	@RequestMapping("/adminPage")
	public String adminPage() {
		return "/Admin/adminPage";
	}

	// 목록페이지 리퀘스트 매핑
	@RequestMapping("/wineList")
	public String boardList(Model model) {
		model.addAttribute("mtdBoardList", dbConn.mtdBoardList());
		return "/Admin/wineList";
	}
	
	// 회원목록 페이지 리퀘스트 매핑
	@RequestMapping("/memList")
	public String memList(Model model) {
		model.addAttribute("memBoardList", memManager.memBoardList());
		return "/Admin/memList";
	}

	// 글입력양식
	@GetMapping("/winelistReg")
	public String writeForm() {
		return "/Admin/winelistReg";
	}

	// 글저장 리퀘스트 매핑
	@PostMapping("/winelistReg")
	public String boardWrite(HttpServletRequest req, Model model,

			@RequestParam("goodsImg") MultipartFile goodsImg, @RequestParam("recipe") MultipartFile recipe,
			@RequestParam("goodsInfo") MultipartFile goodsInfo) {

		try {
			req.setCharacterEncoding("UTF-8");

			String uploadDir = "D:\\spring/upload/";
			File dir = new File(uploadDir);
			if (!dir.exists()) {
				dir.mkdirs();
			}

			String goodsImgPath = saveFile(goodsImg, uploadDir);
			String recipePath = saveFile(recipe, uploadDir);
			String goodsInfoPath = saveFile(goodsInfo, uploadDir);

			String wineKrName = req.getParameter("wineKrName");
			String wineEgName = req.getParameter("wineEgName");
			String typeOfWine = req.getParameter("typeOfWine");
			String nation = req.getParameter("nation");
			String region = req.getParameter("region");
			String grape = req.getParameter("grape");
			double price = Double.parseDouble(req.getParameter("price"));
			double alcohol = Double.parseDouble(req.getParameter("alcohol"));
			double sweetness = Double.parseDouble(req.getParameter("sweetness"));
			double acidity = Double.parseDouble(req.getParameter("acidity"));
			double body = Double.parseDouble(req.getParameter("body"));
//	         String goodsImg = req.getParameter("goodsImg");
//	         String goodsInfo = req.getParameter("goodsInfo");
//	         String recipe = req.getParameter("recipe");


//	         dBConn.mtdBoardWrite(productNameKR, productNameEN, typeOfWine, grape, price, nation, region, alcohol, sweetness, acidity, body, goodsImg, goodsInfo, recipe);
			dbConn.mtdBoardWrite(wineKrName, wineEgName, typeOfWine, nation, region, grape, price, alcohol, sweetness,
					acidity, body, goodsImgPath, recipePath, goodsInfoPath);
		} catch (Exception e) {
			e.getMessage();
		}

		return "/Admin/winelistReg";
	}

	private String saveFile(MultipartFile file, String uploadDir) throws IOException {
		if (file != null && !file.isEmpty()) {
			String fileName = file.getOriginalFilename();
			String filePath = Paths.get(uploadDir, fileName).toString();
			file.transferTo(new File(filePath));
			return filePath;
		}
		return null;
	}

	// 내용보기 리퀘스트 매핑
	// @RequestMapping("/boardView")
	// public String boardView(
//	         HttpServletRequest req,
//	         Model model 
//	         ) {
//	      
//	      try {
//	         req.setCharacterEncoding("UTF-8");
//	         int num = Integer.parseInt(req.getParameter("num"));
//	         model.addAttribute("mtdBoardView", dBConn.mtdBoardView(num));
//	      } catch (Exception e) {
//	         // TODO: handle exception
//	      }
//	      
//	      return "";
	// }

	// 글삭제 리퀘스트 매핑
	@RequestMapping("/boardDelete")
	public String boardDelete(HttpServletRequest req) {

		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			dbConn.mtdBoardDelete(num);
		} catch (Exception e) {
			e.getMessage();
		}

		return "redirect:/wineList";
	}

	 @RequestMapping("/memListDelete")
	 public String memDelete(HttpServletRequest req) {
	      
	      try {
	         req.setCharacterEncoding("UTF-8");
	         String memberPhone = req.getParameter("memberPhone");
//	         int num = Integer.parseInt(req.getParameter("num"));
	         memManager.memBoardDelete(memberPhone);
	      } catch (Exception e) {
	         e.getMessage();
	      }
	      
	      return "redirect:/memList";
	 }

}
