package com.proj.nariDAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.proj.nariDTO.NariDTO;

@Repository

public interface NariDAO {
	


		public List<NariDTO> daoList();
		
		
	
	}


