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

public class ZooCreatewishCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = null;
		HttpSession session = request.getSession();
		ZooProductList wish = (ZooProductList)session.getAttribute("detail");
		ZooMember name = (ZooMember)session.getAttribute("user");
		
		System.out.println(name.getCust_id());
		System.out.println("상품 아이디: "+wish.getProd_id());
		System.out.println("상품 명:"+wish.getProd_name());
		
		ZooWishList dto = new ZooWishList();
		dto.setCust_id(name.getCust_id());
		dto.setProd_id(wish.getProd_id());
		ZooWishListDAO dao = new ZooWishListDAO();
		
		
		int cnt = dao.wishlist(dto);
		
		if(cnt>0) {
			System.out.println("생성 성공");
			nextPage = "redirect:/gomainpage.do";
		}else {
			System.out.println("실패");
		}
		
		
		return nextPage;
	}

}
