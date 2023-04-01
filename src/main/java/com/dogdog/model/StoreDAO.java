package com.dogdog.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogdog.db.SqlSessionManager;

public class StoreDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertStore(StoreVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("insertStore", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
	public ArrayList<StoreVO> selectTop5School() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreVO> resultVO = sqlSession.selectList("selectTop5");
		
		return (ArrayList<StoreVO>)resultVO;
	}
}
