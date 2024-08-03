package com.proj.svc;

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
@Transactional
public void upload(UploadDto uploadDto) throws Exception {
	uploadDao.upload(uploadDto);
}
}
