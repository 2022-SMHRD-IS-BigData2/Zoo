package com.zoo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooProductList;

public class ZooProductListDAO {

	// SqlSessionFactory 받아오기
	SqlSessionFactory sqlsessionFactory = SessionManager.getSqlSessionFactory();

	// 대분류 카테고리 클릭했을 때 상품정보 출력
	public List<ZooProductList> productList1(String prod_category) {

		SqlSession session = sqlsessionFactory.openSession(true);

		List<ZooProductList> productList = session.selectList("prod_category");

		session.close();
		return productList;
		// productList 형변환(ZooProductList)하여 페이지에서 출력
	}

	// 대분류 - 중분류 카테고리 클릭했을 때 상품정보 출력
	public List<ZooProductList> productList2(String prod_category2) {
		
		SqlSession session = sqlsessionFactory.openSession(true);

		List<ZooProductList> productList = session.selectList(prod_category2);

		return null;
	}
}