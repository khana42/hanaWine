package com.proj.dao;

import org.apache.ibatis.annotations.Mapper;


import com.proj.dto.AdminJoin;

@Mapper
public interface AdminJoinDao {
	public void adminJoin(AdminJoin adminJoin);

	public AdminJoin adminLoginId(String admin_id);
}