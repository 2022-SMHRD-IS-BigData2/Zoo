package com.zoo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooPdBudget;
import com.zoo.entity.ZooProductList;

import lombok.Data;

public class ZooProductListDAO {

	
	// SqlSessionFactory 받아오기
	SqlSessionFactory sqlsessionFactory = SessionManager.getSqlSessionFactory();

	// 대분류 카테고리 클릭했을 때 상품정보 출력
	public List<ZooProductList> productList1(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);

		List<ZooProductList> productList = session.selectList("prod_category", dto);

		session.close();
		return productList;
	}

	// 대분류 - 중분류 카테고리 클릭했을 때 상품정보 출력
	public List<ZooProductList> productList2(String prod_category2) {
		
		SqlSession session = sqlsessionFactory.openSession(true);

		List<ZooProductList> productList = session.selectList(prod_category2);

		return null;
	}
	
	// 가격대별 상품 리스트 출력
	public List<ZooProductList> prod_budget(ZooPdBudget budget) {
		
		SqlSession session = sqlsessionFactory.openSession(true);

		List<ZooProductList> productList = session.selectList("prod_budget", budget);
		
		session.close();
		return productList;
		
	}
}
