package com.proj;


import java.io.File;
import java.io.FileNotFoundException;
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

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

	@GetMapping("/adminWineList")
	public String AdminWineList(HttpServletRequest request ,Model model) {
	
		HttpSession session = request.getSession(false);
		List<UploadDto> adminWine = uploadSvcIf.AdminWineList();
		model.addAttribute("adminWineList", adminWine);
		if (session == null || session.getAttribute("admin_id") == null) {
            // 로그인하지 않은 사용자
            return "redirect:/adminLogin"; // 로그인 페이지로 리다이렉트
        }
        return "admin/wineList"; // 로그인된 사용자에게 페이지 보여줌
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


	@GetMapping("/memList")
	public String adminmemberpage(HttpServletRequest request , Model model) {
		List<UserVO> adminmemlist = userServiceIf.getUserID();
		HttpSession session = request.getSession(false);
		model.addAttribute("adminmemlist", adminmemlist);
		if (session == null || session.getAttribute("admin_id") == null) {
            // 로그인하지 않은 사용자
            return "redirect:/adminLogin"; // 로그인 페이지로 리다이렉트
        }
        return "admin/adminmember"; // 로그인된 사용자에게 페이지 보여줌
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
			session.setMaxInactiveInterval(1800);
		System.out.println("로그인");

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


@RequestMapping(value = "/upload", method = RequestMethod.GET)
String upload() {
	return "admin/UploadList";
}

@RequestMapping(value = "/insert", method = RequestMethod.POST)
public String insert(@RequestParam(value = "wineKrName") String wineKrName,
		@RequestParam(value = "wineEgName") String wineEgName,
		@RequestParam(value = "typeOfWine") String typeOfWine, @RequestParam(value = "nation") String nation,
		@RequestParam(value = "region") String region, @RequestParam(value = "grape") String grape,
		@RequestParam(value = "price") double price, @RequestParam(value = "alcohol") double alcohol,
		@RequestParam(value = "sweetness") double sweetness, @RequestParam(value = "acidity") double acidity,
		@RequestParam(value = "body") double body, @RequestParam(value = "goodsImg") MultipartFile goodsImg,
		@RequestParam(value = "recipe") MultipartFile recipe,
		@RequestParam(value = "goodsInfo") MultipartFile goodsInfo,
		@RequestParam(value = "foodIdx") List<Integer> foodIdxList, Model model) {

	try {


		String uploadDir = "C:\\\\Users/us000/OneDrive/바탕 화면/hanaWine/hanaWine/hanaWine/src/main\\resources/static/wineimg/";
		String goodsImgName = UUID.randomUUID() + "_" + goodsImg.getOriginalFilename();
		String recipeName = UUID.randomUUID() + "_" + goodsImg.getOriginalFilename();
	    String goodsInfoName = UUID.randomUUID() + "_" + goodsInfo.getOriginalFilename();

		saveFile(goodsImg, uploadDir + goodsImgName);
		saveFile(recipe, uploadDir + recipeName);
		saveFile(goodsInfo, uploadDir + goodsInfoName);
		UploadDto uploadDto = new UploadDto();
		uploadDto.setWineKrName(wineKrName);
		uploadDto.setWineEgName(wineEgName);
		uploadDto.setTypeOfWine(typeOfWine);
		uploadDto.setNation(nation);
		uploadDto.setRegion(region);
		uploadDto.setGrape(grape);
		uploadDto.setPrice(price);
		uploadDto.setAlcohol(alcohol);
		uploadDto.setSweetness(sweetness);
		uploadDto.setAcidity(acidity);
		uploadDto.setBody(body);
		uploadDto.setGoodsImg(goodsImgName);
		uploadDto.setRecipe(recipeName);
		uploadDto.setGoodsInfo(goodsInfoName);

		uploadSvcIf.upload(uploadDto);
		for (int foodIdx : foodIdxList) {
			uploadSvcIf.uploadWineAndFood(uploadDto, foodIdx); // foodIdx도 전달
		}
		model.addAttribute("message", "등록이 완료 되었습니다.");

		return "Upload";
	} catch (Exception e) {
		 model.addAttribute("error", e.getMessage());
		return "error";
	}
}

private void saveFile(MultipartFile file, String filePath) throws IOException {
    if (file.isEmpty()) {
        throw new IOException("업로드할 파일이 비어 있습니다.");
    }

    File targetFile = new File(filePath);
    
    try (InputStream inputStream = file.getInputStream();
         FileOutputStream outputStream = new FileOutputStream(targetFile)) {
        byte[] buffer = new byte[1024];
        int bytesRead;
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);
        }
    } catch (FileNotFoundException e) {
        throw new IOException("파일을 저장할 수 없습니다: " + filePath, e);
    } catch (IOException e) {
        throw new IOException("파일 저장 중 오류가 발생했습니다: " + filePath, e);
    }
}
}
