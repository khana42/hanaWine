package com.proj.svc;

import java.util.HashMap;
import java.util.List;
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
@Override
public List<UploadDto> AdminWineList(){
	return uploadDao.AdminWineList();
}
@Override
public String AdminWineDel(int num) {
    int rowsAffected = uploadDao.AdminWineDel(num);
    if (rowsAffected > 0) {
        return "삭제 성공"; // 삭제 성공 메시지
    } else {
        return "삭제 실패: 존재하지 않는 ID입니다."; // 삭제 실패 메시지
    }


}
}