package com.proj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.proj.dto.CommunityDto;

@Mapper
public interface CommunityDao {

	// �������� ����Ʈ ����
	public List<CommunityDto> mtdNoticeList();

	// �������� �� ����
	public CommunityDto mtdNoticeView(int num);

	// �������� �� ����
	public int mtdNoticeWrite(Map<String, String> map);

	// �����ϴ� ���� �� ����
	public int mtdFaqWrite(Map<String, String> map);

	// �����ϴ� ���� ����Ʈ ����
	public List<CommunityDto> mtdFaqList();

	// 1:1 ���� �ϱ� DB�� ���� DAO
	public int mtdQnaReg(Map<String, String> map);

}
