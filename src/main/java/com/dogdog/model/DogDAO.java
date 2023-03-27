package com.dogdog.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogdog.db.SqlSessionManager;

public class DogDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertDog(DogVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("insertDog", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
	
	public DogVO selectDog(DogVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		DogVO resultVO = sqlSession.selectOne("selectDog", vo);
		
		sqlSession.close();
		
		return resultVO;
	}
	
	public ArrayList<DogVO> selectALLDog(DogVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<DogVO> resultVOList = sqlSession.selectOne("selectDog", vo);
		
		sqlSession.close();
		
		return (ArrayList)resultVOList;
	}
	
	public int updateDog(DogVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.update("selectDog", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
	public int deleteDog(DogVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.delete("deleteDog", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
}
