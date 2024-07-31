package com.proj.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.proj.dao.MemberTestDao;
import com.proj.dto.MembrTestDto;

@Service
public class MemberTestSvc implements MemberTestSvcIf {
	@Autowired
	  MemberTestDao memberTestDao;
    @Override
    @Transactional
    public void memberjoin(MembrTestDto memberTestDto) throws Exception {
    	memberTestDao.memberjoin(memberTestDto);

}
}