package com.dogdog.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogdog.db.SqlSessionManager;

public class StoreBoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertBoard(StoreBoardVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("insertBoard", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
	public StoreBoardVO selectBoard(int store_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		StoreBoardVO resultVO = sqlSession.selectOne("selectBoard", store_id);
		
		sqlSession.close();
		
		return resultVO;
	}
}
