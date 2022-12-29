package com.zoo.controller;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooCartDAO;
import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooCart;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;

import com.zoo.entity.ZooProductList;

public class ZooGoCartCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ZooCartDAO dao = new ZooCartDAO();
		ZooCart cart = new ZooCart();
		int cnt = 0;
		
		// 1. 지금 클릭한 상품 DB에 저장하기
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 상품 아이디 받아오기
		String prod_id = request.getParameter("prod_id");
		System.out.println("상품아이디 : " + prod_id);
		
		HttpSession session = request.getSession();
		ZooMember user = (ZooMember)session.getAttribute("user");
		String cust_id = user.getCust_id();
		
		if(prod_id != null) {
			cart.setCust_id(cust_id);
			cart.setProd_id(prod_id);
			cnt = dao.cartInsert(cart);
		}
		
		if (cnt > 0) {
			System.out.println("장바구니 추가 성공");
		}
		
		
		// 2. cust_id로 장바구니 DB에 있는 상품 가져오기
		// 사용자 아이디 세팅
		cart.setCust_id(cust_id);
		List<ZooProductList> list = dao.cartPdList(cart);
		
		if (list != null) {
			session.setAttribute("list", list);
		}
		
		return "cartform";
	}

}
