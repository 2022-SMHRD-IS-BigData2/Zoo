package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;

public class ZooPdListKeywordCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ZooPdListKeywordCon execute() 호출");

		// 2022-12-27 오후 김원경 작성
		// 인코딩
		request.setCharacterEncoding("UTF-8");

		// budget 값 수집
		String keyword = request.getParameter("keyword");
		
		// keyword 값 set
		ZooProductList dto = new ZooProductList();
		dto.setProd_keyword1(keyword);
		System.out.println("상품키워드 : " + dto.getProd_keyword1());

		// prod_keyword 상품 data 가져오기
		ZooProductListDAO dao = new ZooProductListDAO();
		List<ZooProductList> list = dao.prod_keyword(dto);

		// 상품정보 Session 저장
		HttpSession session = request.getSession();
		session.setAttribute("list", list);

		return "foodform";
	}

}
