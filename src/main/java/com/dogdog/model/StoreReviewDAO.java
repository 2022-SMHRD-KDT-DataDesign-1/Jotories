package com.dogdog.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogdog.db.SqlSessionManager;

public class StoreReviewDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int insertReview(StoreReviewVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("insertReview", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
}
