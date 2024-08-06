package com.proj.svc;

import java.util.List;

import com.proj.dto.UploadDto;

public interface UploadSvcIf {

	  void upload(UploadDto uploadDto);
	  void uploadWineAndFood(UploadDto uploadDto, int foodIdx);
	  public List<UploadDto> AdminWineList(); 	
	  String AdminWineDel(int num);
}