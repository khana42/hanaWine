package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.MemberTestDao;
import com.proj.dto.MembrTestDto;

@Service
public class MemberTestSvc implements MemberTestSvcIf {
	@Autowired
	MemberTestDao memberTestDao;

	@Override
	public List<MembrTestDto> svcMemberList(String uid) {
		
		return memberTestDao.daoMemberList(uid);
	}

	
}
