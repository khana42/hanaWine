package com.proj;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.proj.dto.MembrTestDto;

import com.proj.svc.MemberTestSvcIf;

@Controller
@RequestMapping("/members")
public class MemberTestController {
	@Autowired
	private MemberTestSvcIf memberTestSvcIf;

	@PostMapping("/register")
	public String register(@RequestParam(value = "memberName") String memberName,
			@RequestParam(value = "memberId") String memberId, @RequestParam(value = "memberPw") String memberPw,
			@RequestParam(value = "memberMail") String memberMail,
			@RequestParam(value = "memberAddr1") String memberAddr1,
			@RequestParam(value = "memberPhone") String memberPhone, RedirectAttributes redirectAttributes) {

		try {
			MembrTestDto membrTestDto = new MembrTestDto();
			membrTestDto.setMemberName(memberName);
			membrTestDto.setMemberId(memberId);
			membrTestDto.setMemberPw(memberPw);
			membrTestDto.setMemberMail(memberMail);
			membrTestDto.setMemberAddr1(memberAddr1);
			membrTestDto.setMemberPhone(memberPhone);

			memberTestSvcIf.memberjoin(membrTestDto);

			redirectAttributes.addFlashAttribute("message", "회원 가입이 완료되었습니다.");
			return "redirect:/";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", e.getMessage());
			return "redirect:/members/register";
		}
	}
}
