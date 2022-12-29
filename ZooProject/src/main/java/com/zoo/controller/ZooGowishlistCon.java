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

public class ZooGowishlistCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
	      
	      ZooMember name = (ZooMember)session.getAttribute("user");

	      System.out.println(name.getCust_id());
	      
	      ZooMember dto = new ZooMember();
	      dto.setCust_id(name.getCust_id());
	      
	      ZooWishListDAO dao = new ZooWishListDAO();
	      
	      List<ZooProductList>result = dao.wish(dto);
	      
	      System.out.println(result.size());
	      
	      for(int i =0; i<result.size();i++) {
	      System.out.println(result.get(i).getProd_name());
	      }
	      session.setAttribute("wishlist", result);
	      
	      
	      
	      return "wishListform";
		
	}

}
