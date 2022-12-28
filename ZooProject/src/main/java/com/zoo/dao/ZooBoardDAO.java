package com.zoo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooBoard;

public class ZooBoardDAO {
	
	SqlSessionFactory sqlSessionFactory = SessionManager.getSqlSessionFactory();
	
	// 1. 게시글 전체 조회
	public List<ZooBoard> boardList() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<ZooBoard> list = session.selectList("boardList");
		session.close();
		return list;
	}
	// 2. 게시글 작성
	public int boardWrite( ZooBoard dto ) {	
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("boardWrite", dto);
		session.close();
		return cnt;
	}
	// 3. 게시글 상세보기
	public ZooBoard boardView(int num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ZooBoard board = session.selectOne("boardView",num);
		session.close();
		return board;
	}
}

