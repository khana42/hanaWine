package com.proj;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.dao.CommunityDao;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CommunityController {

	@Autowired
	private CommunityDao communityDao;

	// 공지 사항 내용 DB에서 받아옴
	@RequestMapping("/noticeList")
	public String noticeList1(Model model) throws Exception {
		String pagename = "커뮤니티";
		model.addAttribute("pagename" ,pagename);
		model.addAttribute("mtdNoticeList", communityDao.mtdNoticeList());
		return "/community/noticeList2";
	}
	@RequestMapping("/notice_list")
	public String noticeList(Model model) throws Exception {
		
		
		model.addAttribute("mtdNoticeList", communityDao.mtdNoticeList());
		return "/community/noticeList";
	}

	// 공지 사항 게시판 이동 (관리자)
	@RequestMapping("/notice_write")
	public String noticeWrite() {
		return "/community/noticeWrite";
	}

	// 공지 사항 내용 입력 받아 DB에 저장 후 공지사항 게시판으로 이동 (관리자)
	@RequestMapping("/notice_reg")
	public String noticeReg(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");

			String notiDate = req.getParameter("notiDate");
			String notiTit = req.getParameter("notiTit");
			String notiCon = req.getParameter("notiCon");

			Map<String, String> map = new HashMap<>();
			map.put("item1", notiDate);
			map.put("item2", notiTit);
			map.put("item3", notiCon);

			communityDao.mtdNoticeWrite(map);

		} catch (Exception e) {
			e.getMessage();
		}

		return "redirect:/notice_list";
	}

	// notice 내용 보기 맵핑
	@RequestMapping("/notice_view")
	public String noticeView(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			model.addAttribute("mtdNoticeView", communityDao.mtdNoticeView(num));
		} catch (Exception e) {
			e.getMessage();
		}
		return "/community/noticeView";
	}

	// 자주하는 질문 게시판 글 작성으로 이동 (관리자)
	@RequestMapping("/faq_write")
	public String faqWrite() {
		return "/community/faqWrite";
	}

	// 자주 하는 질문 내용 입력 받아 DB에 저장 후 faq 게시판으로 이동 (관리자)
	@RequestMapping("/faq_reg")
	public String faqReg(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");

			String faqQues = req.getParameter("faqQues");
			String faqAnsw = req.getParameter("faqAnsw");

			Map<String, String> map = new HashMap<>();
			map.put("item1", faqQues);
			map.put("item2", faqAnsw);

			communityDao.mtdFaqWrite(map);

		} catch (Exception e) {
			e.getMessage();
		}

		return "redirect:/faq_list";
	}

	// faq 내용 DB에서 받아옴
	@RequestMapping("/faq_list")
	public String faqList(Model model) throws Exception {
		model.addAttribute("mtdFaqList", communityDao.mtdFaqList());

		return "/community/faqList";
	}

	// 1:1 문의 이동
	@RequestMapping("/qna_page")
	public String qnaPage() {
		return "/community/qnaWrite";
	}
	
	// 1:1 문의 내용 DB에 저장
	@RequestMapping("/qna_reg")
	public String qnaReg(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");

			String qnaName = req.getParameter("qnaName");
			String qnaPhone = req.getParameter("qnaPhone");
			String qnaCategory = req.getParameter("qnaCategory");
			String qnaTit = req.getParameter("qnaTit");
			String qnaContent = req.getParameter("qnaContent");
			

			Map<String, String> map = new HashMap<>();
			map.put("item1", qnaName);
			map.put("item2", qnaPhone);
			map.put("item3", qnaCategory);
			map.put("item4", qnaTit);
			map.put("item5", qnaContent);

			communityDao.mtdQnaReg(map);

		} catch (Exception e) {
			e.getMessage();
		}

		return "redirect:/";
	}

}