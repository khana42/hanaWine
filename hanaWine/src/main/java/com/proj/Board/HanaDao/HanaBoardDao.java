package com.proj.Board.HanaDao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.proj.Board.HanaDto.HanaBoardDto;

@Mapper
public interface HanaBoardDao {


	public List<HanaBoardDto> mtdBoardList();
	// 목록
	
	public HanaBoardDto mtdBoardView(int num);
	// 내용 보기(=상세 보기)
	
	public int mtdBoardWrite(String writer, String title, String content);
	// 글 저장
	
	public int mtdBoardDelete(int num);
	// 글 삭제
	
	
}
