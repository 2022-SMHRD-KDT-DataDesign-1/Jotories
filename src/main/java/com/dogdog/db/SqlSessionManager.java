package com.dogdog.db;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class SqlSessionManager {
	// SqlSessionFactory: sqlSession(DB연결, sql 실행, 트랜잭션을 관리) 생성
private static SqlSessionFactory sqlSessionFactory;	
	
	static {
		// 이미 알고 있는 메모리 공간
		try {
			String resource = "com/dogdog/db/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			// SqlSessionFactoryBuilder
			// : mybatis 설정파일을 바탕으로 SqlSessionFactory 생성
			sqlSessionFactory =
					new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch(IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// DAO(Class)에서 사용 >> getter역할
	public static SqlSessionFactory getSqlSession() {
		
		return sqlSessionFactory;
	}
}
