package com.dogdog.model;

import java.util.ArrayList;
import java.util.List;

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
	
	public double selectStoreRate(int store_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		double storeRate = sqlSession.selectOne("selectStoreRate", store_id);
		
		sqlSession.close();
		
		return storeRate;
	}
	
	public ArrayList<StoreReviewVO> selectStoreReview(int store_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreReviewVO> resultList = sqlSession.selectList("selectStoreReview", store_id);
		
		sqlSession.close();
		
		return (ArrayList<StoreReviewVO>)resultList;
	}
	
}
