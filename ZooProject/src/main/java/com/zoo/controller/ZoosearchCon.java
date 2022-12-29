package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;

public class ZoosearchCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nextPage = null;
		// 0. 인코딩
		request.setCharacterEncoding("UTF-8");
		// 1. 파라미터(데이터) 수집
		String search = request.getParameter("search");
		System.out.println(search);

		// 여기서 에러 발생
		ZooProductList dto = new ZooProductList();
		dto.setProd_name(search);
		ZooProductListDAO dao = new ZooProductListDAO();
		List<ZooProductList> result = dao.Search(dto);
		System.out.println(result);

		HttpSession session = request.getSession();
		session.setAttribute("search", result);

		return "searchform";
	}

}
