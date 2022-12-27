package com.zoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ZooGoProductListCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		System.out.println("ZooProductListCon execute() 호출");
		
		request.setCharacterEncoding("UTF-8");
		
		String prod_category = request.getParameter("");
		System.out.println(prod_category+" 카테고리로 이동");
		
		
		
		return "foodform";
	}

}
