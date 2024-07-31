package com.proj.svc;

import org.springframework.stereotype.Service;

import com.proj.nariDTO.NariDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class Memberservice {

	private final MemberRepository memberRepository;

	public void save(NariDTO nariDTO) {
		// TODO Auto-generated method stub
		
	}
	
}
