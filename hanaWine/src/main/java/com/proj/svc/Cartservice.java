package com.proj.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.proj.dao.CartDAO;
import com.proj.dto.CartDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class Cartservice implements CARTsvc_inter {
	 @Autowired
	    CartDAO cartDAO;
	 @Override
	    @Transactional
	    public void Cartlist(CartDTO cartDTO) {
		 cartDAO.cartpage(cartDTO);
	    }

	   public void cartpage(CartDTO cartDTO) {
	      // TODO Auto-generated method stub
	      
	   }
	}
	
	
	

