package com.zoo.dao;





import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooMember;



public class ZooMemberDAO  {

		
		// SqlSessionFactory 받아오기
		SqlSessionFactory sqlsessionFactory = SessionManager.getSqlSessionFactory();
	
		
		
		// 1. 회원가입 메소드
		public int join(ZooMember dto) {
		//1) Connection 빌려오기
		SqlSession session = sqlsessionFactory.openSession(true); // true : commit의 역할
		//2) SQL문 실행
		int cnt = session.insert("join",dto);
		//3) 빌린 Connection 반환
		session.close();	
		//4) 실행결과 리턴
		return cnt;
		
		}
		
// ==============================================================================
		
		// 2. 로그인 메소드
		public ZooMember login(ZooMember dto) {
			SqlSession session = sqlsessionFactory.openSession(true);
			ZooMember result = session.selectOne("login", dto);
			session.close();
			return result;
		}
		
// ==============================================================================
		
		// 3. 정보수정 메소드
		public int update(ZooMember dto) {
			SqlSession session = sqlsessionFactory.openSession(true);
			int cnt = session.update("update", dto);
			session.close();
			return cnt;
		}

// ==============================================================================		

		// 4. 회원 삭제 메소드
		public int delete( ZooMember dto) {
			
			// 1) connection pool로부터 빌려오기
			// openSession( true ); --> auto commit
			SqlSession session = sqlsessionFactory.openSession( true );
			
			// 2) 실행
			int cnt = session.delete("delete", dto);
			
			// 3) close
			session.close();
			
			// 4) 리턴 : sql문을 실행한 결과를 리턴
			return cnt;
		}
		
// ==============================================================================


}
