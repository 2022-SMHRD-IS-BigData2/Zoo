package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooPdBudget;
import com.zoo.entity.ZooProductList;

public class ZooGomainCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ZooGomainCon execute() 호출");

		request.setCharacterEncoding("UTF-8");

		// 메인페이지에 노출될 상품 list 출력
		// 1. 가격대별 추천
		// budget 객체(dto) 생성
		ZooPdBudget budget = new ZooPdBudget();
		// 0~100,000만원 범위 set
		budget.setLonum(0);
		budget.setHinum(100000);

		ZooProductListDAO dao = new ZooProductListDAO();

		List<ZooProductList> list1 = dao.prod_budget(budget);

		HttpSession session = request.getSession();
		session.setAttribute("pdlist_budget", list1);

		// 2. 선물 추천
		ZooProductList dto = new ZooProductList();
		dto.setProd_keyword1("GIFT");
		
		List<ZooProductList> list2 = dao.prod_keyword(dto);
		session.setAttribute("pdlist_gift", list2);

		// 3. 인증 기업별 추천
		// list_budget으로 출력

		// 다음 페이지가 어디인가를 리턴
		return "mainpage";
	}

}
