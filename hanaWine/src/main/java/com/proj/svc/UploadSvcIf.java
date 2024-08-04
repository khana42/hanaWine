package com.proj.svc;

import com.proj.dto.UploadDto;

public interface UploadSvcIf {

	  void upload(UploadDto uploadDto);
	  void uploadWineAndFood(UploadDto uploadDto, int foodIdx);

	
}
