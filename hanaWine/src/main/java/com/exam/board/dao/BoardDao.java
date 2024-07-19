package com.exam.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.exam.board.dto.BoardDto;

@Mapper
public interface BoardDao {

	public List<BoardDto> mtdBoardList();
	// 목록
	
	public BoardDto mtdBoardView(int num);
	// 내용 보기(=상세 보기)
	
	public int mtdBoardWrite(Map<String, String>map);
	// 글 저장
	
	public int mtdBoardDelete(int num);
	// 글 삭제
}
