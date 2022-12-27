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

public class ZooPdListBudgetCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ZooPdListBudgetCon execute() 호출");

		// 2022-12-27 오후 김원경 작성
		// 인코딩
		request.setCharacterEncoding("UTF-8");

		// budget 값 수집
		String level = request.getParameter("budget");
		
		// budget 객체(dto) 생성
		ZooPdBudget budget = new ZooPdBudget();
		
		// 가격대별 parameter 수집하여 budget 객체(dto)에 set
		if (level.equals("a")) {
			System.out.println("1만원 미만");
			budget.setLonum(0);
			budget.setHinum(10000);
		} else if (level.equals("b")) {
			System.out.println("1~2만원대");
			budget.setLonum(10000);
			budget.setHinum(30000);
		} else if (level.equals("c")) {
			System.out.println("2~4만원대");
			budget.setLonum(30000);
			budget.setHinum(50000);
		} else if (level.equals("d")){
			System.out.println("5~10만원");
			budget.setLonum(50000);
			budget.setHinum(100000);
		} else if (level.equals("e")){
			System.out.println("가격대별 상품 >> 더보기");
			budget.setLonum(0);
			budget.setHinum(100000);
		}

		// DAO 객체 생성, 가격대별 상품 list 생성
		ZooProductListDAO dao = new ZooProductListDAO();
		
		List<ZooProductList> list = dao.prod_budget(budget);
		System.out.println("상품 개수 : "+list.size());
		
		// 상품정보 Session 저장
		HttpSession session = request.getSession();
	    session.setAttribute("list", list);

		return "foodform";
	}

}
