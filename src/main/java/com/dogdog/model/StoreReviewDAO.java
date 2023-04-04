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
	
	public double selectStoreReviewRate(int store_id) {
		
		double storeRate = -1;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		storeRate = sqlSession.selectOne("selectStoreReviewRate", store_id);
		
		if(storeRate >= 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
		sqlSession.close();
		
		return storeRate;
	}
	
	public ArrayList<StoreReviewVO> selectStoreReview(int store_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreReviewVO> resultList = sqlSession.selectList("selectStoreReview", store_id);
		
		sqlSession.close();
		
		return (ArrayList<StoreReviewVO>)resultList;
	}
	
	public int countStoreReview(int store_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.selectOne("countStoreReview", store_id);
		
		sqlSession.close();
		
		return cnt;
	}
	
}
