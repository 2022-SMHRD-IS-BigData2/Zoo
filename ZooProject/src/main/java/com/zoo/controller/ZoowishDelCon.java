package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooWishListDAO;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;
import com.zoo.entity.ZooWishList;

public class ZoowishDelCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String prod_id = request.getParameter("prod_id");
		System.out.println(prod_id);
		//List<ZooProductList> wishlist= (List<ZooProductList>)session.getAttribute("wishlist");
		ZooMember name = (ZooMember)session.getAttribute("user");
		ZooWishList dto = new ZooWishList();
		dto.setCust_id(name.getCust_id());
		dto.setProd_id(prod_id);
		ZooWishListDAO dao = new ZooWishListDAO();
		int cnt = dao.delwish(dto);
		if(cnt>0) {
			System.out.println("삭제성공");
			
		}else {
			System.out.println("삭제실패");
		}
		return "mainpage";
	}

}
