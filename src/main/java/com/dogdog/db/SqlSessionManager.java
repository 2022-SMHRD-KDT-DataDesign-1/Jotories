package com.dogdog.db;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	// SqlSessionFactory: sqlSession(DB연결, sql 실행, 트랜잭션을 관리) 생성
	public static SqlSessionFactory sqlSession;

	static {
		// mybatis 설정파일 경로
		String resource = "com/smhrd/db/mybatis-config.xml";
		Reader reader;
	
		try {
			reader = Resources.getResourceAsReader(resource);
			
			// SqlSessionFactoryBuilder: mybatis 설정파일을 바탕으로 SqlSessionFactory 생성
			sqlSession = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static SqlSessionFactory getSqlSession() {
		return sqlSession;
	}
}
