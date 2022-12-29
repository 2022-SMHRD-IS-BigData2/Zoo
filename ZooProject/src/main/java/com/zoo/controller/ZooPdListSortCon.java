package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;

public class ZooPdListSortCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ZooPdListSortCon execute() 호출");
		request.setCharacterEncoding("UTF-8");
		
		String sort = request.getParameter("sort");
		System.out.println(sort);
		
		ZooProductList dto = new ZooProductList();
		
		List<ZooProductList> list = (List<ZooProductList>) request.getAttribute("list");

		dto.setProd_category(list.get(0).getProd_category());
		
		ZooProductListDAO dao = new ZooProductListDAO();
		
		if (sort.equals("low")) {
			list = dao.pdLoPrice(dto);
			
		} else if (sort.equals("hi")) {
			list = dao.pdHiPrice(dto);
		}

		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		return "foodform";
	}

}
