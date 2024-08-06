package com.proj.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.proj.dto.CartDTO;

@Mapper
public interface CartDAO {
	public int cartpage(
	         @Param("productinfo") String productinfo,
	         @Param("price") String price,
	         @Param("quantity") int quantity, 
	         @Param("deliver") String deliver, 
	         @Param("delPrice") String delPrice, 
	         @Param("total") String totaString);

	public void cartpage(CartDTO cartDTO);
}
