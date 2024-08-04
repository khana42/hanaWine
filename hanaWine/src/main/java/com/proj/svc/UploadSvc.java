package com.proj.svc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.proj.dao.UploadDao;
import com.proj.dto.UploadDto;
@Service
public class UploadSvc implements UploadSvcIf {

@Autowired
private UploadDao uploadDao;
@Override

public void upload(UploadDto uploadDto) {
    uploadDao.upload(uploadDto);

}
@Override
public void uploadWineAndFood(UploadDto uploadDto, int foodIdx) {
    // wineIdx 가져오기
    int wineIdx = uploadDto.getWineIdx();// ... uploadDto에서 가져온 wineIdx
    Map<String, Object> params = new HashMap<>();
    params.put("wineIdx", wineIdx);
    params.put("foodIdx", foodIdx);
    
    uploadDao.uploadWineAndFood(params);
}
}