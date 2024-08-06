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

	// 자주하는 질문 글 저장
	public int mtdFaqWrite(Map<String, String> map);

	// 자주하는 질문 리스트 보기
	public List<CommunityDto> mtdFaqList();

	// 1:1 문의 하기 DB에 저장 DAO
	public int mtdQnaReg(Map<String, String> map);

<<<<<<< HEAD
}
=======
}
>>>>>>> d6f4215777fa5b35f108a0cc15b4068abc6ded3b
