package com.dogdog.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogdog.db.SqlSessionManager;

public class StoreMemberDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 예약정보 등록
	public int insertMember(StoreMemberVO vo) {
		
		SqlSession sqlSession =  sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("insertMember", vo);
		
		sqlSession.close();
		
		return cnt;
	}
	
	public ArrayList<StoreMemberVO> selectReservation(String user_id) {
		
		List<StoreMemberVO> resultList = null;
		
		SqlSession sqlSession =  sqlSessionFactory.openSession(true);
		
		resultList = sqlSession.selectList("selectReservation", user_id);
		
		sqlSession.close();
		
		if(resultList != null) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
		return (ArrayList<StoreMemberVO>)resultList;
	}
}
