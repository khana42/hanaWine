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
import com.proj.dto.ProductPageDto;
import com.proj.dto.WineDto;
import com.proj.svc.ProductPageSvc;
import com.proj.svc.SvcInface;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FrontController {

	@Autowired
	private DBConn dbConn;

	@Autowired
	private SvcInface svcInface;

<<<<<<< HEAD
=======
	@Autowired
	private ProductPageSvc ProductPageSvc;

>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
	@RequestMapping("/")
	public String root() {
		return "main";
	}

<<<<<<< HEAD
	@RequestMapping("/join")
	public String join() {
		return "/join";
	}

	@RequestMapping("/Join02")
	public String join02() {
=======
	@RequestMapping("Join02")
	public String Join() {
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		return "Join02";
	}
//    
//	@RequestMapping("login")
//	public String login() {
//		return "login";
//	}

<<<<<<< HEAD
	// @RequestMapping("/login")
	// public String login() {
	// return "login";
	// }

	// 목록 페이지
	@RequestMapping("/wine")
	public String root(

			@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model) throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
=======
	// 목록 페이지
	@RequestMapping("/wine")
	public String root(@RequestParam(name = "winePage", defaultValue = "1") int curPage,
			@RequestParam(name = "order", defaultValue = "recent") String order, Model model) throws Exception {

		List<WineDto> allWines = svcInface.svcListAll(order);
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		Pagination pagination = new Pagination(allWines.size(), curPage);

		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);

		// model.addAttribute("list", paginatedWines);
		// model.addAttribute("listCnt", allWines.size());
		model.addAttribute("pagination", pagination);
		model.addAttribute("daoWineList", paginatedWines);
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
<<<<<<< HEAD
			wineName = "1";
=======
			wineName = "REDWINE";
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		} else if ("SPARKLING".equals(cate)) {
			wineName = "SPARKLING";
		}

		model.addAttribute("daoWineList", svcInface.svcList(cate));
		model.addAttribute("wineName", wineName.toUpperCase());

		return "subpage1";
	}

	@RequestMapping("/food")
<<<<<<< HEAD
	public String food(@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model) throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
=======
	public String food (@RequestParam(name = "winePage", defaultValue = "1") int curPage ,
	   @RequestParam(name = "order", defaultValue = "recent") String order, Model model) throws Exception {
		List<WineDto> allWines = svcInface.svcListAll(order);
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		Pagination pagination = new Pagination(allWines.size(), curPage);

		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);

<<<<<<< HEAD
		model.addAttribute("list", paginatedWines);
		model.addAttribute("listCnt", allWines.size());
=======
		// model.addAttribute("list", paginatedWines);
		// model.addAttribute("listCnt", allWines.size());
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		model.addAttribute("pagination", pagination);
		model.addAttribute("daoWineList", paginatedWines);
		String wineName = "FOOD";
		model.addAttribute("wineName", wineName); // 얘를 페이지에서 보여줘

		return "subpage2";
	}

	@RequestMapping("/food/{cate}")
	public String food(@PathVariable("cate") String cate, Model model) {

		String wineName = "";
<<<<<<< HEAD
		if ("소고기".equals(cate)) {
			wineName = "Beaf";
		} else if ("치즈".equals(cate)) {
			wineName = "Cheese";
		} else if ("양고기".equals(cate)) {
=======
		if ("Beaf".equals(cate)) {
			wineName = "Beaf";
		} else if ("Cheese".equals(cate)) {
			wineName = "Cheese";
		} else if ("Lamb".equals(cate)) {
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
			wineName = "Lamb";
		} else if ("Pasta".equals(cate)) {
			wineName = "Pasta";
		}

		model.addAttribute("daoWineList", svcInface.svcListFood(cate));

		model.addAttribute("wineName", wineName.toUpperCase());

		return "subpage2";
	}

	@RequestMapping("/grape")
<<<<<<< HEAD
	public String grape(@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model)
			throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
=======
	public String grape(@RequestParam(name = "order", defaultValue = "recent") String order,
			@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model) throws Exception {
		List<WineDto> allWines = svcInface.svcListAll(order);
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		Pagination pagination = new Pagination(allWines.size(), curPage);

		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);

<<<<<<< HEAD
		model.addAttribute("list", paginatedWines);
		model.addAttribute("listCnt", allWines.size());
=======
		// model.addAttribute("list", paginatedWines);
		// model.addAttribute("listCnt", allWines.size());
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		model.addAttribute("pagination", pagination);
		model.addAttribute("daoWineList", paginatedWines);
		String wineName = "GRAPE";
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
<<<<<<< HEAD
	public String country(@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model)
			throws Exception {
		List<WineDto> allWines = svcInface.svcListAll();
=======
	public String country(@RequestParam(name = "order", defaultValue = "recent") String order,
			@RequestParam(name = "winePage", defaultValue = "1") int curPage, Model model) throws Exception {
		List<WineDto> allWines = svcInface.svcListAll(order);
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		Pagination pagination = new Pagination(allWines.size(), curPage);

		int starIndex = pagination.getStartIndex();
		int endIndex = Math.min(starIndex + pagination.getPageSize(), allWines.size());
		List<WineDto> paginatedWines = allWines.subList(starIndex, endIndex);

<<<<<<< HEAD
		model.addAttribute("list", paginatedWines);
		model.addAttribute("listCnt", allWines.size());
=======
		// model.addAttribute("list", paginatedWines);
		// model.addAttribute("listCnt", allWines.size());
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
		model.addAttribute("pagination", pagination);
		model.addAttribute("daoWineList", paginatedWines);
		String wineName = "COUNTRY";
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

<<<<<<< HEAD

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
			String food = req.getParameter("food");
			double price = Double.parseDouble(req.getParameter("price"));
			double alcohol = Double.parseDouble(req.getParameter("alcohol"));
			double sweetness = Double.parseDouble(req.getParameter("sweetness"));
			double acidity = Double.parseDouble(req.getParameter("acidity"));
			double body = Double.parseDouble(req.getParameter("body"));
//	         String goodsImg = req.getParameter("goodsImg");
//	         String goodsInfo = req.getParameter("goodsInfo");
//	         String recipe = req.getParameter("recipe");


//	         dBConn.mtdBoardWrite(productNameKR, productNameEN, typeOfWine, grape, price, nation, region, alcohol, sweetness, acidity, body, goodsImg, goodsInfo, recipe);
			dbConn.mtdBoardWrite(wineKrName, wineEgName, typeOfWine, nation, region, grape, food, price, alcohol, sweetness,
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

	// @RequestMapping("/revise")
	// public String CommunityDelete(HttpServletRequest req) {
//	      
//	      try {
//	         req.setCharacterEncoding("UTF-8");
//	         int num = Integer.parseInt(req.getParameter("num"));
//	         memManager.mtdMemDelete(num);
//	      } catch (Exception e) {
//	         e.getMessage();
//	      }
//	      
//	      return "redirect:/Admin/revise";
	// }

=======
		@GetMapping("/productPage")
		public String productPageGet(@RequestParam("wineKrName") String wineKrName, Model model) {
	
			List<ProductPageDto> wineProducts = ProductPageSvc.getWineProduct(wineKrName);
	
			model.addAttribute("wineProducts", wineProducts.get(0));
	
			return "/productPage";
		}

		
		
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
}
