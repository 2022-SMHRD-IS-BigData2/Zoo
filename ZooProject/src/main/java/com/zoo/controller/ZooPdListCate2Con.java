package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;

public class ZooPdListCate2Con implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ZooPdListCate2Con execute() 호출");

		request.setCharacterEncoding("UTF-8");

		String category = request.getParameter("category2");
		ZooProductList dto = new ZooProductList();
		
		dto.setProd_category2(category);
		System.out.println(category + "로 이동");

		// DAO 객체 생성
		ZooProductListDAO dao = new ZooProductListDAO();
		List<ZooProductList> list = dao.productList2(dto);

		System.out.println(list.size());

		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		request.setAttribute("category2", category);

		return "foodform";
	}

}
