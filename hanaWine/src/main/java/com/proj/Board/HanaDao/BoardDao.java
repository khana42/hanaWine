package com.proj.Board.HanaDao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.proj.Board.HanaDto.HanaBoardDto;

@Mapper
public interface HanaBoardDao {


	public List<HanaBoardDto> mtdBoardList();
	// 목록
	
	public HanaBoardDto mtdBoardView(int num);
	// 내용 보기(=상세 보기)
	
	public int mtdBoardWrite(Map<String, String>map);
	// 글 저장
	
	public int mtdBoardDelete(int num);
	// 글 삭제
	
	
}
