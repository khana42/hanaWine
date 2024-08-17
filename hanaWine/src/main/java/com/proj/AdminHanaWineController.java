package com.proj;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proj.dto.AdminJoin;
import com.proj.dto.UploadDto;
import com.proj.dto.UserVO;
import com.proj.svc.AdminJoinSvcIf;
import com.proj.svc.UploadSvcIf;
import com.proj.svc.UserServiceIf;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminHanaWineController {

	@Autowired
	private UploadSvcIf uploadSvcIf;
	@Autowired
	private UserServiceIf userServiceIf;

	@Autowired
   private AdminJoinSvcIf adminJoinSvcIf;
//관리자 페이지 상세보기
	@RequestMapping("/admin")
	public String admin() {

		return "admin/admin";
	}

	@RequestMapping("/adminWineList")
	public String AdminWineList(Model model) {
		List<UploadDto> adminWine = uploadSvcIf.AdminWineList();
		model.addAttribute("aminWineList", adminWine);
		return "admin/wineList";
	}

	@DeleteMapping("/adminlist/delete/{num}")

	public ResponseEntity<String> deleteWine(@PathVariable("num") int num) {
		String resultMessage = uploadSvcIf.AdminWineDel(num);
		if (resultMessage.equals("삭제 성공")) {
			return ResponseEntity.ok(resultMessage);
		} else {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body(resultMessage); // 존재하지 않는 경우
		}
	}

	@RequestMapping("/memList")
	public String memList(Model model) {
		List<UserVO> adminmemlist = userServiceIf.getUserID();
		model.addAttribute("adminmemlist", adminmemlist);
		return "admin/adminmember";
	}

	@RequestMapping("/adminjoin")
	public String adminjoinPage() {
		return "admin/adminJoin";

	}

	@PostMapping("/adminJoin")
	public String adminJoin(@RequestParam(value = "admin_id") String admin_id,
			@RequestParam(value = "admin_password") String admin_password,
			@RequestParam(value = "admin_username") String admin_username,
			@RequestParam(value = "admin_email") String admin_email, Model model) {

		try {
			AdminJoin adminJoin = new AdminJoin();
			adminJoin.setAdmin_id(admin_id);
			adminJoin.setAdmin_password(admin_password);
			adminJoin.setAdmin_username(admin_username);
			adminJoin.setAdmin_email(admin_email);
			

			adminJoinSvcIf.adminJoin(adminJoin);

			model.addAttribute("message", "회원 가입이 완료되었습니다.");
			return "admin/admin";
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
			return "error";
		}
	}
	@RequestMapping("/adminLogin")
	public String adminloginpage() {
		return "admin/adminLogin";

	}
	@PostMapping("/adminLogin")
	public String adminLogin(@RequestParam("admin_id") String admin_id, @RequestParam("admin_password") String admin_password,
			HttpServletRequest req, Model model) {
		
		// 로그인 성공 여부 확인
		HttpSession session = req.getSession(); // 새로운 세션을 생성하거나 기존 세션을 가져옴
		boolean loginResult = adminJoinSvcIf.adminlogin(admin_id, admin_password, session);

		if (loginResult) {
			// 세션에 사용자 정보 저장
			session.setAttribute("admin_id", admin_id);
			session.setMaxInactiveInterval(20);
		

			return "admin/admin"; // 로그인 성공 시 메인 페이지로

		} else {
			model.addAttribute("error", "아이디와 비밀번호가 일치하지 않습니다.");
			return "error"; // 로그인 실패 시 다시 로그인 페이지로		
		}
	}

	// 로그아웃
	@RequestMapping("/adminlogout")
	public String adminlogout(HttpServletRequest request) {
		HttpSession session = request.getSession();

		session.invalidate();
		return "admin/admin";
	}

}
