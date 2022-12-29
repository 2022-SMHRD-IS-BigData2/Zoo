package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;
import com.zoo.entity.ZooSeller;

public class ZooPdListSellerTypeCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ZooPdListSellerTypeCon execute() 호출");
		// Encoding
		request.setCharacterEncoding("UTF-8");

		// getParameter
		String sellerType = request.getParameter("sellertype");
		System.out.println("SellerType : " + sellerType);

		String seller = "";
		switch (sellerType) {
		case "A" : seller = "사회적기업";
				break;
		case "B" : seller = "협동조합";
				break;
		case "C" : seller = "마을기업";
				break;
		case "D" : seller = "장애인기업";
				break;
		case "E" : seller = "여성기업";
				break;
		case "F" : seller = "자활기업";
				break;
		}
		// set Parameter --> ZooSeller Object
		ZooSeller dto = new ZooSeller();
		dto.setSeller_type(sellerType);

		// DAO method
		ZooProductListDAO dao = new ZooProductListDAO();
		List<ZooProductList> list = dao.pdSellerType(dto);
		System.out.println("상품 : "+list.size()+"개");

		HttpSession session = request.getSession();
		session.setAttribute("list", list);

		request.setAttribute("seller", seller);

		return "foodform";
	}

}
