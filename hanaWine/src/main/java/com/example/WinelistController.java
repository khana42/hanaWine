package com.example;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.DBConn;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class WinelistController {


	@Autowired
	private DBConn dBConn;
	
	// 메인페이지 리퀘스트 매핑
	@RequestMapping("/")
	public String Root() throws Exception {
		//return "test";
		return "redirect:/Admin/winelistReg";
	}
	
	// 목록페이지 리퀘스트 매핑
	@RequestMapping("/Admin/wineList")
	public String boardList(Model model) {
		model.addAttribute("mtdBoardList", dBConn.mtdBoardList());
		return "/Admin/wineList";
	}
	
	// 글입력양식 
	@RequestMapping("/Admin/winelistReg")
	public String writeForm() {
		return "/Admin/winelistReg";
	}
	
	//글저장 리퀘스트 매핑
	@RequestMapping("/Admin/insert")
	public String boardWrite(
			HttpServletRequest req,
			Model model
			) {
		
		try {
			req.setCharacterEncoding("UTF-8");
			String productNameKR = req.getParameter("productNameKR");	
			String productNameEN = req.getParameter("productNameEN");
			String typeOfWine = req.getParameter("typeOfWine");
			String grape = req.getParameter("grape");
			String brand = req.getParameter("brand");
			int price = Integer.parseInt(req.getParameter("price"));
			String nation = req.getParameter("nation");
			String nationDetail = req.getParameter("nationDetail");
			String region = req.getParameter("region");
			String goodsImg = req.getParameter("goodsImg");
			String goodsInfo = req.getParameter("goodsInfo");
			String recipe = req.getParameter("recipe");
			
			dBConn.mtdBoardWrite(productNameKR, productNameEN, typeOfWine, grape, brand, price, nation, nationDetail, region, goodsImg, goodsInfo, recipe);
		} catch(Exception e) {
			e.getMessage();
		}
		
		
		return "redirect:winelistReg";
	}
	
	
	// 내용보기 리퀘스트 매핑
//	@RequestMapping("/boardView")
//	public String boardView(
//			HttpServletRequest req,
//			Model model 
//			) {
//		
//		try {
//			req.setCharacterEncoding("UTF-8");
//			int num = Integer.parseInt(req.getParameter("num"));
//			model.addAttribute("mtdBoardView", dBConn.mtdBoardView(num));
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		
//		return "";
//	}
	
	//글삭제 리퀘스트 매핑
	@RequestMapping("/boardDelete")
	public String boardDelete(HttpServletRequest req) {
		
		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			dBConn.mtdBoardDelete(num);
		} catch (Exception e) {
			e.getMessage();
		}
		
		return "redirect:/Admin/wineList";
	}
	

}

