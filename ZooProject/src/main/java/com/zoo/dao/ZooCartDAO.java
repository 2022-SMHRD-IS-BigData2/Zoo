package com.zoo.dao;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.Cookie;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooCart;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;

public class ZooCartDAO {

	// SqlSessionFactory 받아오기
	SqlSessionFactory sqlsessionFactory = SessionManager.getSqlSessionFactory();

	// 1. 상품 저장하기
	public int cartInsert(ZooCart dto) {
		
		SqlSession session = sqlsessionFactory.openSession(true);

		int cnt = session.insert("insert_cart", dto);
		
		return cnt;
	}
	
	// 2. 상품 불러오기
	public List<ZooProductList> cartPdList(ZooCart dto) {

		SqlSession session = sqlsessionFactory.openSession(true);

		List<ZooProductList> pdDetail = session.selectList("prod_cart", dto);
		
		return pdDetail;
	}
	
	// 3. 결제를 위한 메소드
	public List<ZooProductList> cartpay(ZooMember dto) {
		SqlSession session = sqlsessionFactory.openSession(true);
	List<ZooProductList>paylist = session.selectList("paycart", dto);
	return paylist;
	}

}
