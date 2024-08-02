package com.proj.qboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.proj.qboard.dto.QboardDto;

@Mapper
public interface QboardDao {
	
	// 내용 저장
	public int mtdQboardWrite(Map<String, String>map);
	
	// 목록
	public List<QboardDto> mtdQboardList();

	// 내용 보기
	public QboardDto mtdQboardView(int num);

}
