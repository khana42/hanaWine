//package com.proj.dao;
//
//import java.util.List;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import com.proj.dto.WineDto;
//
//@Repository
//public class SearchDaoImpl implements SearchDao {
//
//	@Autowired	
//	private SqlSession sqlSession;
//	
//	private static final String NAMESPACE = "SearchMapper";
//			
//	@Override	
//	public List<WineDto> searchWines(WineDto search) throws Exception {		
//		return sqlSession.selectList(NAMESPACE+".getBoardList", search);	
//	}
//	 
//}
