package com.proj.svc;

import java.util.List;



import com.proj.dto.MembrTestDto;

public interface MemberTestSvcIf {

	
	public List<MembrTestDto> svcMemberList(String uid);
    
}
