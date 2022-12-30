package com.zoo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;
import com.zoo.entity.ZooWishList;

public class ZooWishListDAO {
	SqlSessionFactory sqlSessionFactory = SessionManager.getSqlSessionFactory();
	
	// 위시리스트 테이블 값 생성
	public int wishlist(ZooWishList dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("wishlist",dto);
		session.close();
		return cnt;
	}
	// 위시리스트 값 불러오기
	public List<ZooProductList > wish(ZooMember dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
	List<ZooProductList>result= session.selectList("wish", dto);
	return result;
	}
	// 위시리스트 선택 삭제
	public int delwish(ZooWishList dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
	int cnt = session.delete("delwish",dto);
	return cnt;
	}
	
}
