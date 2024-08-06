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

import com.proj.dto.UploadDto;
import com.proj.dto.UserVO;
import com.proj.svc.UploadSvcIf;
import com.proj.svc.UserServiceIf;

@Controller
public class AdminHanaWineController {

	@Autowired
	private UploadSvcIf uploadSvcIf;
	@Autowired
	private UserServiceIf userServiceIf;

	

	
//관리자 페이지 상세보기
	@RequestMapping("/Adminlist")
	public String AdminWineList(Model model) {
		List<UploadDto> adminWine = uploadSvcIf.AdminWineList();
		model.addAttribute("aminWineList" , adminWine);
		return "adminWineListPage";
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
			return "adminmember";
		}
}
