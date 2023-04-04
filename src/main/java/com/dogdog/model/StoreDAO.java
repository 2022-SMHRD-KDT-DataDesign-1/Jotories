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
	
	public ArrayList<StoreVO> selectAllList(String store_type) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreVO> resultList = sqlSession.selectList("selectAllList", store_type);
		
		sqlSession.close();
		
		return (ArrayList<StoreVO>)resultList;
	}
	
	public ArrayList<StoreVO> selectTop5School() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreVO> resultList = sqlSession.selectList("selectTop5School");
		
		sqlSession.close();
		
		return (ArrayList<StoreVO>)resultList;
	}
	
	public ArrayList<StoreVO> selectTop5Hotel() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreVO> resultList = sqlSession.selectList("selectTop5Hotel");
		
		sqlSession.close();
		
		return (ArrayList<StoreVO>)resultList;
	}
	public ArrayList<StoreVO> selectTop5Hospital() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreVO> resultList = sqlSession.selectList("selectTop5Hospital");
		
		sqlSession.close();
		
		return (ArrayList<StoreVO>)resultList;
	}
	public ArrayList<StoreVO> selectTop5Salon() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<StoreVO> resultList = sqlSession.selectList("selectTop5Salon");
		
		sqlSession.close();
		
		return (ArrayList<StoreVO>)resultList;
	}
	
	
	public double selectStoreRate(int store_id) {
		
		double storeRate = -1;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		storeRate = sqlSession.selectOne("selectStoreRate", store_id);
		
		if(storeRate >= 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
		sqlSession.close();
		
		return storeRate;
	}
}
