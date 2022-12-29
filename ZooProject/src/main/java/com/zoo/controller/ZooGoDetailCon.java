package com.zoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;

public class ZooGoDetailCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 타입 받아오기

		String prod_id = request.getParameter("prod_id");
		ZooProductList dto = new ZooProductList();
		
		dto.setProd_id(prod_id);
		
		// 파라미터 수집
		System.out.println(prod_id + "로 이동");
		ZooProductListDAO dao = new ZooProductListDAO();
		ZooProductList detail = dao.pdDetail(dto);
		HttpSession session = request.getSession();
		session.setAttribute("detail", detail);
		
		return "pdDetailPage";
	}

}
