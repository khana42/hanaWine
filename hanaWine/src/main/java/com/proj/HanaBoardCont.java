package com.proj;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.Board.HanaDao.HanaBoardDao;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class HanaBoardCont {
	@Autowired
	private HanaBoardDao boardDao;
	
	// 목록 페이지 리퀘스트 맵핑
	@RequestMapping("/boardList")
	public String boardList(Model model) {
		model.addAttribute("mtdBoardList", boardDao.mtdBoardList());
		return "BoardList";
	}
	
	// 글 입력 양식
	@RequestMapping("/writeForm")
	public String writeForm() {
		return "WriteForm";
	}	
	
	// 글 저장 리퀘스트 맵핑
	@RequestMapping("/boardWrite")
	public String boardWrite(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");
			String writer = req.getParameter("writer");
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("item1", writer);
			map.put("item2", title);
			map.put("item3", content);
			
			boardDao.mtdBoardWrite(map);

		} catch (Exception e) {
			e.getMessage();
		}
	
		
		return "redirect:boardList";
	}
	
	// 내용 보기 리퀘스트 맵핑
	@RequestMapping("/boardView")
	public String boardView(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			model.addAttribute("mtdBoardView", boardDao.mtdBoardView(num));
		} catch(Exception e) {
			e.getMessage();
		}
		return "BoardView";
		
	}
	
	// 글삭제 리퀘스트 매핑
	@RequestMapping("/boardDelete")
	public String boardDelete(HttpServletRequest req) {
		
		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			boardDao.mtdBoardDelete(num);
		} catch(Exception e) {e.getMessage();}
		
		return "redirect:BoardList";
	}
	
	
}