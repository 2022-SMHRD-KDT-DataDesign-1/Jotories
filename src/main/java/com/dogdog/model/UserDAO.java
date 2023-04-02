package com.dogdog.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogdog.db.SqlSessionManager;


public class UserDAO {
SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 회원가입
	public int insertUser(UserVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("insertUser", vo);
		// 만약에 똑같은 이름의 mapper가 있으면 namespace 경로 가져다가 붙여주기
		
		sqlSession.close();
		
		return cnt;
	}
	
	// 로그인
	public UserVO selectUser(UserVO vo) {
		
		UserVO resultVO = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		resultVO = sqlSession.selectOne("selectUser", vo);
		
		sqlSession.close();
		
		return resultVO;
	}
	
	// 회원정보수정
	public int updateUser(UserVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.update("updateUser", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
	// 회원 다 가져오기
	/*
	 * public List<UserVO> selectAllUser() {
	 * 
	 * SqlSession sqlSession = sqlSessionFactory.openSession(true);
	 * 
	 * 
	 * List<UserVO> memberList = sqlSession.selectList("selectAllUser");
	 * 
	 * sqlSession.close();
	 * 
	 * return memberList; }
	 */
	
	// 회원 삭제
	public int deleteUser(String email) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 값 넘길 때 따옴표 쓰지 않는 것 주의
		int cnt = sqlSession.delete("deleteUser", email);
		
		sqlSession.close();
		
		return cnt;
	}
	
}
