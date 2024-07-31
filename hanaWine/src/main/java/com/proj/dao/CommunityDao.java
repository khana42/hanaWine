package com.proj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.CommunityDto;

@Mapper
public interface CommunityDao {

	// 공지사항 리스트 보기
	public List<CommunityDto> mtdNoticeList();

	// 공지사항 상세 보기
	public CommunityDto mtdNoticeView(int num);

	// 공지사항 글 저장
	public int mtdNoticeWrite(Map<String, String> map);

}
