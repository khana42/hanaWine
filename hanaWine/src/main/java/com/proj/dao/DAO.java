package com.proj.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.proj.dto.DTO;

import jakarta.servlet.http.HttpSession;

@Mapper
public interface DAO {
	public List<DTO> mtdBoardList();	//	목록
	public DTO mtdBoardView(int	num);	//	내용보기
	public int mtdBoardWrite(String	writer,	String	title,	String	content);	//	글저장
	public int mtdBoardDelete(int num);	//	글삭제 
	
	public boolean loginChk(DTO dto, HttpSession session); //로그인 체크
	public DTO viewMember(DTO dto); //로그인 정보
	public void logout(HttpSession session); //로그아웃
}
