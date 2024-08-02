package com.proj;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.qboard.dao.QboardDao;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class QboardController {

	@Autowired
	private QboardDao qboardDao;

	// qBoardList.jsp 로 이동
	//@RequestMapping("/")
	//public String qBoard() {
	//	return "qBoardList";
	//}

	// qWriteForm.jsp 로 이동
	@RequestMapping("/qWriteForm")
	public String qWriteForm() {
		return "qWriteForm";
	}

	// qWriteForm.jsp 에서 작성한 내용 DB에 저장
	@RequestMapping("/qBoardWrite")
	public String qBoardWrite(HttpServletRequest req, Model model) {
		try {

			req.setCharacterEncoding("UTF-8");
			String qCategory = req.getParameter("qCategory");
			String qTitle = req.getParameter("qTitle");
			String qContent = req.getParameter("qContent");

			Map<String, String> map = new HashMap<String, String>();
			map.put("item1", qCategory);
			map.put("item2", qTitle);
			map.put("item3", qContent);

			qboardDao.mtdQboardWrite(map);

		} catch (Exception e) {
			e.getMessage();
		}
		return "redirect:qBoardList";
	}

	// qWriteForm.jsp 에서 /qBoardWrite 로 가서 DB 저장 됐다가
	// redirect:qBoardList 로 이동할 때 DB에서 저장된 데이터 전송
	@RequestMapping("/qBoardList")
	public String qBoardList(Model model) {
		model.addAttribute("mtdQboardList", qboardDao.mtdQboardList());
		return "qBoardList";
	}

	// 상세보기 qBoardList 에서 내용 클릭 했을 때 qBoardView 로
	@RequestMapping("/qBoardView")
	public String qBoardView(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			model.addAttribute("mtdQboardView", qboardDao.mtdQboardView(num));
		} catch (Exception e) {
			e.getMessage();
		}
		return "qBoardView";
	}

}
