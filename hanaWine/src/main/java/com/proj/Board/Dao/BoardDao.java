package com.proj.Board.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.proj.Board.Dto.BoardDto;

@Mapper
public interface BoardDao {


	public List<BoardDto> mtdBoardList();
	// 목록
	
	public BoardDto mtdBoardView(int num);
	// 내용 보기(=상세 보기)
	
	public int mtdBoardWrite(String writer, String title, String content);
	// 글 저장
	
	public int mtdBoardDelete(int num);
	// 글 삭제
	
	
}
