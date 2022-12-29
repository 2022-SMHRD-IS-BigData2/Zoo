package com.zoo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;

import com.zoo.entity.ZooProductList;

public class ZooGoCartCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 인코딩
		request.setCharacterEncoding("UTF-8");

		// 타입 받아오기
		String prod_id = request.getParameter("prod_id");
		System.out.println("상품아이디 : " + prod_id);

		// 쿠키...
		Cookie cookie = new Cookie("prod_id", prod_id);
		cookie.setMaxAge(60 * 60 * 24 * 30);
		response.addCookie(cookie);
		
		return "cartform";
	}

}
