package com.proj;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import com.proj.nariDTO.NariDTO;
import com.proj.svc.Memberservice;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class MemberController {
	// 생성자 주입
	private final Memberservice memberservice;
	 //컨트롤러가 서비스클래스에 대한 객체를
	 // 메서드나 필드를 사용할수있는 권한이 생긴다.
	
// 회원가입페이지 출력 요청
	@GetMapping("/Join02")
	public String JoinForm() {
		return "Join02";
	}
	
	
	@PostMapping("/Join02")
	public String save(@ModelAttribute NariDTO nariDTO) {
						
		System.out.println("MemberController.save");
		System.out.println("nariDTO = " + nariDTO);
	
		memberservice.save(nariDTO);
		return "index";
	}
}
