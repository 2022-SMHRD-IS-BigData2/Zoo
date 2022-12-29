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
		String cate = request.getParameter("cate");
		String eco = request.getParameter("eco");
		System.out.println(sort);
		System.out.println(cate);
		System.out.println(eco);

		ZooProductList dto = new ZooProductList();
		dto.setProd_category(cate);

		HttpSession session = request.getSession();

		// dto.setProd_category(list.get(0).getProd_category());

		ZooProductListDAO dao = new ZooProductListDAO();

		if (eco.equals("ECO")) {
			dto.setProd_keyword1("ECO");

			if (sort.equals("low")) {
				List<ZooProductList> list = dao.pdEcoLoPrice(dto);
				System.out.println(list.size());
				session.setAttribute("list", list);
				request.setAttribute("keywordEco", "ECO");

			} else if (sort.equals("hi")) {
				List<ZooProductList> list = dao.pdEcoHiPrice(dto);
				session.setAttribute("list", list);
				request.setAttribute("keywordEco", "ECO");
			}
		} else if (sort.equals("low")) {
			List<ZooProductList> list = dao.pdLoPrice(dto);
			session.setAttribute("list", list);
			
		} else if (sort.equals("hi")) {
			List<ZooProductList> list = dao.pdHiPrice(dto);
			session.setAttribute("list", list);
		}

		return "foodform";
	}

}
