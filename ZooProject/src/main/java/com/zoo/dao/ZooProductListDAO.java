package com.zoo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooPdBudget;
import com.zoo.entity.ZooProductList;
import com.zoo.entity.ZooSeller;

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

	// 중분류 카테고리 클릭했을 때 상품정보 출력
	public List<ZooProductList> productList2(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("prod_category2", dto);
		session.close();
		return productList;
	}

	// 가격대별 상품 리스트 출력
	public List<ZooProductList> prod_budget(ZooPdBudget budget) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("prod_budget", budget);
		session.close();
		return productList;
	}

	// 키워드별 상품 리스트 출력
	public List<ZooProductList> prod_keyword(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("prod_keyword", dto);
		session.close();
		return productList;
	}

	// 상세페이지 상품 정보 불러오기
	public ZooProductList pdDetail(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		ZooProductList pdDetail = session.selectOne("pddetail", dto);
		session.close();
		return pdDetail;
	}

	// 검색창 상품 검색 기능
	public List<ZooProductList> Search(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> searchlist = session.selectList("search", dto);
		session.close();
		return searchlist;
	}

	// 기업유형별 상품 리스트 출력
	public List<ZooProductList> pdSellerType(ZooSeller dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("prod_sellertype", dto);
		session.close();
		return productList;
	}

	// 상품정렬 - 대분류 - 낮은가격순
	public List<ZooProductList> pdLoPrice(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("category_loprice", dto);
		session.close();
		return productList;
	}

	// 상품정렬 - 대분류 - 높은가격순
	public List<ZooProductList> pdHiPrice(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("category_hiprice", dto);
		session.close();
		return productList;
	}

	// 친환경 - 낮은가격순
	public List<ZooProductList> pdEcoLoPrice(ZooProductList dto) {

		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("pdEco_loprice", dto);
		session.close();
		return productList;
	}
	
	// 친환경 - 높은가격순
	public List<ZooProductList> pdEcoHiPrice(ZooProductList dto) {
		
		SqlSession session = sqlsessionFactory.openSession(true);
		List<ZooProductList> productList = session.selectList("pdEco_hiprice", dto);
		session.close();
		return productList;
	}

}
