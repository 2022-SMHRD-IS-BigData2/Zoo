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

		System.out.println("ZooProductListCon execute() 호출");

		request.setCharacterEncoding("UTF-8");

		String level = request.getParameter("budget");
		
		ZooPdBudget budget = new ZooPdBudget();
		
		// 카테고리별 파라미터값 수집 방법???
		if (level.equals("a")) {
			System.out.println("1만원 미만");
			budget.setLonum(0);
			budget.setHinum(10000);
		} else if (level.equals("b")) {
			System.out.println("1~2만원");
			budget.setLonum(10000);
			budget.setHinum(20000);
		} else if (level.equals("c")) {
			System.out.println("2~4만원");
			budget.setLonum(20000);
			budget.setHinum(40000);
		} else {
			System.out.println("5만원 이상");
			budget.setLonum(50000);
			budget.setHinum(999999999);
		}

		// DAO 객체 생성, 가격대별 상품 list 생성
		ZooProductListDAO dao = new ZooProductListDAO();
		
		List<ZooProductList> list = dao.prod_budget(budget);
		System.out.println(list.size());
		
		// Session 이름 통일 (우철)
//		HttpSession session = request.getSession();
//		session.setAttribute("PdList", session);

		return "foodform";
	}

}
