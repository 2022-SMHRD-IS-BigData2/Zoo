package com.zoo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;

public class ZooGoCartCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 세션값 배열에 담아서 새로운 세션에 담아 돌려주기
		
		HttpSession session = request.getSession();
		ArrayList<String>cart = (ArrayList<String>) session.getAttribute("detail");
		session.setAttribute("cartinfo", cart);
		
		return "cartform";
	}

}
